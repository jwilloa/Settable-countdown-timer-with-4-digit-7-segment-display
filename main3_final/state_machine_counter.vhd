--------------------------------------------------------------------------------------
------ Company: 
------ Engineer: 
------ 
------ Create Date: 28.01.2020 16:11:56
------ Design Name: 
------ Module Name: counter - Behavioral
------ Project Name: 
------ Target Devices: 
------ Tool Versions: 
------ Description: 
------ 
------ Dependencies: 
------ 
------ Revision:
------ Revision 0.01 - File Created
------ Additional Comments:
------ 
--------------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY counter is

GENERIC ( width  : NATURAL := 4;
          modulo : NATURAL := 10);         

    PORT ( clk          : in  STD_LOGIC;
           one_sec_clk  : in  STD_LOGIC;          
           set          : in  STD_LOGIC; 
           increase     : in  STD_LOGIC; 
           decrease     : in  STD_LOGIC;  
           c_in         : in  STD_LOGIC;  
           reset_in     : in  STD_LOGIC;       
           c_out        : out STD_LOGIC;
           c_up_out     : out STD_LOGIC;
           c_dwn_out    : out STD_LOGIC;
           reset_out    : out STD_LOGIC; 
           state_driver : out UNSIGNED (3 downto 0)
         );
END counter;

architecture Behavioral of counter is

SIGNAL count : UNSIGNED (3 downto 0);
TYPE   state is (state_0, state_1);  -- List states
SIGNAL curr_state, nx_state : state; -- Signals for current state and next state

begin

    -- Begin state machine 
    state_register : process (set, clk)
    begin 
        if set = '1' then            -- If btnC is pressed stop counting
             curr_state <= state_0;  -- Jump to state_0 and initate code there
        elsif RISING_EDGE (clk) then -- Else jump to next state
             curr_state <= nx_state;
        end if;   
    end process;

    -- States declared
    state_transition : process (curr_state, count, one_sec_clk, set)
    begin
       case curr_state is
           when  state_0 =>
              nx_state <= state_0;                                  -- Set state as state_0 (Don't need this statement)
              if RISING_EDGE (one_sec_clk) then                     -- Wait for rising clock edge
                if (increase = '1') and  count = (modulo - 1) then  -- If up toggled, and count equal max num, reset to 0
                    count <= "0000";
                elsif (decrease = '1') and  count = "0000" then     -- If down toggled and count equals 0, reset to max num
                        count <= modulo - "0001";
                elsif increase = '1' and count < modulo then        -- If up is toggled and count is less than max, count up by 1
                    count <= count + "0001" ;
                elsif decrease = '1' and count > "0000" then        -- If down is toggled and count is larger than min, count down by 1
                    count <= count - "0001" ;
                elsif (reset_in = '1') then                         -- If reset_out is high (making reset high for state1/2) then reset those states to zero (seconds)
                    count <= "0000";
                end if;
              end if;

           when state_1 =>
            nx_state <= state_1;
            if RISING_EDGE (one_sec_clk) then
                if (c_in = '1') and (count = "0000") then          -- When previous state is high (c_out), and count is zero, reset to max num
                    count <=  (modulo - "0001");
                elsif c_in = '1' then                              -- When previous state is high (c_out), start counting down by 1
                    count <= count - "0001" ;
                end if;
            end if;
       end case;
    end process;

    state_driver <= count;
    c_out     <= '1' when (c_in = '1')     and (count = "0000") else '0';
    c_up_out  <= '1' when (increase = '1') and (count = "1001") else '0';
    c_dwn_out <= '1' when (decrease = '1') and (count = "0000") else '0';
    reset_out <= '1' when (decrease = '1') or  (increase = '1') else '0';

end Behavioral;