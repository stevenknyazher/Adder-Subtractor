library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder_Subtractor_TB is
--  Port ( );
end Adder_Subtractor_TB;

architecture Behavioral of Adder_Subtractor_TB is

component Adder_Subtractor is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (7 downto 0);
           Cout : out STD_LOGIC);
end component Adder_Subtractor;

signal A_TB : std_logic_vector (7 downto 0);
signal B_TB : std_logic_vector (7 downto 0);
signal Cin_TB : std_logic;
signal S_TB : std_logic_vector (7 downto 0);
signal Cout_TB : std_logic;

begin

uut : Adder_Subtractor port map(A => A_TB, B => B_TB, Cin => Cin_TB, S => S_TB, Cout => Cout_TB);

process
begin
A_TB <= "01101111";
wait for 20 ns;
A_TB <= "11001011";
wait for 30 ns;
A_TB <= "01011000";
wait for 50 ns;
A_TB <= "11100001";
wait for 40 ns;
A_TB <= "01100011";
wait;
end process;

process
begin
B_TB <= "00001010";
wait for 30 ns;
B_TB <= "10101101";
wait for 50 ns;
B_TB <= "00111000";
wait for 20 ns;
B_TB <= "10111001";
wait for 40 ns;
B_TB <= "01101101";
wait;
end process;

process
begin
Cin_TB <= '0';
wait for 10 ns;
Cin_TB <= '1';
wait for 60 ns;
Cin_TB <= '0';
wait for 30 ns;
Cin_TB <= '1';
wait for 40 ns;
Cin_TB <= '0';
wait;
end process;

end Behavioral;
