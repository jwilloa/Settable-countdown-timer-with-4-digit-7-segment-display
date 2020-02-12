----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2020 21:32:12
-- Design Name: 
-- Module Name: latch - Behavioral
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

ENTITY latch is
    PORT ( D      : in    STD_LOGIC;
           clk_in : in    STD_LOGIC;
           qout   : inout STD_LOGIC
         );
END latch;

ARCHITECTURE Behavioral of latch is

begin
    process(clk_in, D)
    begin
        if rising_edge (clk_in) then -- Wait till rising edge
            if (D = '1') then
                qout <= not (qout); -- Invert if '1'
            end if;
        end if;
    end process;
END Behavioral;