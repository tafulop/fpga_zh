----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2015 05:58:38 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    Port ( a : in signed (7 downto 0);
           b : in signed (7 downto 0);
           op : in unsigned (3 downto 0);
           result : out signed (7 downto 0)   );
end ALU;

architecture Behavioral of ALU is

signal full_result : signed  (15 downto 0);

begin

        compute : process(a,b,op)
        
            begin 
                    -- op: + 0
                    if(op = "0000") then
                        result <=  (a + b);
                    
                    -- op: - 1
                    elsif(op = "0001") then
                        result <= (a - b);
                   
                    -- op: * 2
                    elsif(op = "0010") then
                       full_result <= (a * b);
                       result <= RESIZE(full_result, 8);
                   
                    -- op: lshift a 3
                    elsif(op = "0011") then
                       result <= a sll 1;
                    
                    -- op: rshift 4 
                    elsif(op = "0100") then
                       result <= a srl 1;
                    
                    -- op: a fall through 5
                   elsif(op = "0101") then
                        result <= a;
                    
                    -- rotate right A 6
                    elsif(op = "0110") then
                      result <= ROTATE_RIGHT(a,1);
                         
                    -- rotate left A 7
                    elsif(op = "0111") then
                        result <= ROTATE_LEFT(a,1);
                    
                    -- other case: b atengedes
                    else
                       result <= b;
                end if;            
  
        end process compute;


end Behavioral;










