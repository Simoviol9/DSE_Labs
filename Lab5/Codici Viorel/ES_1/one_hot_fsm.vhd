------------------------------------
-- Group 8 - Laboratory 5
-- Exercise 1 – One-Hot Finite state machine 
-- VHDL code of timer
------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity one_hot_fsm is
    Port (
        LEDR : out std_logic_VECTOR (9 downto 0);  -- Outputs: LED (LEDR(0) driven by the FSM is Active high)
        SW   : in  std_logic_vector(9 downto 0);    -- SW(0): External Reset (active high, later inverted), SW(1): Control signal (W)
        KEY  : in  std_logic_vector(3 downto 0)      -- KEY(0): Used as the clock signal (inverted)
    );
end one_hot_fsm;

architecture Behavioral of one_hot_fsm is

    -- Internal control signals
    signal rst       : std_logic;  -- Internal reset (active HIGH after inversion)
    signal W         : std_logic;  -- Control signal for state transitions (from SW(0))
    signal KEY0_HIGH : std_logic;  -- Clock signal for the FSM (inverted from KEY(0))
    
    -- Current state (one-hot encoding): x0 = A, x1 = B, ... , x8 = I
    signal x0, x1, x2, x3, x4, x5, x6, x7, x8 : std_logic;
    
    -- Next state (one-hot encoding)
    signal y0, y1, y2, y3, y4, y5, y6, y7, y8 : std_logic;

begin
    -- Generate control signals
    rst       <= not SW(0);      -- Internal reset is active when SW(1) is low
    W         <= SW(1);          -- Control signal W directly from SW(0)
    KEY0_HIGH <=  KEY(0);       -- Generate the clock signal (rising edge)
	 LEDR(9 downto 1) <= (others => '0');
    --------------------------------------------------------------------
    -- Flip-Flop Process: Update the current state (x0 ... x8)
    --------------------------------------------------------------------
    process( KEY0_HIGH) --synchronous reset rst not inclueded in the sensitivity list
    begin
		if (rising_edge (KEY0_HIGH)) then
         if (rst = '1') then
            -- On reset, initialize to state A (x0 = '1') and all others to '0'
            x0 <= '1';
            x1 <= '0';
            x2 <= '0';
            x3 <= '0';
            x4 <= '0';
            x5 <= '0';
            x6 <= '0';
            x7 <= '0';
            x8 <= '0';
        else 
            -- Update the current state with the calculated next state
            x0 <= y0;
            x1 <= y1;
            x2 <= y2;
            x3 <= y3;
            x4 <= y4;
            x5 <= y5;
            x6 <= y6;
            x7 <= y7;
            x8 <= y8;
        end if;
		end if;
    end process;

    --------------------------------------------------------------------
    -- Combinational Process for the Next-State Logic CC1
    --------------------------------------------------------------------
    process(x0, x1, x2, x3, x4, x5, x6, x7, x8, W)
    begin
        -- Initialize all next state signals to '0'
        y0 <= '0'; y1 <= '0'; y2 <= '0'; y3 <= '0'; y4 <= '0';
        y5 <= '0'; y6 <= '0'; y7 <= '0'; y8 <= '0'; --all values to zero

        if (x0 = '1') then
            if (W = '0') then
                y1 <= '1';  -- From state A to B when W = 0
            else
                y5 <= '1';  -- From state A to F when W = 1
            end if;
            
        elsif (x1 = '1') then
            if (W = '0') then
                y2 <= '1';  -- From state B to C when W = 0
            else
                y5 <= '1';  -- From state B to F when W = 1
            end if;
            
        elsif (x2 = '1') then
            if (W = '0') then
                y3 <= '1';  -- From state C to D when W = 0
            else
                y5 <= '1';  -- From state C to F when W = 1
            end if;
            
        elsif (x3 = '1') then
            if (W = '0') then
                y4 <= '1';  -- From state D to E when W = 0
            else
                y5 <= '1';  -- From state D to F when W = 1
            end if;
            
        elsif (x4 = '1') then
            if (W = '0') then
                y4 <= '1';  -- From state E to F when W = 1  
            else
                y5 <= '1';  -- From state E to E when W = 0
            end if;
            
        elsif (x5 = '1') then
            if (W = '1') then
                y6 <= '1';  -- From state F to G when W = 1
            else
                y1 <= '1';  -- From state F to B when W = 0
            end if;
            
        elsif (x6 = '1') then
            if (W = '1') then
                y7 <= '1';  -- From state G to H when W = 1
            else
                y1 <= '1';  -- From state G to B when W = 0
            end if;
            
        elsif (x7 = '1') then
            if (W = '1') then
                y8 <= '1';  -- From state H to I when W = 1  
            else
                y1 <= '1';  -- From state H to B when W = 0
            end if;
            
        elsif (x8 = '1') then
            if (W = '1') then
                y8 <= '1';  -- From state I to I when W = 1
            else
                y1 <= '1';  -- From state I to B when W = 0S
            end if;
            
        else
            -- back: set the next state to A
            y0 <= '1';
        end if;
    end process;

    --------------------------------------------------------------------
    -- Output Process: Manage LEDR(0) (active high) CC2
    -- LEDR(0) is '1' (active) when the FSM is in state E (x4) or state I (x8)
    --------------------------------------------------------------------
    process(x4, x8)
    begin
        if (x4 = '1' xor x8 = '1') then
            LEDR(0) <= '1';
        else
            LEDR(0) <= '0';
        end if;
    end process;

    -- Set the remaining LEDR outputs to the inactive state
    LEDR(9 downto 1) <= (others => '0');

end Behavioral;
