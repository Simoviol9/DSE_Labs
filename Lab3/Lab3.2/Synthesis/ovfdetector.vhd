------------------------------------
-- Group 8 - Laboratory 3
-- Exercise 2 - 4-bit ripple carry adder/subtractor
-- VHDL code of overflow detector
------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ovfdetector is
	port (
		A, B, S, MODE, COUT: in STD_LOGIC;
		OVF: out STD_LOGIC);
end ovfdetector;

architecture Behavior of ovfdetector is
begin
	OVF <= (A AND B AND NOT S) OR (NOT A AND NOT B AND S) when MODE = '0' else
		(A AND NOT B AND NOT S) OR (NOT A AND B AND S);
end Behavior;
