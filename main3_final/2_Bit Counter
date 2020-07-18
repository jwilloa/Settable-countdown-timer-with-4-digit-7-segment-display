----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2020 13:53:27
-- Design Name: 
-- Module Name: two_bit_counter - Behavioral
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

ENTITY two_bit_counter is
    PORT ( clock   : in     STD_LOGIC;
           reset   : in     STD_LOGIC;
           cnt_out : buffer STD_LOGIC_VECTOR (1 downto 0)
         );
END two_bit_counter;

ARCHITECTURE Behavioral of two_bit_counter is

begin

    process(clock, reset, cnt_out)
    begin
        if (reset = '1') then
            cnt_out <= "00";
        elsif RISING_EDGE(clock) then -- Initiate count
            cnt_out <= cnt_out + "01";
        end if;
    end process;
    

END Behavioral;