------------------------------------------------
-- i2s_tx.vhd
------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


library xil_defaultlib;
use xil_defaultlib.all;

entity i2s_tx is
  generic
  (
    g_data_with : integer := 16
  );
  port
  (
    i_sysclk : in std_logic;
    i_sysrst : in std_logic;
    i_txdata : in std_logic_vector(((2*g_data_width) -1) downto 0);
    o_ready  : out std_logic;
    o_lrclk  : out std_logic;
    o_sclk   : out std_logic;
    o_sd     : out std_logic;
  );
end entity i2s_tx;

architecture rtl of i2s_tx is
begin

end architecture rtl;
