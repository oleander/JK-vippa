-- Arash Rouhani
-- cid: rarash
-- inlamningsuppgift 3.2

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use work.mypackage.all;

Entity tb2fjr is
port ( testok : OUT STD_LOGIC := 'H');
end Entity;

Architecture tb2fjr_bhv of tb2fjr is
component fjr
    port( 
    clk, reset, j, k : IN std_logic;
    q                : OUT std_logic
        );
end component;

  Signal clk   : STD_LOGIC := '0';
  Signal reset : STD_LOGIC := '1';
  Signal j,k   : STD_LOGIC;
  Signal q     : STD_LOGIC;
begin
  u1  : fjr PORT MAP(
    clk => clk,
    reset => reset,
    j => j,
    k => k,
    q => q
  );

  clk <= not clk after 100 ns;
  reset <= '1', '0' after 425 ns;

  process
  begin


  end process;
end Architecture;

