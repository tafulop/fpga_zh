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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbench is

end testbench;

architecture Behavioral of testbench is
    component ALU
    Port(       a : in signed (7 downto 0);
               b : in signed (7 downto 0);
               op : in unsigned (3 downto 0);
               result : out signed (7 downto 0));

    end component ALU;
 
 signal a : signed (7 downto 0);
 signal b : signed (7 downto 0);
 signal op : unsigned (3 downto 0);
 signal result : signed (7 downto 0);
      
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
       
          -- osszeadas 0
          op <= b"0000";
          a <= b"00000001";
          b <= b"00000001";
       
           -- kivonas 1
          wait for 10 ns;
          op <= b"0001";
          a <= b"00000100";
          b <= b"00000001";
          
       -- szorzas 2
       wait for 10 ns;
       op <= b"0010";
       a <= b"00000010";
       b <= b"00000010";
        
        -- left shift a 3
        wait for 10 ns;
        op <= b"0011";
        a <= b"00000001";
        b <= b"00000000";

        -- right shift a 4
        wait for 10 ns;
        op <= b"0100";
        a <= b"10000000";
        b <= b"00000000";
        
        -- a atenged 5
        wait for 10 ns;
        op <= b"0101";
        a <= b"10101010";
        b <= b"00000000";

        -- right rotate a 6
        wait for 10 ns;
        op <= b"0110";
        a <= b"00000001";
        b <= b"00000000";
        
        -- left rotate a 6
        wait for 10 ns;
        op <= b"0111";
        a <= b"10000000";
        b <= b"00000000";
        
        wait for 10 ns;
       
 end process process_stimulus; 


end Behavioral;
