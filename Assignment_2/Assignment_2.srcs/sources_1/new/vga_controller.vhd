library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vga_controller is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           HS : in STD_LOGIC;
           VS : out STD_LOGIC;
           hcount : out STD_LOGIC;
           vcount : out STD_LOGIC);
end vga_controller;

architecture Behavioral of vga_controller is

begin


end Behavioral;
