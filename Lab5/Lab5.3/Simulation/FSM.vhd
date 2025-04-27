------------------------------------
-- Group 8 - Laboratory 5
-- Exercise 3 - Two-process FSM
-- VHDL code of FSM (main entity)
------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity sequenceDetector is
    port (
        W, CLK, RESN : in  STD_LOGIC;  -- D input, clock and reset signals
        Z            : out STD_LOGIC   -- Q output of FF
    );
end sequenceDetector;

architecture Behavior of sequenceDetector is

    type State_type is (A, B, C, D, E, F, G, H, I);
    signal Y_Q, Y_D : State_type; -- y_Q is present state, y_D is next state 

begin

    CC1 : process (W, Y_Q) -- state table 
    begin
        case Y_Q is
            when A => 
                if (W = '0') then
                    Y_D <= B;
                else
                    Y_D <= F;
                end if;

            when B => 
                if (W = '1') then
                    Y_D <= F;
                else
                    Y_D <= C;
                end if;

            when C => 
                if (W = '1') then
                    Y_D <= F;
                else
                    Y_D <= D;
                end if;

            when D => 
                if (W = '1') then
                    Y_D <= F;
                else
                    Y_D <= E;
                end if;

            when E => 
                if (W = '1') then
                    Y_D <= F;
                else
                    Y_D <= E;
                end if;

            when F => 
                if (W = '1') then
                    Y_D <= G;
                else
                    Y_D <= B;
                end if;

            when G => 
                if (W = '1') then
                    Y_D <= H;
                else
                    Y_D <= B;
                end if;

            when H => 
                if (W = '1') then
                    Y_D <= I;
                else
                    Y_D <= B;
                end if;

            when I => 
                if (W = '1') then
                    Y_D <= I;
                else
                    Y_D <= B;
                end if;

            when others =>
                Y_D <= A;

        end case;
    end process CC1; -- state table 

    MEM : process (CLK, RESN) -- state flip-flops 
    begin
        if (RESN = '0') then
            Y_Q <= A;
        else
            if (rising_edge(CLK)) then
                Y_Q <= Y_D;
            end if;
        end if;
    end process MEM;

    CC2 : process (Y_Q)
    begin
        case Y_Q is
            when A =>
                Z <= '0';
            when B =>
                Z <= '0';
            when C =>
                Z <= '0';
            when D =>
                Z <= '0';
            when E =>
                Z <= '1';
            when F =>
                Z <= '0';
            when G =>
                Z <= '0';
            when H =>
                Z <= '0';
            when I =>
                Z <= '1';
        end case;
    end process CC2;

end Behavior;
