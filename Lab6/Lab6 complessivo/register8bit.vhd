---------------------------------
--		Group n. 08 - Laboratory n. 06
--		Title: A simple digital filter
--		VHDL model of "register8bit"
---------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register8bit is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        d     : in  STD_LOGIC_VECTOR(7 downto 0);
        q     : out STD_LOGIC_VECTOR(7 downto 0)
    );
end register8bit;

architecture Behavioral of Register8bit is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            q <= (others => '0');
        elsif rising_edge(clk) then
            q <= d;
        end if;
    end process;
end Behavioral;
