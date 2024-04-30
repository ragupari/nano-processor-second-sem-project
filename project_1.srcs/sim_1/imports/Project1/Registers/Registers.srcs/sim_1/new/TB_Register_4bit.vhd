----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/10/2022 12:32:21 PM
-- Design Name: 
-- Module Name: TB_Register_4bit - Behavioral
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

entity TB_Register_4bit is
--  Port ( );
end TB_Register_4bit;

architecture Behavioral of TB_Register_4bit is

component Register_4bit
    PORT ( D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal D : STD_LOGIC_VECTOR (3 downto 0):="0000";
signal En,Clk : STD_LOGIC :='0';
signal Reset : STD_LOGIC :='1';
signal Q : STD_LOGIC_VECTOR (3 downto 0);

begin

UUT: Register_4bit
    PORT MAP (
        D => D,
        En => En,
        Clk => Clk,
        Reset => Reset,
        Q => Q 
    );

process
begin
    wait for 50ns;
    Clk <= NOT(Clk);
end process;

process 
begin
    wait for 20ns;
    Reset <= NOT(Reset);
    Wait for 5ns;
    En <= '1';
    wait;
end process;
--- 200307C - 0b 0011 0000 1110 0111 0011
--- 200592R - 0b 0011 0000 1111 1001 0000
--- 200583P - 0b 0011 0000 1111 1000 0111
--- 200441F - 0b 0011 0000 1110 1111 1001
--- 200432E - 0b 0011 0000 1110 1111 0000
process
begin
     D <= "0011";
     wait for 100ns;
     D <= "0000";
     wait for 100ns;
     D <= "0111";
     wait for 100ns;
     D <= "1001";
     wait for 100ns;
     D <= "1111";
     wait;

end process;

end Behavioral;
