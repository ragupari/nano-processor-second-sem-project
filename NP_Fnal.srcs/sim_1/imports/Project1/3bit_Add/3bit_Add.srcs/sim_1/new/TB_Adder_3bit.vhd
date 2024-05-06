

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


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
    --- 220444K - 0b 0011 0101 1101 0001 1100
    --- 220297K - 0b 0011 0101 1100 1000 1001
    --- 220625R - 0b 0011 0101 1101 1101 0001
    --- 220671D - 0b 0011 0101 1101 1111 1111
    process
            begin 
                A <= "100";
                wait for 100ns;
                A <= "001";
                wait for 100ns;
                A <= "101";
                wait for 100ns;
                A <= "111";
                wait;
            end process;
    

end Behavioral;
