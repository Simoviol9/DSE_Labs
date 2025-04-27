library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Testbench for the MODIFIED_one_hot_FSM module
entity tb_MODIFIED_one_hot_FSM is
end tb_MODIFIED_one_hot_FSM;

architecture Behavioral of tb_MODIFIED_one_hot_FSM is

    --------------------------------------------------------------------
    -- Declaration of the Unit Under Test (UUT)
    --------------------------------------------------------------------
    component MODIFIED_one_hot_FSM is
         Port (
           LEDR : out std_logic_vector(9 downto 0);
           SW   : in  std_logic_vector(9 downto 0);
           KEY  : in  std_logic_vector(3 downto 0)
         );
    end component;
    
    --------------------------------------------------------------------
    -- Signals used for the Testbench
    --------------------------------------------------------------------
    signal tb_LEDR : std_logic_vector(9 downto 0);
    signal tb_SW   : std_logic_vector(9 downto 0);
    signal tb_KEY  : std_logic_vector(3 downto 0);
    
    constant clk_period : time := 10 ns; -- Defines the clock period
    
begin

    --------------------------------------------------------------------
    -- Instantiate the UUT under test device
    --------------------------------------------------------------------
    uut: MODIFIED_one_hot_FSM
        port map (
          LEDR => tb_LEDR,
          SW   => tb_SW,
          KEY  => tb_KEY
        );
        
    --------------------------------------------------------------------
    -- Clock Generation for KEY(0)
    --------------------------------------------------------------------
    clk_process: process
    begin
        tb_KEY(0) <= '0';
        wait for clk_period / 2;
        tb_KEY(0) <= '1';
        wait for clk_period / 2;
    end process clk_process;
    
     
    
    --------------------------------------------------------------------
    -- Stimulus Process for SW: applying reset and control signal changes
    --------------------------------------------------------------------
    process
    begin
        ----------------------------------------------------------------
        -- Initialization: set all bits of SW to '1'
        ----------------------------------------------------------------
        tb_SW <= (others => '1');
        
        -- Activate reset: since the design uses "rst <= not SW(0)",
        -- forcing SW(0) to '0' will assert the reset.
        tb_SW(0) <= '0';
        wait for 20 ns;  -- hold reset for 20 ns
        
        -- Release reset: set SW(0) to '1'
        tb_SW(0) <= '1';
        
        ----------------------------------------------------------------
        -- Stimulate control signal W (mapped to SW(1))
        -- Here we vary W over time to trigger state transitions.
        ----------------------------------------------------------------
        -- Initially, set W = '0'
        tb_SW(1) <= '0'; -- different time to help for view
        wait for 30 ns;
        
        tb_SW(1) <= '1';
        wait for 40 ns;
        
        tb_SW(1) <= '0';
        wait for 50 ns;
		  
		  tb_SW(0) <= '0';
        wait for 5 ns;  -- hold reset for 20 ns
		  
		  tb_SW(0) <= '1';
        
        tb_SW(1) <= '1';--mixed situation 
        wait for 30 ns;
		  
        
        tb_SW(1) <= '0';
        wait for 50 ns;
        
        ----------------------------------------------------------------
        -- End of simulation stimulus (simulation will now hold)
        ----------------------------------------------------------------
        wait;
    end process;

end Behavioral;
