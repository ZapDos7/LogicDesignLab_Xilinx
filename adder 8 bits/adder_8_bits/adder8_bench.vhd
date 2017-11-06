--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:22:49 12/31/2014
-- Design Name:   
-- Module Name:   C:/Users/Ioanna/Desktop/adder 8 bits/adder_8_bits/adder8_bench.vhd
-- Project Name:  adder_8_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder8
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY adder8_bench IS
END adder8_bench;
 
ARCHITECTURE behavior OF adder8_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder8
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Cin : IN  std_logic;
         Sum : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder8 PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     A <= "00000000";
	  B <= "00000000";		--0
	  Cin <= '0';
	  wait for 50 ns;
	  A <= "00000000";
	  B <= "00000001";		--1
	  Cin <= '0';
	  wait for 50 ns;
	  A <= "00000011";
	  B <= "00000101";		--8
	  Cin <= '0';
	  wait for 50 ns;
	  A <= "00010000";
	  B <= "01000000";		--80
	  Cin <= '0';
	  wait for 50 ns;
	  A <= "11111111";
	  B <= "00000001";		--0
	  Cin <= '0';
	  wait for 50 ns;
	  A <= "10101010";
	  B <= "01010101";		--255
	  Cin <= '0';
	  wait for 50 ns;
	  A <= "11000000";
	  B <= "00011000";		--216
	  Cin <= '0';
	  wait for 50 ns;
	  A <= "00011000";
	  B <= "00000011";		--27
	  Cin <= '0';
	  wait for 50 ns;

     -- insert stimulus here 

      wait;
   end process;

END;
