library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           carry_in : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry_out : out STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

begin

    sum <= in1 xor in2 xor carry_in;
    carry_out <= (in1 and in2) or (in1 and carry_in) or (in2 and carry_in);

end Behavioral;
