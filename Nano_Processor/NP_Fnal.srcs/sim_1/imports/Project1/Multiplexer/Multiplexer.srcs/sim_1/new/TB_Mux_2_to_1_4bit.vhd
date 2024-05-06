

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



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
           
    --- 220444K - 0b 0011 0101 1101 0001 1100
    --- 220297K - 0b 0011 0101 1100 1000 1001
    --- 220625R - 0b 0011 0101 1101 1101 0001
    --- 220671D - 0b 0011 0101 1101 1111 1111

     process
     begin
          A <= "1100";
          B <= "0001";
          S <= '1';
          
          wait for 50ns;
          S <= '0';
          
          wait for 50ns;
          A <= "1001";
          B <= "1000";
          S <= '1';
          wait for 50ns;
          S <= '0';
          
          wait for 50ns;
          A <= "0001";
          B <= "1101";
          S <= '1';
          wait for 50ns;
          S <= '0';
          wait;
          
     end process;

end Behavioral;
