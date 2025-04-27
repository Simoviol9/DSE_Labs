------------------------------------
-- Group 8 - Laboratory 3
-- Exercise 1 - 4-bit ripple carry adder
-- VHDL code of decoder
------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity hexDecoder is
	port (
		IN1       : in  SIGNED(3 downto 0);		-- 2's complement input
		OUT1 : out STD_LOGIC_VECTOR(0 to 6);	-- Digit output (magnitude)
		OUT2: out STD_LOGIC_VECTOR(0 to 6)		-- Sign digit
	);
end hexDecoder;

architecture Behavior of hexDecoder is

begin
	-- Digit output (magnitude)
	OUT1 <= 	"0000001" WHEN IN1 = "0000" ELSE					-- 0
	         "1001111" WHEN IN1 = ("0001" or "1111") ELSE	-- 1
	         "0010010" WHEN IN1 = ("0010" or "1110") ELSE	-- 2
	         "0000110" WHEN IN1 = ("0011" or "1101") ELSE	-- 3
	         "1001100" WHEN IN1 = ("0100" or "1100") ELSE	-- 4
	         "0100100" WHEN IN1 = ("0101" or "1011") ELSE	-- 5
	         "0100000" WHEN IN1 = ("0110" or "1010") ELSE	-- 6
	         "0001111" WHEN IN1 = ("0111" or "1001") ELSE	-- 7
	         "0000000" WHEN IN1 = "1000" else					-- 8
				"1111111";												-- Blank
				
	-- Sign digit
	OUT2 <=  "1111110" when IN1(3) = '1' else
				"1111111";						

end Behavior;