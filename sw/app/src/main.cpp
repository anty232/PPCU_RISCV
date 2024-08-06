#include <libdrivers/gpio.hpp>
#include <libdrivers/uart.hpp>
#include <libmisc/delay.hpp>

static constexpr uint32_t led_mask{0xf};

int main()
{
    uart.write("INFO: application started\n");
    udelay(100);

        //KRZYSZTOF
    //LIGEZA
    //SOS
    //użyć set_odr(); 
    gpio.set_odr(0b1111);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b1111);
    udelay(1);
    gpio.set_odr(0b1001);
    udelay(1);
    gpio.set_odr(0b1111);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b1101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b1111);
    udelay(1);
    gpio.set_odr(0b0011);
    udelay(1);
    gpio.set_odr(0b0011);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b1111);
    udelay(1);
    gpio.set_odr(0b0011);
    udelay(1);
    gpio.set_odr(0b1111);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0111);
    udelay(1);
    gpio.set_odr(0b0011);//
    udelay(1);
    gpio.set_odr(0b1111);
    udelay(1);
    gpio.set_odr(0b1001); //
    udelay(1);  
    gpio.set_odr(0b1001);
    udelay(1);   
    gpio.set_odr(0b0001);
    udelay(1);  
    gpio.set_odr(0b1111);
    udelay(1);  
    gpio.set_odr(0b1101);
    udelay(1);            
    gpio.set_odr(0b1111);
    udelay(1);  
    gpio.set_odr(0b0001);
    udelay(1);  
    gpio.set_odr(0b1111);
    udelay(1);  
    gpio.set_odr(0b0101);
    udelay(1);  
    gpio.set_odr(0b0101);
    udelay(1);  
    gpio.set_odr(0b0001); //
    udelay(1);  
    gpio.set_odr(0b1101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b1001);
    udelay(1);
    gpio.set_odr(0b1001);
    udelay(1);
    gpio.set_odr(0b1101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b1101);
    udelay(1);
    gpio.set_odr(0b1001);
    udelay(1);
    gpio.set_odr(0b1101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b1101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b1101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b1101);//
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b1001);
    udelay(1);
    gpio.set_odr(0b1001);
    udelay(1);
    gpio.set_odr(0b1101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);//
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0001); //
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);//
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0101);
    udelay(1);
    gpio.set_odr(0b0001);
    udelay(1);
    gpio.set_odr(0b0000);
    udelay(1);
    
    

    //gpio.set_odr(5);
    //udelay(1);
    //gpio.set_odr(0b0000);
    //(1);
    //.set_odr(0b1111);
    //(1);

    udelay(1000);
}
