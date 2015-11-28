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
use IEEE.math_real.all;


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


begin

        compute : process(a,b,op)
        
            begin 
                    -- op: +
                    if(op = "0000") then
                        result <=  (a + b);
                    -- op: -
                    elsif(op = "0001") then
                        result <= (a - b);
                    -- op: *
                    --elsif(op = "0010") then
                       result <= a * b;
                    -- op: lshift
                    --when "0011" =>
                       
                    -- op: rshift
                    --when "0100" =>
                    
                    -- oop: atengedes
                   -- when "0101" =>
                       
                    -- op: rotalas
                   -- when "0110" =>
                    
                    -- other case
                    else
                       -- result <= b(7 downto 0);
                end if;            
  
        end process compute;


end Behavioral;










