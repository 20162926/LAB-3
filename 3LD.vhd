library ieee;
use ieee.std_logic_1164.all;


-- If you want the most significant bit of your bundle to be on the the first bit on the left you use downto keyword
entity IR is
  port (
    i_bit0    : in  std_logic;
    i_bit1  : in  std_logic;
    i_bit2    : in  std_logic;
	i_bit3    : in std_logic;
	o_bit1 : out std_logic;
	o_bit2 : out std_logic;
	o_bit3 : out std_logic
    );
end IR;
 
architecture rtl of IR is
begin
  o_bit1 <= (i_bit0 and i_bit1) and ( i_bit2 and i_bit3);
  
  o_bit2 <= '1' when ((i_bit0 and  i_bit1) and ( i_bit2 and  i_bit3)) = '1' else
          '0';
		  
  with (i_bit0 and  i_bit1) and ( i_bit2 and  i_bit3) select
  o_bit3 <= '1' when '1',
          '0' when '0',
		  '0' when others;
  
end rtl;
