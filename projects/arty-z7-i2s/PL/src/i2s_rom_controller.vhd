------------------------------------------------
-- i2s_rom_controller.vhd
------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


library xil_defaultlib;
use xil_defaultlib.all;

entity i2s_rom_controller is
  generic
  (
    g_data_with : integer := 16
  );
  port
  (
    i_mclk : in std_logic;
    i_sys_rst : in std_logic;
    i_rom_data : in std_logic_vector(g_data_width-1 downto 0);
    i_ready  : in std_logic;
    o_rom_addr  : out std_logic;
    o_tx_data   : out std_logic_vector(((2*g_data_width) -1) downto 0)
  );
end entity i2s_rom_controller;

architecture rtl of i2s_rom_controller is
begin
