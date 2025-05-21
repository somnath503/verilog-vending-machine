`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2025 08:53:26 PM
// Design Name: 
// Module Name: vending_machine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vending_machine(
    input clk,
    input rst,
    input [1:0] in, //for rs: 0 ,5 , 10  multiple of 5 
    output reg out,
    output reg[1:0] change
    );
// for defining state there acually 3 state , for represeting 3 state required 2 bit
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;

reg[1:0] c_state,n_state;  // for current and next state  there acually 3 state so we need 2bit for representation

always @(posedge clk)
    begin
        if(rst == 1)
            begin
                c_state = 0;
                n_state =0;
                change = 2'b00;
             end
         else
            c_state = n_state;
         case(c_state)
            s0 : // for state 0 rs : 0 
            if(in == 0)
                begin   
                   n_state=s0;
                   out=0;
                   change=2'b00;
                end
             else if(in == 2'b01)
                begin
                    n_state = s1;
                    out=0;
                    change=2'b00;
                end
             else if (in == 2'b10)
                begin 
                    n_state=s2;
                    out=0;
                    change=2'b00;
                 end
              s1: // rs 5
              if(in==0)
                begin 
                    n_state=s0;
                    out=0;
                    change=2'b01; // changed return 5 rs
                end
              else if(in == 2'b01)
                begin
                    n_state=s2;
                    out=0;
                    change=2'b00;
                end
                
              else if(in == 2'b10)
                begin
                    n_state = s0;
                    out = 1;
                    change = 2'b00;
                end
              s2: // for 10 rss
              if(in == 0)
                begin
                    n_state = 0;
                    out = 0;
                    change = 2'b10;
                end
               else if (in == 2'b01)
                begin
                    n_state= s0;
                    out = 1;
                    change = 2'b00;
                end
                
               else if (in == 2'b10)
                begin
                    n_state = s0;
                    out = 1;
                    change = 2'b01;
                 end
             endcase
         end
         
 endmodule
               
 
