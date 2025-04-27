------------------------------------
-- Group 8 - Laboratory 3
-- Exercise 1 - 4-bit ripple carry adder
-- VHDL code of overflow detector
------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ovfdetector is
	port (
		A, B, S: in STD_LOGIC;
		OVF: out STD_LOGIC);
end ovfdetector;

architecture Behavior of ovfdetector is
begin
	OVF <= (A xnor B) and (A xor S);
end Behavior;
