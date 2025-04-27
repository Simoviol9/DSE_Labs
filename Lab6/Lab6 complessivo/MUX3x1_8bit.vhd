---------------------------------
--		Group n. 08 - Laboratory n. 06
--		Title: A simple digital filter
--		VHDL model of "MUX3x1_8bit"
---------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX3x1_8bit is
    Port (
        sel : in  STD_LOGIC_VECTOR(1 downto 0);
        in0, in1, in2 : in  STD_LOGIC_VECTOR(7 downto 0);
        out_mux      : out STD_LOGIC_VECTOR(7 downto 0)
    );
end MUX3x1_8bit;

architecture Behavioral of MUX3x1_8bit is
begin
    with sel select
        out_mux <= in0 when "10",
                   in1 when "01",
                   in2 when others;
end Behavioral;
