------------------------------------
-- Group 8 - Laboratory 6
-- Simple digital filter
-- VHDL code of multipliers' testbench
------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult2_tb is
end mult2_tb;

architecture structure of mult2_tb is

	component multiplier_2 is
		port (
		IN1          : in  signed(7 downto 0);           -- Shift register input
		Q1           : out STD_LOGIC_VECTOR(12 downto 0) -- Register output
	);
	end component;
	signal IN1: signed (7 downto 0);
	signal Q1: STD_LOGIC_VECTOR (12 downto 0);
	signal IntegerPart: INTEGER;
	signal decimalPart: STD_LOGIC_VECTOR(1 downto 0);
	
begin
	process
	begin
	IN1 <= "00011000";
	wait for 20 ns;
	IN1 <= "01111111";
	wait for 20 ns;
	IN1 <= "11111111";
	wait for 20 ns;
	IN1 <= "10000000";
	wait for 20 ns;
	IN1 <= "00000100";
	wait;
	end process;

	IntegerPart <= to_integer(signed(Q1(12 downto 2)));
	decimalPart <= Q1(1 downto 0);

	DUT : multiplier_2
	port map(
		IN1 => IN1,
		Q1 => Q1);
end structure;


