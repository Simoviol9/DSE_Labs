

------------------------------------
-- Group 8 - Laboratory 6
-- Simple digital filter
-- VHDL code of main entity
------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity main is
	port (
		START, CLK, RES: in  STD_LOGIC;
		DATA_IN  : in  signed(7 downto 0);
		DONE : out STD_LOGIC);
end main;

architecture structure of main is
component datapath is
	port (
		CNT0_ENABLE, SHIFTREG_EN  : in  STD_LOGIC;	-- Shiftreg_en (active low)
		END_CNT: out STD_LOGIC;
		DATA_IN: in signed(7 downto 0);
		DATA_OUT: out signed(7 downto 0);
		CLK, RES: in  STD_LOGIC;
ADDA_SEL, ADDB_SEL: in STD_LOGIC;
		MEMA_ADD, MEMB_ADD: out STD_LOGIC_VECTOR(9 downto 0)
	);
end component;

component controlUnit is
	port (
		CLK, RESN                 : in  STD_LOGIC; -- Clock and reset signals
		START, CNT1               : in  STD_LOGIC; -- FSM inputs

		MEMA_CS, MEMA_RD, MEMA_WR : out STD_LOGIC; -- Memory A status signals
		MEMB_CS, MEMB_RD, MEMB_WR : out STD_LOGIC; -- Memory B status signals
		EN_CNT                    : out STD_LOGIC; -- Enable counter
		RES_REG0                  : out STD_LOGIC;
		ADDA_SEL, ADDB_SEL        : out STD_LOGIC;
		DONE                      : out STD_LOGIC
	);

end component;

component memory is
	port (
		CLK, CS, WR, RD      : in  STD_LOGIC;
		ADDRESS  : in  STD_LOGIC_VECTOR(9 downto 0);
		DATA_IN  : in  signed(7 downto 0);
		DATA_OUT : out signed(7 downto 0));
end component;

signal CNT0_ENABLE: STD_LOGIC;
signal  DP_DATA_IN, DP_DATA_OUT: SIGNED(7 downto 0);
signal ADDA_SEL, ADDB_SEL: STD_LOGIC;
signal MEMA_ADD, MEMB_ADD: STD_LOGIC_VECTOR(9 downto 0);
signal END_CNT: STD_LOGIC;

signal MEMA_CS, MEMA_RD, MEMA_WR :  STD_LOGIC; -- Memory A status signals
	signal	MEMB_CS, MEMB_RD, MEMB_WR :  STD_LOGIC; -- Memory B status signals
signal RES_REG: STD_LOGIC;


begin

-- Datapath Port Map
DP: datapath
  port map (
    CNT0_ENABLE   => CNT0_ENABLE,
    SHIFTREG_EN   => RES_REG,
	END_CNT=> END_CNT,
    DATA_IN       => DP_DATA_IN,
    DATA_OUT      => DP_DATA_OUT,
    CLK           => CLK,
    RES           => RES,
    ADDA_SEL      => ADDA_SEL,
    ADDB_SEL      => ADDB_SEL,
    MEMA_ADD      => MEMA_ADD,
    MEMB_ADD      => MEMB_ADD
  );

-- Control Unit Port Map
CU: controlUnit
  port map (
    CLK           => CLK,
    RESN          => RES,
    START         => START,
    CNT1          => END_CNT,
    MEMA_CS       => MEMA_CS,
    MEMA_RD       => MEMA_RD,
    MEMA_WR       => MEMA_WR,
    MEMB_CS       => MEMB_CS,
    MEMB_RD       => MEMB_RD,
    MEMB_WR       => MEMB_WR,
    EN_CNT        => CNT0_ENABLE,
    RES_REG0      => RES_REG,
    ADDA_SEL      => ADDA_SEL,
    ADDB_SEL      => ADDB_SEL,
    DONE          => DONE
  );

-- Memory A Port Map
MEMA: memory
  port map (
    CLK           => CLK,
    CS            => MEMA_CS,
    WR            => MEMA_WR,
    RD            => MEMA_RD,
    ADDRESS       => MEMA_ADD,
    DATA_IN       => DATA_IN,
    DATA_OUT      => DP_DATA_IN
  );

-- Memory B Port Map
MEMB: memory
  port map (
    CLK           => CLK,
    CS            => MEMB_CS,
    WR            => MEMB_WR,
    RD            => MEMB_RD,
    ADDRESS       => MEMB_ADD,
    DATA_IN       => DP_DATA_OUT
  );
  
	
end structure;
