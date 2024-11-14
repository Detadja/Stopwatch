-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Apr 20 19:34:24 2021
-- Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/denis/Desktop/Proj11/Proj11.gen/sources_1/bd/Req2/ip/Req2_Req2Counter_0_2/Req2_Req2Counter_0_2_sim_netlist.vhdl
-- Design      : Req2_Req2Counter_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Req2_Req2Counter_0_2_Req2Counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Tc : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Cen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Req2_Req2Counter_0_2_Req2Counter : entity is "Req2Counter";
end Req2_Req2Counter_0_2_Req2Counter;

architecture STRUCTURE of Req2_Req2Counter_0_2_Req2Counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Y[0]_i_1_n_0\ : STD_LOGIC;
  signal \Y[1]_i_1_n_0\ : STD_LOGIC;
  signal \Y[2]_i_1_n_0\ : STD_LOGIC;
  signal \Y[3]_i_1_n_0\ : STD_LOGIC;
  signal \Y[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Tc__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Y[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Y[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Y[3]_i_2\ : label is "soft_lutpair0";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\Tc__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(1),
      O => Tc
    );
\Y[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F07"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \Y[0]_i_1_n_0\
    );
\Y[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A52"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \Y[1]_i_1_n_0\
    );
\Y[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \Y[2]_i_1_n_0\
    );
\Y[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => Cen,
      O => \Y[3]_i_1_n_0\
    );
\Y[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \Y[3]_i_2_n_0\
    );
\Y_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Y[3]_i_1_n_0\,
      CLR => rst,
      D => \Y[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\Y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Y[3]_i_1_n_0\,
      CLR => rst,
      D => \Y[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\Y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Y[3]_i_1_n_0\,
      CLR => rst,
      D => \Y[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\Y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Y[3]_i_1_n_0\,
      CLR => rst,
      D => \Y[3]_i_2_n_0\,
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Req2_Req2Counter_0_2 is
  port (
    Cen : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Tc : out STD_LOGIC;
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Req2_Req2Counter_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Req2_Req2Counter_0_2 : entity is "Req2_Req2Counter_0_2,Req2Counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Req2_Req2Counter_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Req2_Req2Counter_0_2 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Req2_Req2Counter_0_2 : entity is "Req2Counter,Vivado 2020.2";
end Req2_Req2Counter_0_2;

architecture STRUCTURE of Req2_Req2Counter_0_2 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.Req2_Req2Counter_0_2_Req2Counter
     port map (
      Cen => Cen,
      Q(3 downto 0) => Y(3 downto 0),
      Tc => Tc,
      clk => clk,
      rst => rst
    );
end STRUCTURE;
