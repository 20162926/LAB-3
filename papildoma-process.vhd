library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic_vector(0 to 1);
  
  signal w_RESULT1 : std_logic_vector(0 to 2);
  
-- naudoti 4ARBA vhd
  component IR is
    port (
      i_bit    : in  std_logic_vector(0 to 1);      
      o_bit1 : out std_logic_vector(0 to 2));
	  
  end component IR;
--behin behave
begin

  and_gate_INST : IR
    port map (
      i_bit    => r_SIG1,      
      o_bit1 => w_RESULT1	  
      );
	  
	  -- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG1 <= "00";    
    wait for 10 ns;
    r_SIG1 <= "01";	
    wait for 10 ns;
    r_SIG1 <= "10";	
    wait for 10 ns;
	r_SIG1 <= "11";	
	wait for 10 ns;
  end process;

end behave;