---------------------------------
--		Group n. 08 - Laboratory n. 06
--		Title: A simple digital filter
--		VHDL model of "conv_signed13to8bit_tb"
---------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY conv_signed13to8bit_tb IS
END conv_signed13to8bit_tb;

ARCHITECTURE testbench OF conv_signed13to8bit_tb IS

	COMPONENT conv_signed13to8bit IS
		PORT (
			Y13s : IN STD_LOGIC_VECTOR(12 DOWNTO 0); -- 13 bit signed input
			Y8s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- 8 bit signed output
			clk : IN STD_LOGIC;
			clk_enable : IN STD_LOGIC
		);
	END COMPONENT;

	-- Segnali di test
	SIGNAL clk : STD_LOGIC := '0';
	SIGNAL clk_enable : STD_LOGIC := '0';
	SIGNAL Y13s_tb : STD_LOGIC_VECTOR(12 DOWNTO 0);
	SIGNAL Y8s_tb : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
	-- Collegamento tra componente e segnali
	uut : conv_signed13to8bit
	PORT MAP(
		Y13s => Y13s_tb, 
		Y8s => Y8s_tb, 
		clk => clk, 
		clk_enable => clk_enable
	);

	-- Processo di test
	PROCESS
	BEGIN
		-- Inizializzazione
		clk_enable <= '0';
		Y13s_tb <= (OTHERS => '0');
		clk <= '0';
		WAIT FOR 1 ns;
		clk <= '1';
		WAIT FOR 1 ns;
		clk <= '0';
		WAIT FOR 1 ns;
		clk <= '1';
		WAIT FOR 1 ns;
		clk <= '0';
		WAIT FOR 1 ns;
		clk <= '1';
		WAIT FOR 1 ns;

		-- Abilita il clock dopo i primi 3 fronti
		clk_enable <= '1';

		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0000000100100";-- +36,00
		clk <= '1';
		WAIT FOR 1 ns;

		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0000000100101";-- +36,25
		clk <= '1';
		WAIT FOR 1 ns;

		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0000000100110"; -- +36,50
		clk <= '1';
		WAIT FOR 1 ns;

		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0000000100111"; -- +36,75
		clk <= '1';
		WAIT FOR 1 ns;
 
		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0000010100110"; --
		clk <= '1';
		WAIT FOR 1 ns;
 
		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0111111111111"; --
		clk <= '1';
		WAIT FOR 1 ns;
 
		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0000000101101"; --
		clk <= '1';
		WAIT FOR 1 ns;
 
		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0000000110111"; --
		clk <= '1';
		WAIT FOR 1 ns;
 
		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0000001100101"; --
		clk <= '1';
		WAIT FOR 1 ns;

		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0010100100000"; -- +656,00
		clk <= '1';
		WAIT FOR 1 ns;

		clk <= '0';
		WAIT FOR 1 ns; -- +429
		Y13s_tb <= "0000011011101"; -- +428,25
		clk <= '1';
		WAIT FOR 1 ns;
 
		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0000111111100"; -- +127,00
		clk <= '1';
		WAIT FOR 1 ns;
 
		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0000111111100"; -- +127,00
		clk <= '1';
		WAIT FOR 1 ns;

		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0001000000000"; -- +128,00
		clk <= '1';
		WAIT FOR 1 ns;
 
		clk <= '0';
		WAIT FOR 1 ns;
		Y13s_tb <= "0001000000100"; -- +129,00
		clk <= '1';
		WAIT FOR 1 ns;
 
 
 
		WAIT; -- Ferma la simulazione

	END PROCESS;

END testbench;