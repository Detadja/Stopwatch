-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Apr 21 07:18:19 2021
-- Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/denis/Desktop/Proj11/Proj11.gen/sources_1/bd/Req2/ip/Req2_Req2FSM_0_0/Req2_Req2FSM_0_0_sim_netlist.vhdl
-- Design      : Req2_Req2FSM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Req2_Req2FSM_0_0_Req2FSM is
  port (
    Cen : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    inc : in STD_LOGIC;
    start : in STD_LOGIC;
    stop : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Req2_Req2FSM_0_0_Req2FSM : entity is "Req2FSM";
end Req2_Req2FSM_0_0_Req2FSM;

architecture STRUCTURE of Req2_Req2FSM_0_0_Req2FSM is
  signal \nState__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pState : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_pState[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_pState[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_pState_reg[0]\ : label is "S1:01,S2:11,S0:00,S3:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_pState_reg[1]\ : label is "S1:01,S2:11,S0:00,S3:10";
begin
Cen_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pState(0),
      I1 => pState(1),
      O => Cen
    );
\FSM_sequential_pState[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0FCAFFC"
    )
        port map (
      I0 => inc,
      I1 => start,
      I2 => pState(1),
      I3 => pState(0),
      I4 => stop,
      O => \nState__0\(0)
    );
\FSM_sequential_pState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0BA"
    )
        port map (
      I0 => pState(1),
      I1 => start,
      I2 => inc,
      I3 => pState(0),
      O => \nState__0\(1)
    );
\FSM_sequential_pState_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \nState__0\(0),
      Q => pState(0)
    );
\FSM_sequential_pState_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \nState__0\(1),
      Q => pState(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Req2_Req2FSM_0_0 is
  port (
    start : in STD_LOGIC;
    stop : in STD_LOGIC;
    inc : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Cen : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Req2_Req2FSM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Req2_Req2FSM_0_0 : entity is "Req2_Req2FSM_0_0,Req2FSM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Req2_Req2FSM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Req2_Req2FSM_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Req2_Req2FSM_0_0 : entity is "Req2FSM,Vivado 2020.2";
end Req2_Req2FSM_0_0;

architecture STRUCTURE of Req2_Req2FSM_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.Req2_Req2FSM_0_0_Req2FSM
     port map (
      Cen => Cen,
      clk => clk,
      inc => inc,
      rst => rst,
      start => start,
      stop => stop
    );
end STRUCTURE;
