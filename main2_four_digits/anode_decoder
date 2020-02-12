----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 06.02.2020 17:20:42
-- Design Name:
-- Module Name: anode_decoder - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity anode_decoder is
    Port ( counter : in STD_LOGIC_VECTOR (1 downto 0);
           anode : out STD_LOGIC_VECTOR (3 downto 0));
end anode_decoder;

architecture Behavioral of anode_decoder is

begin

    with counter select
      anode <= "1110" when "00",
               "1101" when "01",
               "1011" when "10",
               "0111" when "11",
               "0000" when others;

END Behavioral;
