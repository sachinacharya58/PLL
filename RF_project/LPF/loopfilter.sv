
`timescale 1ns/1ps

module loopfilter(vout,vin);
  input real vin;
  output real vout;
  
  real R = 1E6; real C = 10E-12;

  real a = 1/(1+(R*C));
  real b = R*C/(1+(R*C));

  always@(vin) begin
    vout = a*vin+b*vout;
  end
  
endmodule
