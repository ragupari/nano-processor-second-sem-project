

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


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

    --- 220444K - 0b 0011 0101 1101 0001 1100
    --- 220297K - 0b 0011 0101 1100 1000 1001
    --- 220625R - 0b 0011 0101 1101 1101 0001
    --- 220671D - 0b 0011 0101 1101 1111 1111
    
    process
    begin
        wait for 20ns;
        Reset <= '1';
        wait for 30ns;
        Reset <= '0';
        D <= "100";
        wait for 30ns;
        D <= "001";
        wait for 30ns;
        D <= "101";
        wait for 30ns;
        D <= "111";
        wait for 30ns;
        Reset <= '1';      
        wait;
    end process;



end Behavioral;
