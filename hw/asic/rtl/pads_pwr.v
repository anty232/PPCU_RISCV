// Library - PPCU_VLSI_RISCV, Cell - pads_pwr, View - schematic
// LAST TIME SAVED: Apr  6 13:36:45 2020
// NETLIST TIME: Apr  6 16:46:17 2020
`timescale 1ns / 1ns

// TODO: provide proper number of power pads
// Note: the module must be set to "dont_touch" in the constraints

`ifdef KMIE_IMPLEMENT_ASIC

module pads_pwr ( );

//-- pad instances are note connected

//------------------------------------------------------------------------------
// TODO: add the correct number of the power pads
//------------------------------------------------------------------------------

// core vdd
PVDD1DGZ VDD1_1_ ( .VDD() );
PVDD1DGZ VDD1_0_ ( .VDD() );
    
// io vdd    
PVDD2DGZ VDD2_0_ ( .VDDPST() );
PVDD2DGZ VDD2_1_ ( .VDDPST() );
PVDD2DGZ VDD2_2_ ( .VDDPST() );
PVDD2DGZ VDD2_3_ ( .VDDPST() );
PVDD2DGZ VDD2_4_ ( .VDDPST() );
PVDD2DGZ VDD2_5_ ( .VDDPST() );
PVDD2DGZ VDD2_6_ ( .VDDPST() );
PVDD2DGZ VDD2_7_ ( .VDDPST() );
PVDD2DGZ VDD2_8_ ( .VDDPST() );
PVDD2DGZ VDD2_9_ ( .VDDPST() );
PVDD2DGZ VDD2_10_ ( .VDDPST() );
    
// io power on control (only one)
PVDD2POC VDD2POC ( .VDDPST() );
    
// common ground    
PVSS3DGZ VSS3_0_ ( .VSS() );
PVSS3DGZ VSS3_1_ ( .VSS() );
PVSS3DGZ VSS3_2_ ( .VSS() );
PVSS3DGZ VSS3_3_ ( .VSS() );
PVSS3DGZ VSS3_4_ ( .VSS() );
PVSS3DGZ VSS3_5_ ( .VSS() );
PVSS3DGZ VSS3_6_ ( .VSS() );
PVSS3DGZ VSS3_7_ ( .VSS() );
PVSS3DGZ VSS3_8_ ( .VSS() );
PVSS3DGZ VSS3_9_ ( .VSS() );
PVSS3DGZ VSS3_10_ ( .VSS() );
PVSS3DGZ VSS3_11_ ( .VSS() );
PVSS3DGZ VSS3_12_ ( .VSS() );
PVSS3DGZ VSS3_13_ ( .VSS() );

endmodule

`endif