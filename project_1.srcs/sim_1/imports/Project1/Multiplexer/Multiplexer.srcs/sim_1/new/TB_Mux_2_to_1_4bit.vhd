----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/10/2022 12:27:14 AM
-- Design Name: 
-- Module Name: TB_Mux_2_to_1_4bit - Behavioral
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

entity TB_Mux_2_to_1_4bit is
--  Port ( );
end TB_Mux_2_to_1_4bit;

architecture Behavioral of TB_Mux_2_to_1_4bit is
component Mux_2_to_1_4bit 
    Port ( S : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           X : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal S : STD_LOGIC;
signal A : STD_LOGIC_VECTOR (3 downto 0);
signal B : STD_LOGIC_VECTOR (3 downto 0);
signal X : STD_LOGIC_VECTOR (3 downto 0);
begin
UUT : Mux_2_to_1_4bit
      port map (
           S=>S,
           A=>A,
           B=>B,
           X=>X   );
--- 200307C - 0b 0011 0000 1110 0111 0011
--- 200592R - 0b 0011 0000 1111 1001 0000
--- 200583P - 0b 0011 0000 1111 1000 0111
--- 200441F - 0b 0011 0000 1110 1111 1001
--- 200432E - 0b 0011 0000 1110 1111 0000
     process
     begin
          A <= "0011";
          B <= "0000";
          S <= '1';
          
          wait for 50ns;
          S <= '0';
          
          wait for 50ns;
          A <= "0111";
          B <= "1001";
          S <= '1';
          wait for 50ns;
          S <= '0';
          
          wait for 50ns;
          A <= "1111";
          B <= "1110";
          S <= '1';
          wait for 50ns;
          S <= '0';
          wait;
          
     end process;

end Behavioral;
