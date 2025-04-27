---------------------------------
--		Group n. 08 - Laboratory n. 06
--		Title: A simple digital filter
--		VHDL model of "IntervalDetector"
---------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity IntervalDetector is
    Port (
        data_in : in  STD_LOGIC_VECTOR(10 downto 0);
        Z       : out STD_LOGIC_VECTOR(1 downto 0)
    );
end IntervalDetector;

architecture Behavioral of IntervalDetector is
begin
    process(data_in)
    begin
        if signed(data_in) < -128 then
            Z <= "01";
        elsif signed(data_in) > 127 then
            Z <= "10";
        else
            Z <= "00";
        end if;
    end process;
end Behavioral;
