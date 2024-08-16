#------------------------------------------------------------------------------
# (#03) CREATE FLOORPLAN
#------------------------------------------------------------------------------
# This is usefull if you run the script many times
delete_all_floorplan_objs


# TODO: initialize floorplan to the required size
# Menu: Floorplan -> Specify Floorplan...
# Function: create_floorplan

create_floorplan -core_size {730 730 100 100 100 100} -core_margins_by die


# TODO: Generate template for IO placement:
# Menu: File -> Save -> IO File... , check the boxes: sequence, Generate template IO File"
#
# TODO: copy the generated IO template to the file: mtm_riscv_chip.io
# TODO: Edit the file.
#       Add 'offset = 190' option to each first pad in the io row (after place_status=).
#       Add 'space = N' option to each second pad in the io row. N is the
#       distance to the previous pad in the row.


# TODO: Read created IO configuration. You can do this many times
# Menu: File -> Load -> I/O File...
# Function: read_io_file

read_io_file mtm_riscv_chip.io


# TODO: Add 12um placement halo around blocks to reserve the place for the power ring
# Menu: Floorplan -> Edit Flooplan -> Edit Halo...
# Function: create_place_halo

create_place_halo -halo_deltas 12 12 12 12 -cell TS1N40LPB4096X32M4M


# TODO: Set the desired location of the instruction RAM
set myram0 [get_cells u_soc/u_data_ram/u_ram/u_TS1N40LPB4096X32M4M]
set_db $myram0 .location {490 310}

# TODO: Set the desired location of the data RAM
set myram1 [get_cells u_soc/u_code_ram_u_ram/u_TS1N40LPB4096X32M4M]
set_db $myram1 .location {305 310}


# TODO: Cut core rows to placement halo
# Menu: makes problems. Run this command:
split_row 


# Core rings
# TODO: Create core rings for VDD and VSS. Use maximum width possible. Use several wires.
#       Use M6,M7,M8. M8 will cover M6
# Menu: Power -> Power Planning -> Add Ring …
# Functions: set_db, add_rings

#set_db add_rings_orthogonal_only true
#set_db add_rings_target pad_ring
#set_db add_rings_target stripe
set_db add_rings_extend_over_row true

add_rings -center 1 -type core_rings -nets {VDD VDD VDD VDD VSS VSS VSS VSS} -layer {top M7 bottom M7 left M6 right M6} -spacing 2 -width 4.5 -use_wire_group 1

add_rings -center 1 -type core_rings -nets {VDD VDD VDD VDD VSS VSS VSS VSS} -layer {top M7 bottom M7 left M8 right M8} -spacing 2 -width 4.5 -use_wire_group 1

#add_rings -follow core -layer {top M7 bottom M7 left M6 right M6} -nets {VDD VSS VDD VSS VDD VSS VDD VSS} -center 1 -rectangle 1 -snap_wire_center_to_grid none \
-spacing {top 1 bottom 1 left 1 right 1} -use_wire_group 1 -use_interleaving_wire_group 0  -width 4.5 

# RAM rings
# TODO: Create rings of 4.5um width around the RAM blocks. Extend the vertical
# connections upwards and downwords to the core ring. Use M6 and M7
# Menu: Power -> Power Planning -> Add Ring …
# Functions: set_db, add_rings

add_rings -center 1 -around each_block -type block_rings  -nets {VSS VDD} -layer {top M7 bottom M7 left M6 right M6} -spacing 1 -width 4.5 -use_wire_group 1 \
-extend_corners {lt lb rb rt}


# Add vertical stripes
# TODO: add vertical strips of width 3, with spacing 5 for VDD and VSS nets.
# Use M6.
# Keep the stripe pitch below 100 um.
# Note that the standard cells will also be connected to the core ring.
# Do not route the stripes over the blocks.
# Menu: Power -> Power planning -> Add stripe...
# Function: set_db, add_stripes

set_db add_stripes_break_at block_ring

add_stripes  -direction vertical -nets {VDD VSS} -width 3 -spacing 5 -layer M6 -start_offset 50 -set_to_set_distance 72


# Add stripes horizontal
# TODO: add horizontal strips of width 3, with spacing 5 for VDD and VSS nets.
# Use M7.
# Keep the stripe pitch below 100 um.
# Do not route the stripes over the blocks.
# Function: set_db, add_stripes

add_stripes  -direction horizontal -nets {VDD VSS} -width 3 -spacing 5 -layer M7 -start_offset 10 -set_to_set_distance 72

# TODO: Connect pads to ring
# Menu: Route -> Special route...
# Basic -> SRoute = Pad Pins
# Basic -> Allow Layer Change = Off
# Advanced -> Pad Pins -> Number of connections to Multiple Geometries = All
# Function: route_special

set_db route_special_via_connect_to_shape noshape
set_db route_special_core_pin_ignore_obs block_halo

route_special  -connect {pad_pin} -allow_layer_change 0 -pad_pin_port_connect {all_port all_geom} -pad_ring_layer M3


# TODO: Connect RAM block powers
# Menu: Route -> Special route...
# Basic -> SRoute = Block Pins
# Basic -> Allow Layer Change = Off
# Advanced -> Block Pins -> Pin selection = All Pins
# Function: route_special

route_special  -connect {block_pin} -allow_layer_change 0 -block_pin all -pad_ring_layer M3

# TODO: Connect standard cell power
# Menu: Route -> Special route...
# Basic -> SRoute = Follow Pins
# Basic -> Allow Layer Change = Off
# Via Generation -> Make Via Connection to: = Core Ring, Stripe
# Functions: set_db, route_special

#set_db route_special_via_connect_to_shape {stripe ring}


route_special -connect {core_pin} -core_pin_target {first_after_row_end} -allow_layer_change 0 -nets {VDD VSS}

# save database
write_db $saveDir/${DESIGN}_03_floorplan.db
