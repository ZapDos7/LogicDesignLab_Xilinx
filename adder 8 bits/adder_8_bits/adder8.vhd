----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:14 12/31/2014 
-- Design Name: 
-- Module Name:    adder8 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder8 is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end adder8;

architecture Behavioral of adder8 is

signal k,l,m,n,o,p,q : STD_LOGIC;

component adder
	port(x,y,z : in STD_LOGIC; S,C : out STD_LOGIC);
end component;

begin

I0: adder port map (A(0), B(0), Cin, Sum(0), k);
I1: adder port map (A(1), B(1), k, Sum(1), l);
I2: adder port map (A(2), B(2), l, Sum(2), m);
I3: adder port map (A(3), B(3), m, Sum(3), n);
I4: adder port map (A(4), B(4), n, Sum(4), o);
I5: adder port map (A(5), B(5), o, Sum(5), p);
I6: adder port map (A(6), B(6), p, Sum(6), q);
I7: adder port map (A(7), B(7), q, Sum(7), Cout);


end Behavioral;

