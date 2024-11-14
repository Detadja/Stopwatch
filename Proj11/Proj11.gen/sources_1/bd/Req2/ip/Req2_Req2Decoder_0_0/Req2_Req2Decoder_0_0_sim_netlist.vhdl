-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Apr 20 19:22:01 2021
-- Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/denis/Desktop/Proj11/Proj11.gen/sources_1/bd/Req2/ip/Req2_Req2Decoder_0_0/Req2_Req2Decoder_0_0_sim_netlist.vhdl
-- Design      : Req2_Req2Decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Req2_Req2Decoder_0_0_Req2Decoder is
  port (
    seg_an : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC;
    I0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Req2_Req2Decoder_0_0_Req2Decoder : entity is "Req2Decoder";
end Req2_Req2Decoder_0_0_Req2Decoder;

architecture STRUCTURE of Req2_Req2Decoder_0_0_Req2Decoder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg_an[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_an[3]_INST_0\ : label is "soft_lutpair0";
begin
\seg_an[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I1,
      I1 => I0,
      O => seg_an(0)
    );
\seg_an[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => I1,
      I1 => I0,
      O => seg_an(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Req2_Req2Decoder_0_0 is
  port (
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    seg_an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Req2_Req2Decoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Req2_Req2Decoder_0_0 : entity is "Req2_Req2Decoder_0_0,Req2Decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Req2_Req2Decoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Req2_Req2Decoder_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Req2_Req2Decoder_0_0 : entity is "Req2Decoder,Vivado 2020.2";
end Req2_Req2Decoder_0_0;

architecture STRUCTURE of Req2_Req2Decoder_0_0 is
begin
inst: entity work.Req2_Req2Decoder_0_0_Req2Decoder
     port map (
      I0 => I0,
      I1 => I1,
      seg_an(1) => seg_an(3),
      seg_an(0) => seg_an(0)
    );
\seg_an[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => I0,
      I1 => I1,
      O => seg_an(1)
    );
\seg_an[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => I1,
      I1 => I0,
      O => seg_an(2)
    );
end STRUCTURE;
