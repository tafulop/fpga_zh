----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2015 06:20:23 PM
-- Design Name: 
-- Module Name: testbench - Behavioral
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbench is

end testbench;

architecture Behavioral of testbench is
    component ALU
    Port(       a : in STD_LOGIC_VECTOR (7 downto 0);
               b : in STD_LOGIC_VECTOR (7 downto 0);
               op : in STD_LOGIC_VECTOR (3 downto 0);
               result : out STD_LOGIC_VECTOR (7 downto 0));

    end component ALU;
 
 signal a : STD_LOGIC_VECTOR (7 downto 0);
 signal b : STD_LOGIC_VECTOR (7 downto 0);
 signal op : STD_LOGIC_VECTOR (3 downto 0);
 signal result : STD_LOGIC_VECTOR (7 downto 0);
      
begin

-- sajat peldany
my_ALU : ALU
port map(   
        a => a,
        b => b,
        op => op,
        result => result
     ); 


-- stimulus
process_stimulus : process
   
   begin
       
       -- szorzas
       wait for 10 ns;
       op <= b"0000";
       a <= b"0001";
       b <= b"0001";
       

       
 end process process_stimulus; 


end Behavioral;
