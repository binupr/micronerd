package i2s_pkg is
  -- i2s outputs from FPGA
  type t_to_cs4344 is record
    mclk : std_logic;
    lrclk : std_logic;
    sclk : std_logic;
    sd : std_logic;
  end record t_to_cs4344;
end package i2s_pkg;

package body i2s_pkg is
end package body i2s_pkg;
