library ieee;
use ieee.std_logic_1164.all;
 
entity IR is
  port (
    i_bit   : in  std_logic_vector(0 to 1);
    
    o_bit1 : out std_logic_vector(0 to 2)	
    );
end IR;
 
architecture rtl of IR is
begin
  
  o_bit1 <= "001" when (i_bit="00") else
			"100" when (i_bit="01") else
			"101" when (i_bit="10") else
			"110" when (i_bit="11") else
			"000";
  
end rtl;