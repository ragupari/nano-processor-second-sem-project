----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/10/2022 11:17:35 AM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Mux_8_to_1_4bit is
--  Port ( );
end TB_Mux_8_to_1_4bit;

architecture Behavioral of TB_Mux_8_to_1_4bit is
component Mux_8_to_1_4bit 
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           A0 : in STD_LOGIC_VECTOR (3 downto 0);
           A1 : in STD_LOGIC_VECTOR (3 downto 0);
           A2 : in STD_LOGIC_VECTOR (3 downto 0);
           A3 : in STD_LOGIC_VECTOR (3 downto 0);
           A4 : in STD_LOGIC_VECTOR (3 downto 0);
           A5 : in STD_LOGIC_VECTOR (3 downto 0);
           A6 : in STD_LOGIC_VECTOR (3 downto 0);
           A7 : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal A0,A1,A2,A3,A4,A5,A6,A7,Y: STD_LOGIC_VECTOR (3 downto 0);
signal S : STD_LOGIC_VECTOR (2 downto 0);
begin
UUT : Mux_8_to_1_4bit
     port map (
     S => S,
     A0 => A0,
     A1 => A1,
     A2 => A2,
     A3 => A3,
     A4 => A4,
     A5 => A5,
     A6 => A6,
     A7 => A7,
     Y => Y         );
--- 200307C - 0b 0011 0000 1110 0111 0011
--- 200592R - 0b 0011 0000 1111 1001 0000
--- 200583P - 0b 0011 0000 1111 1000 0111
--- 200441F - 0b 0011 0000 1110 1111 1001
--- 200432E - 0b 0011 0000 1110 1111 0000
     process
     begin
         A0 <= "0011";
         A1 <= "0111";
         A2 <= "0000";
         A3 <= "1001";
         A4 <= "1000";
         A5 <= "1111";
         A6 <= "1110";
         A7 <= "0000";
         S <= "000";
         
         wait for 10ns;
         S <= "001";
         
         wait for 10ns;
         S <= "010";
                  
         wait for 10ns;
         S <= "011";
                           
         wait for 10ns;
         S <= "100";
         
         wait for 10ns;
         S <= "101";
                  
         wait for 10ns;
         S <= "110";
         
         wait for 10ns;
         S <= "111";
         
         wait;
         
     end process;

end Behavioral;
