`timescale 1ns/1ps

module lpf_tb();
  
  real vin;
  real vout;
  real tennano = 10E-9;
  
  loopfilter I1(.vin(vin),.vout(vout));
  
  initial begin
    vin = 0;
    #1 vin = 0.1;
    #1 vin = 0.2;
    #1 vin = 0.3;
    #1 vin = 0.4;
    #1 vin = 0.5;
    #1 vin = 0.6;
    #1 vin = 0.7;
    #1 vin = 0.8;
    #1 vin = 0.9;
    #1 vin = 1;
    #200;
  end
  
  initial begin
  $shm_open("waves.shm"); $shm_probe("AS");
end
  initial begin
	#300;
  end
endmodule
