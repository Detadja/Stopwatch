-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Apr 20 13:55:42 2021
-- Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/denis/Desktop/Proj11/Proj11.gen/sources_1/bd/Req2/ip/Req2_Req2_7seg_0_0/Req2_Req2_7seg_0_0_sim_netlist.vhdl
-- Design      : Req2_Req2_7seg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Req2_Req2_7seg_0_0_Req2_7seg is
  port (
    seg_cat : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Y : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Req2_Req2_7seg_0_0_Req2_7seg : entity is "Req2_7seg";
end Req2_Req2_7seg_0_0_Req2_7seg;

architecture STRUCTURE of Req2_Req2_7seg_0_0_Req2_7seg is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg_cat[4]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_cat[6]_INST_0\ : label is "soft_lutpair0";
begin
\seg_cat[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => Y(3),
      I1 => Y(1),
      I2 => Y(2),
      I3 => Y(0),
      O => seg_cat(0)
    );
\seg_cat[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA5"
    )
        port map (
      I0 => Y(3),
      I1 => Y(0),
      I2 => Y(2),
      I3 => Y(1),
      O => seg_cat(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Req2_Req2_7seg_0_0 is
  port (
    Y : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_cat : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Req2_Req2_7seg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Req2_Req2_7seg_0_0 : entity is "Req2_Req2_7seg_0_0,Req2_7seg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Req2_Req2_7seg_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Req2_Req2_7seg_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Req2_Req2_7seg_0_0 : entity is "Req2_7seg,Vivado 2020.2";
end Req2_Req2_7seg_0_0;

architecture STRUCTURE of Req2_Req2_7seg_0_0 is
begin
inst: entity work.Req2_Req2_7seg_0_0_Req2_7seg
     port map (
      Y(3 downto 0) => Y(3 downto 0),
      seg_cat(1) => seg_cat(6),
      seg_cat(0) => seg_cat(4)
    );
\seg_cat[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => Y(1),
      I1 => Y(0),
      I2 => Y(2),
      I3 => Y(3),
      O => seg_cat(0)
    );
\seg_cat[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => Y(0),
      I1 => Y(1),
      I2 => Y(2),
      I3 => Y(3),
      O => seg_cat(1)
    );
\seg_cat[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Y(2),
      I1 => Y(1),
      I2 => Y(0),
      I3 => Y(3),
      O => seg_cat(2)
    );
\seg_cat[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0094"
    )
        port map (
      I0 => Y(1),
      I1 => Y(0),
      I2 => Y(2),
      I3 => Y(3),
      O => seg_cat(3)
    );
\seg_cat[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008E"
    )
        port map (
      I0 => Y(0),
      I1 => Y(1),
      I2 => Y(2),
      I3 => Y(3),
      O => seg_cat(5)
    );
end STRUCTURE;
