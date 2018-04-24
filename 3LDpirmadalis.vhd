library ieee;
use ieee.std_logic_1164.all;


-- If you want the most significant bit of your bundle to be on the the first bit on the left you use downto keyword
entity IR is
  port (
    i_bit1    : in  std_logic;
    i_bit2    : in  std_logic;
    i_bit3    : in  std_logic;
	i_bit4    : in  std_logic;
	o_res1    : out std_logic;
	o_res2    : out std_logic;
	o_res3    : out std_logic
    );
end IR;
 
architecture dataflow of IR is
begin
  o_res1 <= (i_bit1 and i_bit2) and ( i_bit3 and i_bit4);
  
  with (i_bit1 and i_bit2) and (i_bit3 and i_bit4) select
  o_res2 <= '1' when '1',
          '0' when '0',
		  '0' when others;
  o_res3 <= '1' when ((i_bit1 and i_bit2) and (i_bit3 and i_bit4)) = '1' else
          '0';
end dataflow;
