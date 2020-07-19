----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 06.02.2020 17:42:45
-- Design Name:
-- Module Name: clock_divider - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY clock_divider is
    GENERIC (count_end  :     NATURAL := 208334); -- Default count_end is 208334

    PORT (clk_in        : in  STD_LOGIC; --reset
          clock_out     : out STD_LOGIC
         );
END clock_divider;

ARCHITECTURE Behavioral of clock_divider is

SIGNAL count : INTEGER   :=   0;
SIGNAL tmp   : STD_LOGIC := '0';

begin

    process(clk_in)
    begin
        if RISING_EDGE(clk_in) then -- Wait till rising edge
            count <= count + 1;     -- Increment counter by 1
            if (count = count_end) then   -- Once count = 208334 then invert the signal
                tmp <= NOT tmp;
                count <= 0;  -- And set count back to 0
            end if;
        end if;
       end process;

       clock_out <= tmp; -- Send tmp signal to clock_out

END Behavioral;
