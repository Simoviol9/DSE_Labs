------------------------------------
-- Group 8 - Laboratory 5
-- Exercise 2 - One-hot FSM
-- VHDL code of testbench
------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity sequenceDetector_tb is
end sequenceDetector_tb;

architecture structure of sequenceDetector_tb is

	component sequenceDetector is
		port (
			W, CLK, RESN : in  STD_LOGIC;  -- D input, clock and reset signals
			Z            : out STD_LOGIC); -- Q output of FF
	end component;

	signal W, CLK, RESN, Z : STD_LOGIC;
begin

	process
	begin
		RESN <= '0';
		CLK <= '0';
		wait for 5 ns;
		RESN <= '1';
		W    <= '0';

		CLK  <= '0';
		wait for 15 ns;
		CLK <= '1';
		wait for 20 ns;
		CLK <= '0';
		wait for 20 ns;
		CLK <= '1';
		wait for 20 ns;
		CLK <= '0';
		wait for 20 ns;
		CLK <= '1';
		wait for 20 ns;
		CLK <= '0';
		wait for 20 ns;
		CLK <= '1';
		wait for 20 ns;
		CLK <= '0';
		wait for 20 ns;
		CLK <= '1';
		wait;
	end process;

	UUT: sequenceDetector
	port map(
		W => W,
		CLK => CLK,
		RESN => RESN,
		Z => Z
	);
end structure;
