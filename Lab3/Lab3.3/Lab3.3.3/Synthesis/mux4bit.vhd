
------------------------------------
-- Group 8 - Laboratory 3
-- Exercise 3 - 4-bit ripple carry adder
-- VHDL code of multiplexer
------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity mux4bit is
	port (
		IN0, IN1: in STD_LOGIC_VECTOR(3 downto 0);
		SEL : in  STD_LOGIC;
		OUT1          : out STD_LOGIC_VECTOR(3 downto 0));
end mux4bit;

architecture stuctural of mux4bit is
begin
	OUT1(0) <= (IN0(0) and not(SEL)) or (IN1(0) and SEL);
	OUT1(1) <= (IN0(1) and not(SEL)) or (IN1(1) and SEL);
	OUT1(2) <= (IN0(2) and not(SEL)) or (IN1(2) and SEL);
	OUT1(3) <= (IN0(3) and not(SEL)) or (IN1(3) and SEL);

end stuctural;