----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2020 13:52:13
-- Design Name: 
-- Module Name: display_anode_select - Behavioral
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
USE ieee.numeric_std.ALL;

ENTITY display_anode_select is
  PORT ( 
         counter : in  STD_LOGIC_VECTOR (1 downto 0);
         anode   : out STD_LOGIC_VECTOR (3 downto 0)
       );
END display_anode_select;

ARCHITECTURE Behavioral of display_anode_select is

begin

    -- Manually decode digits to specified anode outputs
    with counter select
      anode <= "1110" when "00",
               "1101" when "01",
               "1011" when "10",
               "0111" when "11",
               "0000" when others;

END Behavioral;
