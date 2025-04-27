library ieee;
use ieee.std_logic_1164.all;

entity controlUnit is
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
end controlUnit;

architecture Behavior of controlUnit is

	type State_type is (RESET, IDLE, WRITE_MEMA, WRITE_MEMB, ENDOFTASK);
	signal FSM_CS, FSM_NS : State_type; -- FSM current state and next state

begin

	CC1 : process (START, CNT1, CLK) -- state table 
	begin
		case FSM_CS is
			when RESET =>
				FSM_NS <= IDLE;
			when IDLE =>
				if (START = '1') then
					FSM_NS <= WRITE_MEMA;
				else
					FSM_NS <= IDLE;
				end if;

			when WRITE_MEMA =>
				if (CNT1 = '1') then
					FSM_NS <= WRITE_MEMB;
				else
					FSM_NS <= WRITE_MEMA;
				end if;

			when WRITE_MEMB =>
				if (CNT1 = '1') then
					FSM_NS <= ENDOFTASK;
				else
					FSM_NS <= WRITE_MEMB;
				end if;

			when ENDOFTASK =>
				FSM_NS <= ENDOFTASK;
			when others =>
				FSM_NS <= RESET;
		end case;
	end process CC1;          -- state table 

	MEM : process (CLK, RESN) -- state flip-flops 
	begin
		if (RESN = '0') then
			FSM_CS <= RESET;
		else
			if (rising_edge(CLK)) then
				FSM_CS <= FSM_NS;
			end if;
		end if;
	end process MEM;

	CC2 : process (FSM_CS)
	begin
		case FSM_CS is
			when RESET =>
				MEMA_CS  <= '0';
				MEMA_RD  <= '0';
				MEMA_WR  <= '0';
				MEMB_CS  <= '0';
				MEMB_RD  <= '0';
				MEMB_WR  <= '0';
				EN_CNT   <= '0';
				RES_REG0 <= '0';
				ADDA_SEL <= '0';
				ADDB_SEL <= '0';
				DONE     <= '0';
			when IDLE =>
				MEMA_CS  <= '0';
				MEMA_RD  <= '0';
				MEMA_WR  <= '0';
				MEMB_CS  <= '0';
				MEMB_RD  <= '0';
				MEMB_WR  <= '0';
				EN_CNT   <= '0';
				RES_REG0 <= '0';
				ADDA_SEL <= '0';
				ADDB_SEL <= '0';
				DONE     <= '0';

			when WRITE_MEMA =>
				MEMA_CS  <= '1';
				MEMA_RD  <= '0';
				MEMA_WR  <= '1';
				MEMB_CS  <= '0';
				MEMB_RD  <= '0';
				MEMB_WR  <= '0';
				EN_CNT   <= '1';
				RES_REG0 <= '0';
				ADDA_SEL <= '0';
				ADDB_SEL <= '0';
				DONE     <= '0';

			when WRITE_MEMB =>
				MEMA_CS  <= '1';
				MEMA_RD  <= '1';
				MEMA_WR  <= '0';
				MEMB_CS  <= '1';
				MEMB_RD  <= '0';
				MEMB_WR  <= '1';
				EN_CNT   <= '1';
				RES_REG0 <= '1';
				ADDA_SEL <= '0';
				ADDB_SEL <= '1';
				DONE     <= '0';

			when ENDOFTASK =>
				MEMA_CS  <= '0';
				MEMA_RD  <= '0';
				MEMA_WR  <= '0';
				MEMB_CS  <= '0';
				MEMB_RD  <= '0';
				MEMB_WR  <= '0';
				EN_CNT   <= '0';
				RES_REG0 <= '0';
				ADDA_SEL <= '0';
				ADDB_SEL <= '0';
				DONE     <= '1';

			when others =>
				MEMA_CS  <= '0';
				MEMA_RD  <= '0';
				MEMA_WR  <= '0';
				MEMB_CS  <= '0';
				MEMB_RD  <= '0';
				MEMB_WR  <= '0';
				EN_CNT   <= '0';
				RES_REG0 <= '1';
				ADDA_SEL <= '0';
				ADDB_SEL <= '0';
				DONE     <= '0';
		end case;
	end process CC2;

end Behavior;
