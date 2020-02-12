----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 06.02.2020 16:28:58
-- Design Name:
-- Module Name: main1 one digit - Behavioral
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main1_one_digit is
    Port (
           sw : in STD_LOGIC_VECTOR(3 downto 0);
           clk : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR(6 downto 0));
end main1_one_digit;

architecture Behavioral of main1_one_digit is

begin

    decoder: ENTITY work.seven_segment_decoder(Behavioral)
    PORT MAP(
             clk => clk,
             BCDin => sw(3 downto 0),
             Seven_Segment => seg);

end Behavioral;
