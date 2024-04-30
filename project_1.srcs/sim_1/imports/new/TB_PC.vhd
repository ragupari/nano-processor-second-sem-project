----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/10/2022 06:54:16 PM
-- Design Name: 
-- Module Name: TB_PC - Behavioral
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

entity TB_PC is
--  Port ( );
end TB_PC;

architecture Behavioral of TB_PC is
component PC
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (2 downto 0));
end component;
signal Reset : STD_LOGIC;
signal D,O : STD_LOGIC_VECTOR (2 downto 0);
signal Clk : STD_LOGIC := '1';
begin
    UUT : PC
        PORT MAP(
            Clk => Clk,
            Reset => Reset,
            D => D,
            O => O
        );
    process
    begin
        wait for 10ns;
        Clk <= NOT(CLK);
    end process;
    --- 200307C - 0b  110 000 111 001 110 011
    --- 200592R - 0b  110 000 111 110 010 000
    --- 200583P - 0b  110 000 111 110 000 111
    --- 200441F - 0b  110 000 111 011 111 001
    --- 200432E - 0b  110 000 111 011 110 000
    process
    begin
        wait for 20ns;
        Reset <= '1';
        wait for 30ns;
        Reset <= '0';
        D <= "011";
        wait for 30ns;
        D <= "010";
        wait for 30ns;
        D <= "001";
        wait for 30ns;
        D <= "110";
        wait for 30ns;
        Reset <= '1';      
        wait;
    end process;



end Behavioral;
