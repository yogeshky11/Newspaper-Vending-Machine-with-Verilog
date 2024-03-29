//Design the newspaper vending machine coin acceptor

//using a FSM approach

module vend(coin, clock, reset, newspaper):

//Input output port declarations

input [1=0] coin:

input clock; input reset;

output newspaper;

wire newspaper:

//internal FSM state declarations wire [1:0] NEXT_STATE; reg [1=0] PRES_STATE;

//state encodings parameter s0=2^{\prime}b00~i parameter s5=2^{*}b01 parameter a10=2\cdot b10 parameter s15=2^{\prime}b11

//Combinational logic function [2:0] fsm; input [1:0] fsm_coin; input [1:0] fsm_PRES_STATE;

reg fsm newspaper; reg [I:0] fsm_NEXT_STATE;

begin

case (fsm PRES_STATE)

s0://state =_{s0}

begin

if (fam_coin == 2'b10)

begin

fsm_newspaper= 1'b0; fsm NEXT_STATE $10:

end

else if (fsm_coin == 2'b01)

begin

fsm newspaper =1^{*}b0; fam NEXT STATE = 85;

end

else

begin

fam newspaper= 1'b0;

fom NEXT STATE 80:

end

end

a5: //state = $5

begin

if (fsm_coin == 2'b10)

begin

fam newspaper= 1'b0:

fam NEXT STATE 815:

end

else if (fam_coin = 2*601)

begin

fam newspaper= 1'b0;

fan NEXT STATE #10;

end

else

begin

fam newspaper= 1'b0;

fam NEXT STATE #5:

end

#10:

//state s10

begin

if (fam_coin 2'b10)

begin

fam newspaper= 1'b0/

fan NEXT STATE #157

end

else if (fom_coin - 2b01)

begin

fan newspaper fan NEXT STATE 1'b0/ #15:

end

else

begin

fam newspaper fam NEXT STATE 1'b0; #10;

end

end

s15: //state = s15

begin

fsm_newspaper = 1'b1;

fsm_NEXT_STATE = 50;

end

endcase

fsm = (fsm_newspaper, fsm_NEXT_STATE);

end

endfunction

//Reevaluate combinational logic each time a coin

//is put or the present state changes

assign (newspaper, NEXT_STATE) = fsm(coin, PRES_STATE);

//clock the state flip-flops.

//use synchronous reset always (posedge clock)

begin

if (reset == 1'b1)

else

PRES STATE = s0;

PRES STATE = NEXT_STATE;

end

endmodule

end

s15: //state = s15

begin

fsm_newspaper = 1'b1;

fsm_NEXT_STATE = 50;

end

endcase

fsm = (fsm_newspaper, fsm_NEXT_STATE);

end

endfunction

//Reevaluate combinational logic each time a coin

//is put or the present state changes

assign (newspaper, NEXT_STATE) = fsm(coin, PRES_STATE);

//clock the state flip-flops.

//use synchronous reset always (posedge clock)

begin

if (reset == 1'b1)

else

PRES STATE = s0;

PRES STATE = NEXT_STATE;

end

endmodule
