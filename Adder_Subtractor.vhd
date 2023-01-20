library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder_Subtractor is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (7 downto 0);
           Cout : out STD_LOGIC);
end Adder_Subtractor;

architecture Behavioral of Adder_Subtractor is

signal B_Cin : std_logic_vector (7 downto 0);
signal C : std_logic_vector (8 downto 0);

component Full_Adder is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           carry_in : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry_out : out STD_LOGIC);
end component Full_Adder;

begin
  
    C(0) <= Cin xor '0';
    B_Cin(0) <= B(0) xor Cin;
    B_Cin(1) <= B(1) xor Cin;
    B_Cin(2) <= B(2) xor Cin;
    B_Cin(3) <= B(3) xor Cin;
    B_Cin(4) <= B(4) xor Cin;
    B_Cin(5) <= B(5) xor Cin;
    B_Cin(6) <= B(6) xor Cin;
    B_Cin(7) <= B(7) xor Cin;
    
    uut0: Full_Adder port map(A(0), B_Cin(0), C(0), S(0), C(1));
    uut1: Full_Adder port map(A(1), B_Cin(1), C(1), S(1), C(2));
    uut2: Full_Adder port map(A(2), B_Cin(2), C(2), S(2), C(3));
    uut3: Full_Adder port map(A(3), B_Cin(3), C(3), S(3), C(4));
    uut4: Full_Adder port map(A(4), B_Cin(4), C(4), S(4), C(5));
    uut5: Full_Adder port map(A(5), B_Cin(5), C(5), S(5), C(6));
    uut6: Full_Adder port map(A(6), B_Cin(6), C(6), S(6), C(7));
    uut7: Full_Adder port map(A(7), B_Cin(7), C(7), S(7), C(8));
    
    Cout <= Cin xor C(8);

end Behavioral;
