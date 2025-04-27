---------------------------------
--		Group n. 08 - Laboratory n. 06
--		Title: A simple digital filter
--		VHDL model of "MUX2x1_10bit"
---------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2x1_11bit is
    Port (
        sel : in  STD_LOGIC;
        in0, in1 : in  STD_LOGIC_VECTOR(10 downto 0);
        out_mux  : out STD_LOGIC_VECTOR(10 downto 0)
    );
end MUX2x1_11bit;

architecture Behavioral of MUX2x1_11bit is
begin
    out_mux <= in1 when sel = '1' else in0;
end Behavioral;
