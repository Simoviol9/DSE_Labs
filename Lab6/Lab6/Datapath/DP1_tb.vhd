library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DP1_tb is
end DP1_tb;

architecture structural of DP1_tb is

	component DP1 is
	port (
		IN1      : in  STD_LOGIC_VECTOR(7 downto 0);
		CLK, RES : in  STD_LOGIC;
		OUT1     : out STD_LOGIC_VECTOR(12 downto 0)
	);
end component;

	

	signal IN1                                         : STD_LOGIC_VECTOR(7 downto 0);

	signal CLK, RES                     : STD_LOGIC := '0';
	signal OUT_INT     : STD_LOGIC_VECTOR(10 downto 0);
	signal OUT_DEC: std_logic_vector(1 downto 0);

begin

	clock_gen: process
	begin
	CLK <= '0';
	wait for 10 ns;
	CLK <= '1'; 
	wait for 10 ns;
	end process;

	testbench: process
	begin
	wait for 5 ns;
	RES <= '1';
	IN1 <= "00001010";
	wait for 100 ns;
	IN1 <= "01100100";
	wait;
	end process;

	UUT : DP1
	port map(
		IN1  => IN1,
		CLK => CLK,
		RES => RES,
		OUT1(12 downto 2) => OUT_INT,
OUT1(1 downto 0) => OUT_DEC
	);

end structural;
