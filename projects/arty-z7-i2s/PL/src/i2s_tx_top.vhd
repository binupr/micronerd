------------------------------------------------
-- i2s_tx_top.vhd
------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


library xil_defaultlib;
use xil_defaultlib.all;

entity i2s_tx_top is
  generic
  (
    g_m2s_ratio : integer := 8;
    g_data_with : integer := 16
  );
  port
  (
    i_sys_clk : in std_logic;
    i_sys_rst : in std_logic;
    -- CS4344 I2S interface --begin
    o_mclk   : out std_logic;
    o_lrclk  : out std_logic;
    o_sclk   : out std_logic;
    o_sd     : out std_logic;
    -- CS4344 I2S interface --end
    o_led    : out std_logic_vector(3 downto 0)
  );
end entity i2s_tx_top;

architecture struct of i2s_tx_top is


begin

  -------------------------------------------
  -- i2s transmitter block instantiation
  -------------------------------------------
  i_i2s_tx: entity work.i2s_tx
    generic map (
      g_data_with => g_data_width
    )
    port map (
      i_sys_clk => i_sys_clk,
      i_sys_rst => i_sys_rst,
      i_tx_data => s_tx_data,
      o_ready  => s_ready,
      o_lrclk  => o_lrclk,
      o_sclk   => o_sclk,
      o_sd     => o_sd
    );

  -------------------------------------------
  -- i2s rom controller block instantiation
  -------------------------------------------
  i_i2s_rom_controller: entity work.i2s_rom_controller
    generic map (
      g_data_with => g_data_width
    )
    port map (
      i_mclk     => s_mclk,
      i_sys_rst  => i_sys_rst,
      i_rom_data => s_rom_data,
      i_ready    => s_ready,
      o_rom_addr => s_rom_addr,
      o_tx_data  => s_tx_data
    );

    -------------------------------------------
  -- i2s rom block instantiation
  ---------------------------------------------
  i_i2s_rom: entity work.i2s_rom
    port map (
      i_clk => s_mclk,
      i_address => s_rom_addr,
      o_dta => s_rom_data
    );

    

  





)

end architecture struct;