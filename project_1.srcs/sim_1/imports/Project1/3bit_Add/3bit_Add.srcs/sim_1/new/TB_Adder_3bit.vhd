----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/09/2022 11:11:25 PM
-- Design Name: 
-- Module Name: TB_Adder_3bit - Behavioral
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

entity TB_Adder_3bit is
--  Port ( );
end TB_Adder_3bit;

architecture Behavioral of TB_Adder_3bit is
component Adder_3bit
     Port ( 
         A : in STD_LOGIC_VECTOR (2 downto 0);
         S: out STD_LOGIC_VECTOR (2 downto 0);
         C_out : out STD_LOGIC
       );
end component;
signal A,S : STD_LOGIC_VECTOR (2 downto 0);
signal C_out : STD_LOGIC;
begin
UUT: Adder_3bit
    PORT MAP (
           A => A,
           S => S,
           C_out => C_out
    );
    --- 200307C - 0b  110 000 111 001 110 011
    --- 200592R - 0b  110 000 111 110 010 000
    --- 200583P - 0b  110 000 111 110 000 111
    --- 200441F - 0b  110 000 111 011 111 001
    --- 200432E - 0b  110 000 111 011 110 000
    process
            begin 
                A <= "011";
                wait for 100ns;
                A <= "010";
                wait for 100ns;
                A <= "111";
                wait for 100ns;
                A <= "001";
                wait for 100ns;
                A <= "110";
                wait;
            end process;
    

end Behavioral;
