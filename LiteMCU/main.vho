-- VHDL netlist for main
-- Date: Wed Jul 10 10:13:31 2013
-- Copyright (c) Lattice Semiconductor Corporation
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND5_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND5_main;

ARCHITECTURE behav OF PGAND5_main IS 
BEGIN

    PROCESS (A4, A3, A2, A1, 
		A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A4 AND A3 AND A2 AND 
            A1 AND A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGORF72_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGORF72_main;

ARCHITECTURE behav OF PGORF72_main IS 
BEGIN

    PROCESS (A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A1 OR A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGORF76_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGORF76_main;

ARCHITECTURE behav OF PGORF76_main IS 
BEGIN

    PROCESS (A5, A4, A3, A2, 
		A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A5 OR A4 OR A3 OR 
            A2 OR A1 OR A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGORF74_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGORF74_main;

ARCHITECTURE behav OF PGORF74_main IS 
BEGIN

    PROCESS (A3, A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A3 OR A2 OR A1 OR 
            A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGBUFI_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGBUFI_main;

ARCHITECTURE behav OF PGBUFI_main IS 
BEGIN

    PROCESS (A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF :=  A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGXOR2_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGXOR2_main;

ARCHITECTURE behav OF PGXOR2_main IS 
BEGIN

    PROCESS (A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A1 XOR A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGINVI_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A0 : IN std_logic;
        ZN0 : OUT std_logic
    );
END PGINVI_main;

ARCHITECTURE behav OF PGINVI_main IS 
BEGIN

    PROCESS (A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := NOT A0;
        if ZDF ='1' then
            ZN0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            ZN0 <= transport ZDF after TFALL;
        else
            ZN0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND2_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND2_main;

ARCHITECTURE behav OF PGAND2_main IS 
BEGIN

    PROCESS (A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A1 AND A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGDFFR_main IS 
    GENERIC (
        HLCQ : TIME := 1 ns;
        LHCQ : TIME := 1 ns;
        HLRQ : TIME := 1 ns;
        SUD0 : TIME := 0 ns;
        SUD1 : TIME := 0 ns;
        HOLDD0 : TIME := 0 ns;
        HOLDD1 : TIME := 0 ns;
        POSC1 : TIME := 0 ns;
        POSC0 : TIME := 0 ns;
        NEGC1 : TIME := 0 ns;
        NEGC0 : TIME := 0 ns;
        RECRC : TIME := 0 ns;
        HOLDRC : TIME := 0 ns
    );
    PORT (
        RNESET : IN std_logic;
        CD : IN std_logic;
        CLK : IN std_logic;
        D0 : IN std_logic;
        Q0 : OUT std_logic
    );
END PGDFFR_main;

ARCHITECTURE behav OF PGDFFR_main IS 
BEGIN

    PROCESS (RNESET, CD, CLK, D0)
	variable iQ0 : std_logic;
	variable pQ0 : std_logic;

	begin

		if (CD OR NOT (RNESET)) = '1' then
			if NOT (iQ0='0') then
			  iQ0 := '0';
			  Q0 <= transport iQ0  after HLRQ;
			end if;
		elsif (CD OR NOT (RNESET)) = '0' AND CLK= '1' AND CLK'EVENT then
			pQ0 := iQ0;
			if (D0'EVENT) then
				iQ0 := D0'LAST_VALUE;
			elsif NOT (D0'EVENT) then
				iQ0 := D0;
			end if;
      if pQ0 = iQ0 then 
         Q0 <= transport iQ0;
      elsif iQ0 = '1' then Q0 <= transport iQ0 after LHCQ;
      elsif iQ0 = '0' then Q0 <= transport iQ0 after HLCQ;
      else
          Q0 <= transport iQ0;
      end if;
		end if;
    END PROCESS;

	process(CLK, CD)
	 begin
		if CD'EVENT AND CD='0' AND CLK='1' then
			assert (CLK'LAST_EVENT >= HOLDRC) 
			report("HOLD TIME VIOLAION ON CD (HOLDRC)  ")
            severity WARNING;
		end if;
		if CLK'EVENT  AND CLK ='1' AND CD ='0' then
			assert ( CD'LAST_EVENT >= RECRC) 
			report("RECOVERY TIME VIOLATION on CD(RECRC) ")
            severity WARNING;
		end if;
	end process;

	process(CLK,RNESET)
	 begin
		if RNESET'EVENT AND NOT(RNESET)='0' AND CLK='1' then
			assert (CLK'LAST_EVENT >= HOLDRC) 
			report("HOLD TIME VIOLAION ON RNESET (HOLDRC)  ")
            severity WARNING;
		end if;
		if CLK'EVENT  AND CLK ='1' AND NOT(RNESET) ='0' then
			assert ( RNESET'LAST_EVENT >= RECRC) 
			report("RECOVERY TIME VIOLATION on RNESET(RECRC) ")
            severity WARNING;
		end if;
	end process;

	process(D0, CLK)

	variable R_EDGE1 : TIME := 0 ns;
	variable R_EDGE0 : TIME := 0 ns;
	variable F_EDGE1 : TIME := 0 ns;
	variable F_EDGE0 : TIME := 0 ns;

	begin
		if CLK='1' AND CLK'LAST_VALUE='0' AND NOT(D0'EVENT) then
		   if D0='1' then
			R_EDGE1 := NOW;
			assert((R_EDGE1-F_EDGE1) >= NEGC1) 
			report("NEGATIVE PULSE WIDTH VIOLATION (NEGC1) ON CLK at ")
            severity WARNING;
			elsif D0='0' then
			 R_EDGE0 := NOW;
			 assert((R_EDGE0-F_EDGE0) >= NEGC0) 
			 report("NEGATIVE PULSE WIDTH VIOLATION (NEGC0) ON CLK at ")
             severity WARNING;
			end if;
		end if;

		if CLK ='0' AND CLK'LAST_VALUE = '1' AND NOT(D0'EVENT) then
			if D0='1' then
			  F_EDGE1 := NOW;
			  assert ((F_EDGE1-R_EDGE1) >= POSC1) 
			  report("POSITIVE PULSE WIDTH VIOLATION (POSC1) ON CLK at ")
              severity WARNING;
			elsif D0='0' then
			  F_EDGE0 := NOW;
			  assert ((F_EDGE0-R_EDGE0) >= POSC0) 
			  report("POSITIVE PULSE WIDTH VIOLATION (POSC0) ON CLK at ")
              severity WARNING;
			end if;
		end if;

	end process;

	process(D0, CLK)

	begin
		if CLK = '1' AND CLK'EVENT then 
			if D0='1' then
               assert(D0'LAST_EVENT >= SUD1) 
 			   report("DATA SET-UP VIOLATION (SUD1) ")
               severity WARNING;
			elsif D0='0' then
               assert(D0'LAST_EVENT >= SUD0) 
 			   report("DATA SET-UP VIOLATION (SUD0) ")
               severity WARNING;
			end if;
		end if;

		if CLK='1' AND D0'EVENT then 
			if D0'LAST_VALUE ='1' then
			   assert(CLK'LAST_EVENT >= HOLDD1)
			   report("DATA HOLD VIOLATION (HOLDD1) ")
               severity WARNING;
			elsif D0'LAST_VALUE='0' then
			   assert(CLK'LAST_EVENT >= HOLDD0)
			   report("DATA HOLD VIOLATION (HOLDD0) ")
               severity WARNING;
			end if;
		end if;

	end process;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND6_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND6_main;

ARCHITECTURE behav OF PGAND6_main IS 
BEGIN

    PROCESS (A5, A4, A3, A2, 
		A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A5 AND A4 AND A3 AND 
            A2 AND A1 AND A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND3_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND3_main;

ARCHITECTURE behav OF PGAND3_main IS 
BEGIN

    PROCESS (A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A2 AND A1 AND A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGORF73_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGORF73_main;

ARCHITECTURE behav OF PGORF73_main IS 
BEGIN

    PROCESS (A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A2 OR A1 OR A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND4_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND4_main;

ARCHITECTURE behav OF PGAND4_main IS 
BEGIN

    PROCESS (A3, A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A3 AND A2 AND A1 AND 
            A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGORF77_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A6 : IN std_logic;
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGORF77_main;

ARCHITECTURE behav OF PGORF77_main IS 
BEGIN

    PROCESS (A6, A5, A4, A3, 
		A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A6 OR A5 OR A4 OR 
            A3 OR A2 OR A1 OR A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND7_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A6 : IN std_logic;
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND7_main;

ARCHITECTURE behav OF PGAND7_main IS 
BEGIN

    PROCESS (A6, A5, A4, A3, 
		A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A6 AND A5 AND A4 AND 
            A3 AND A2 AND A1 AND A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGORF75_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGORF75_main;

ARCHITECTURE behav OF PGORF75_main IS 
BEGIN

    PROCESS (A4, A3, A2, A1, 
		A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A4 OR A3 OR A2 OR 
            A1 OR A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND10_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A9 : IN std_logic;
        A8 : IN std_logic;
        A7 : IN std_logic;
        A6 : IN std_logic;
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND10_main;

ARCHITECTURE behav OF PGAND10_main IS 
BEGIN

    PROCESS (A9, A8, A7, A6, 
		A5, A4, A3, A2, 
		A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A9 AND A8 AND A7 AND 
            A6 AND A5 AND A4 AND A3 AND 
            A2 AND A1 AND A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND9_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A8 : IN std_logic;
        A7 : IN std_logic;
        A6 : IN std_logic;
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND9_main;

ARCHITECTURE behav OF PGAND9_main IS 
BEGIN

    PROCESS (A8, A7, A6, A5, 
		A4, A3, A2, A1, 
		A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A8 AND A7 AND A6 AND 
            A5 AND A4 AND A3 AND A2 AND 
            A1 AND A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND8_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A7 : IN std_logic;
        A6 : IN std_logic;
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND8_main;

ARCHITECTURE behav OF PGAND8_main IS 
BEGIN

    PROCESS (A7, A6, A5, A4, 
		A3, A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A7 AND A6 AND A5 AND 
            A4 AND A3 AND A2 AND A1 AND 
            A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PXIN_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        XI0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PXIN_main;

ARCHITECTURE behav OF PXIN_main IS 
BEGIN

    PROCESS (XI0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF :=  XI0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PXOUT_main IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A0 : IN std_logic;
        XO0 : OUT std_logic
    );
END PXOUT_main;

ARCHITECTURE behav OF PXOUT_main IS 
BEGIN

    PROCESS (A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF :=  A0;
        if ZDF ='1' then
            XO0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            XO0 <= transport ZDF after TFALL;
        else
            XO0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE work.all;

ENTITY main IS 
    PORT (
        XRESET : IN std_logic;
        RE_PRGM : IN std_logic;
        RE_CPU : IN std_logic;
        PRGM : IN std_logic;
        EN : IN std_logic;
        DI3 : IN std_logic;
        DI2 : IN std_logic;
        DI1 : IN std_logic;
        DI0 : IN std_logic;
        CLK : IN std_logic;
        P03 : OUT std_logic;
        P02 : OUT std_logic;
        P01 : OUT std_logic;
        P00 : OUT std_logic
    );
END main;


ARCHITECTURE main_STRUCTURE OF main IS
SIGNAL GND : std_logic := '0';
SIGNAL  N_41_grpi, D0_N_100_grpi, D0_N_101_grpi, D0_N_102_grpi,
	 D0_N_104_grpi, D0_N_105_grpi, D0_N_106_grpi, D0_N_113_grpi,
	 D0_N_127_grpi, D0_N_49_grpi, D0_N_50_grpi, N_37_grpi,
	 N_38_part2_grpi, N_39_grpi, N_40_grpi, F0_N_7_grpi,
	 F0_N_6_grpi, D0_N_42_grpi, D0_N_31_grpi, D0_N_18_grpi,
	 D0_N_7_grpi, D0_N_35_grpi, D0_N_11_grpi, N_40_C_grpi,
	 P0_N_176_grpi, P0_N_177_grpi, P0_N_178_grpi, P0_N_179_grpi,
	 P0_N_195_grpi, P0_N_212_grpi, P0_N_214_grpi, AND_1372_grpi,
	 OR_871_grpi, OR_872_grpi, D0_N_5_grpi, D0_N_37_grpi,
	 D0_N_13_grpi, D0_N_8_grpi, D0_N_34_grpi, D0_N_10_grpi,
	 P0_N_218_grpi, P0_N_217_grpi, P0_N_216_grpi, OR_1393_grpi,
	 OR_1395_grpi, OR_1397_grpi, P0_N_174_grpi, P0_N_175_part2_grpi,
	 P0_N_180_grpi, P0_N_181_grpi, D0_N_116_C_ck2f, D0_N_2_grpi,
	 P0_N_175_part1_grpi, OR_1392_grpi, D0_N_3_grpi, D0_N_115_grpi,
	 D0_N_12_grpi, D0_N_14_grpi, D0_N_15_grpi, D0_N_16_grpi,
	 D0_N_99_grpi, N_38_part1_grpi, D0_N_3_C_ck1f, P0_N_181_C_grpi,
	 P0_N_238_grpi, P0_N_239_grpi, P0_N_240_grpi, D0_N_39_grpi,
	 OR_1394_grpi, D0_N_114_grpi, D0_N_36_grpi, D0_N_38_grpi,
	 D0_N_40_grpi, D0_N_41_grpi, P0_N_177_C_grpi, OR_1401_grpi,
	 OR_1400_grpi, OR_1396_grpi, D0_N_116_grpi, D0_N_4_grpi,
	 D0_N_6_grpi, D0_N_98_grpi, L2L_KEYWD_RESETb, IO51_IBUFO,
	 IO3_IBUFO, IO18_IBUFO, IO53_IBUFO, IO39_IBUFO,
	 IO38_IBUFO, IO22_IBUFO, IO15_IBUFO, IO47_IBUFO,
	 IO16_OBUFI, P03_PIN_iomux, IO20_OBUFI, P02_PIN_iomux,
	 IO50_OBUFI, P01_PIN_iomux, IO17_OBUFI, P00_PIN_iomux,
	 N_41, A0_X0O, A0_G3, A0_F5,
	 A0_F0, A0_P19, A0_IN5, A0_P18,
	 A0_IN1, A0_P17, A0_IN13, A0_P16,
	 A0_IN12, A0_P15, A0_IN6, A0_P14,
	 A0_IN0, A0_IN2, A0_P3, A0_IN7,
	 A0_P2, A0_IN3, A0_IN9B, A0_P1,
	 A0_IN4, A0_IN10B, A0_IN11, A0_P0,
	 A0_IN0B, A0_IN4B, A0_IN9, A0_IN10,
	 A0_IN14, F0_N_6, F0_N_7, A1_CD,
	 A1_CLK, A1_CLKP, A1_P13_xa, A1_X0O,
	 A1_G3, A1_F2, A1_P19, A1_IN3,
	 A1_P13, A1_P12, A1_IN5, A1_IN11,
	 A1_P11, A1_IN16, A1_IN17B, F0_N_6_ffb,
	 F0_N_7_ffb, A1_P10, A1_IN16B, A1_IN17,
	 D0_N_18, D0_N_31, D0_N_50, D0_N_42,
	 A2_CD, A2_CLKP, A2_P0_xa, A2_X3O,
	 A2_P4_xa, A2_X2O, A2_P8_xa, A2_X1O,
	 A2_P13_xa, A2_X0O, A2_G3, A2_G2,
	 A2_G1, A2_G0, A2_P19, A2_IN3,
	 A2_P13, A2_IN13, A2_P12, A2_IN0,
	 A2_IN1B, A2_IN2, A2_IN4B, A2_IN9,
	 A2_IN11, A2_P8, A2_IN7, A2_P4,
	 A2_IN15, A2_P0, A2_IN6, D0_N_35,
	 D0_N_11, D0_N_105, D0_N_7, A3_CD,
	 A3_CLKP, A3_P0_xa, A3_X3O, A3_P4_xa,
	 A3_X2O, A3_P8_xa, A3_X1O, A3_P13_xa,
	 A3_X0O, A3_G3, A3_G2, A3_G1,
	 A3_G0, A3_P19, A3_IN3, A3_P13,
	 A3_IN15, A3_P12, A3_IN0B, A3_IN1,
	 A3_IN2, A3_IN4B, A3_IN9B, A3_IN11,
	 A3_P8, A3_IN7, A3_P4, A3_IN6,
	 A3_P0, A3_IN13, N_37, A4_CD,
	 A4_CLKP, A4_X0O, A4_G3, A4_F5,
	 A4_F4, A4_F1, A4_F0, A4_P19,
	 A4_IN7, A4_P16, A4_P15, A4_P14,
	 A4_IN11B, A4_IN13B, A4_P12, A4_IN3,
	 A4_P11, A4_P10, A4_P9, A4_IN5,
	 A4_P8, A4_IN9, A4_IN10, A4_P7,
	 A4_IN1, A4_IN2, A4_IN4, A4_IN16B,
	 A4_P6, A4_IN8, A4_P5, A4_IN6B,
	 A4_IN13, A4_P4, A4_IN0, A4_IN5B,
	 A4_IN6, A4_IN8B, A4_IN9B, A4_P3,
	 A4_IN0B, A4_IN12, A4_IN15, A4_P2,
	 A4_IN2B, A4_P1, A4_IN1B, N_37_ffb,
	 A4_P0, A4_IN4B, A4_IN12B, A4_IN16,
	 D0_N_127, D0_N_13, D0_N_37, D0_N_5,
	 A5_CD, A5_CLKP, A5_P0_xa, A5_X3O,
	 A5_P4_xa, A5_X2O, A5_P8_xa, A5_X1O,
	 A5_P13_xa, A5_X0O, A5_G3, A5_G2,
	 A5_G1, A5_G0, A5_P19, A5_IN3,
	 A5_P13, A5_IN15, A5_P12, A5_IN0B,
	 A5_IN1B, A5_IN2, A5_IN4, A5_IN9B,
	 A5_IN11, A5_P8, A5_IN13, A5_P4,
	 A5_IN6, A5_P0, A5_IN7, D0_N_10,
	 D0_N_106, D0_N_34, D0_N_8, A6_CD,
	 A6_CLKP, A6_P0_xa, A6_X3O, A6_P4_xa,
	 A6_X2O, A6_P8_xa, A6_X1O, A6_P13_xa,
	 A6_X0O, A6_G3, A6_G2, A6_G1,
	 A6_G0, A6_P19, A6_IN3, A6_P13,
	 A6_IN15, A6_P12, A6_IN0B, A6_IN1B,
	 A6_IN2, A6_IN4B, A6_IN9, A6_IN11,
	 A6_P8, A6_IN13, A6_P4, A6_IN7,
	 A6_P0, A6_IN6, P0_N_214, P0_N_216,
	 P0_N_217, P0_N_218, A7_CD, A7_CLKP,
	 A7_P0_xa, A7_X3O, A7_P4_xa, A7_X2O,
	 A7_P8_xa, A7_X1O, A7_P13_xa, A7_X0O,
	 A7_G3, A7_G2, A7_G1, A7_G0,
	 A7_P19, A7_IN3, A7_P13, A7_IN4,
	 A7_P12, A7_IN5, A7_IN11, A7_IN14,
	 A7_IN15B, A7_P8, A7_IN8, A7_P4,
	 A7_IN12, A7_P0, A7_IN0, D0_N_113,
	 B0_CD, B0_CLK, B0_P8_xa, B0_X1O,
	 P03_PIN, B0_X0O, B0_G3, B0_G2,
	 B0_F5, B0_F4, B0_F1, B0_F0,
	 B0_P19, B0_P18, B0_P17, B0_P16,
	 B0_P15, B0_P14, B0_P13, B0_P12,
	 B0_IN3, B0_P11, B0_P10, B0_P9,
	 B0_IN4, B0_IN10, B0_P8, B0_IN7,
	 B0_P7, B0_P6, B0_IN0B, B0_IN13B,
	 B0_P5, B0_IN9, B0_P4, B0_IN2,
	 B0_IN5, B0_IN8, B0_P3, B0_P2,
	 B0_IN13, B0_P1, B0_IN6, B0_IN12B,
	 B0_P0, B0_IN5B, B0_IN6B, B0_IN9B,
	 B0_IN12, D0_N_100, D0_N_2, B1_CD,
	 B1_CLKP, B1_P0_xa, B1_X3O, B1_P8_xa,
	 B1_X1O, B1_G2, B1_G0, B1_P19,
	 B1_IN3, B1_P12, B1_IN0B, B1_IN1,
	 B1_IN2, B1_IN4, B1_IN6, B1_IN11,
	 B1_P8, B1_IN15, B1_P0, B1_IN7,
	 OR_872, B2_X3O, OR_871, B2_X2O,
	 P02_PIN, B2_X0O, B2_G3, B2_G1,
	 B2_G0, B2_F5, P00_PIN, B2_F1,
	 B2_F0, B2_P16, B2_P15, B2_P14,
	 B2_P11, B2_IN10B, B2_P10, B2_IN4B,
	 B2_P7, B2_P6, B2_P5, B2_P4,
	 B2_IN4, B2_IN10, B2_P3, B2_IN13,
	 B2_P2, B2_IN9, OR_872_ffb, B2_P1,
	 B2_IN5, B2_IN13B, B2_IN17B, B2_P0,
	 B2_IN0, B2_IN2, B2_IN5B, B2_IN9B,
	 D0_N_3, B3_CD, B3_CLK, B3_P8_xa,
	 B3_X1O, OR_1392, B3_X0O, B3_G3,
	 B3_G2, B3_F5, B3_F0, B3_P19,
	 B3_IN2, B3_P18, B3_IN8, B3_P17,
	 B3_IN13, B3_P16, B3_IN6, B3_IN7,
	 B3_P15, B3_IN11, B3_P14, B3_IN4,
	 B3_IN14, B3_P12, B3_IN3, B3_P8,
	 B3_IN15, B3_P3, B3_IN0, B3_P2,
	 B3_IN10, B3_P1, B3_IN1B, B3_IN5,
	 B3_IN9B, B3_P0, B3_IN1, B3_IN4B,
	 B3_IN7B, B3_IN9, B3_IN12, P0_N_180,
	 B4_CD, B4_CLKP, B4_X2MO, B4_X2O,
	 P0_N_181_C, B4_X1O, P0_N_212, B4_X0O,
	 B4_G3, B4_G2, B4_G1, B4_G0,
	 B4_F5, B4_F4, B4_F1, B4_F0,
	 B4_P19, B4_IN7, B4_P17, B4_P16,
	 B4_P15, B4_IN3, B4_IN9, B4_P14,
	 B4_P13, P0_N_181_C_ffb, B4_P12, B4_IN16,
	 B4_P11, B4_IN2, B4_P10, B4_IN4B,
	 B4_IN5, B4_IN11, B4_IN14B, B4_P7,
	 B4_P6, B4_P3, B4_IN1, B4_IN10,
	 B4_IN15, B4_P2, B4_IN0B, B4_IN17,
	 P0_N_180_ffb, B4_P1, B4_IN0, B4_IN1B,
	 B4_IN2B, B4_IN3B, B4_IN17B, D0_N_39,
	 B5_CD, B5_CLK, B5_P8_xa, B5_X1O,
	 B5_G2, B5_P12, B5_IN3, B5_P8,
	 B5_IN6, D0_N_101, B6_CD, B6_CLK,
	 OR_1394, B6_X3O, B6_P13_xa, B6_X0O,
	 B6_G3, B6_G0, B6_F5, B6_F0,
	 B6_P19, B6_IN14, B6_P18, B6_IN13,
	 B6_P17, B6_IN5, B6_P16, B6_IN0,
	 B6_IN15, B6_P15, B6_IN3, B6_P14,
	 B6_IN4, B6_IN8, B6_P13, B6_IN12,
	 B6_P12, B6_IN7, B6_P3, B6_IN1,
	 B6_P2, B6_IN2, B6_IN10B, B6_P1,
	 B6_IN9B, B6_IN11, B6_P0, B6_IN4B,
	 B6_IN6, B6_IN9, B6_IN10, B6_IN15B,
	 P0_N_174, P0_N_176, P0_N_177, B7_CD,
	 B7_CLKP, B7_X2O, B7_X1O, B7_P13_xa,
	 B7_X0O, B7_G3, B7_G2, B7_G1,
	 B7_F5, B7_F4, B7_F1, B7_F0,
	 B7_P19, B7_IN7, B7_P18, B7_P17,
	 B7_P16, B7_P15, B7_P14, B7_IN5B,
	 B7_IN16B, B7_P13, B7_IN12, B7_P12,
	 B7_IN9, B7_P11, B7_P10, B7_IN2B,
	 B7_IN3B, B7_P7, B7_IN2, B7_P6,
	 B7_IN1B, B7_IN3, B7_IN8, B7_P5,
	 B7_IN15, B7_IN17B, P0_N_174_ffb, B7_P4,
	 B7_IN1, B7_IN15B, B7_IN17, B7_P3,
	 B7_IN4B, B7_IN10, B7_P2, B7_IN0,
	 B7_IN6, B7_IN13, P0_N_176_ffb, B7_P1,
	 B7_IN16, B7_P0, B7_IN4, B7_IN5,
	 B7_IN11B, B7_IN13B, D0_N_41, D0_N_49,
	 C0_CD, C0_CLKP, C0_P0_xa, C0_X3O,
	 C0_P4_xa, C0_X2O, C0_P8_xa, D0_N_116_C,
	 C0_X1O, C0_P13_xa, D0_N_3_C, C0_X0O,
	 C0_G3, C0_G2, C0_G1, C0_G0,
	 C0_P19, C0_IN12, C0_P13, C0_IN11,
	 C0_IN14, C0_P12, C0_IN15, C0_P8,
	 C0_IN4, C0_IN9, C0_IN11B, C0_IN13B,
	 C0_IN14B, C0_IN15B, C0_P4, C0_IN8,
	 C0_P0, C0_IN2, P0_N_178, P0_N_179,
	 P0_N_181, C1_CD, C1_CLKP, C1_P4_xa,
	 C1_X2O, C1_X1O, C1_X0O, C1_G3,
	 C1_G2, C1_G1, C1_F5, C1_F4,
	 C1_F1, C1_F0, C1_P19, C1_IN8,
	 C1_P18, C1_P17, C1_P16, C1_P15,
	 C1_P14, C1_IN6B, C1_IN16B, C1_P12,
	 C1_IN10, C1_P11, C1_P10, C1_P9,
	 C1_IN0B, C1_IN5, C1_IN7B, C1_IN13B,
	 C1_P7, C1_IN13, C1_P6, C1_IN3,
	 C1_IN7, C1_IN14B, C1_P5, C1_IN0,
	 C1_IN5B, C1_IN14, C1_P4, C1_IN11,
	 C1_P3, C1_IN1, C1_IN15B, C1_P2,
	 C1_IN2, C1_IN9, C1_IN12, C1_P1,
	 C1_IN6, P0_N_179_ffb, C1_P0, C1_IN2B,
	 C1_IN4B, C1_IN15, C1_IN16, N_39,
	 N_40, C2_CD, C2_CLKP, C2_X2MO,
	 C2_X2O, C2_P8_xa, C2_X1O, N_40_C,
	 C2_X0O, C2_G3, C2_G2, C2_G1,
	 C2_G0, C2_F5, C2_F4, C2_F1,
	 C2_F0, C2_P19, C2_IN8, C2_P17,
	 C2_P16, C2_IN4B, C2_P15, C2_IN9,
	 C2_IN10B, C2_P14, C2_IN11, C2_P13,
	 C2_IN1, C2_P12, C2_IN12, C2_P11,
	 C2_IN16B, C2_P10, C2_P8, C2_IN3B,
	 C2_P7, C2_P6, C2_IN3, C2_P3,
	 N_39_ffb, C2_P2, C2_IN16, C2_P1,
	 C2_IN6, C2_IN17B, N_40_ffb, C2_P0,
	 C2_IN1B, C2_IN4, C2_IN6B, C2_IN7,
	 C2_IN9B, C2_IN10, C2_IN11B, C2_IN13B,
	 C2_IN14B, C2_IN17, C3_P8_xa, AND_1372,
	 C3_X1O, OR_1401, C3_X0O, C3_G3,
	 C3_G2, C3_F5, C3_F4, C3_F1,
	 C3_F0, C3_P19, C3_P18, C3_P17,
	 C3_P16, C3_P15, C3_P14, C3_P13,
	 C3_P12, C3_P11, C3_P10, C3_P9,
	 C3_IN5, C3_IN11, C3_P8, C3_IN10,
	 C3_P7, C3_P6, C3_P5, C3_IN4B,
	 C3_IN16B, C3_P4, C3_IN6, C3_IN12,
	 C3_IN13, C3_P3, C3_IN0, C3_IN15B,
	 C3_P2, C3_IN7, AND_1372_ffb, C3_P1,
	 C3_IN9B, C3_IN16, C3_P0, C3_IN6B,
	 C3_IN7B, C3_IN9, C3_IN10B, C3_IN15,
	 OR_1400, C4_X0O, C4_G3, C4_F5,
	 C4_F4, C4_F1, C4_F0, C4_P18,
	 C4_P17, C4_P16, C4_P15, C4_P14,
	 C4_P13, C4_P12, C4_P11, C4_P10,
	 C4_IN10, C4_P9, C4_P8, C4_IN5,
	 C4_IN11, C4_P7, C4_P6, C4_P5,
	 C4_IN2B, C4_IN4B, C4_P4, C4_IN6,
	 C4_IN12, C4_IN13, C4_P3, C4_IN0,
	 C4_IN15B, C4_P2, C4_IN7, C4_P1,
	 C4_IN2, C4_IN9B, C4_P0, C4_IN6B,
	 C4_IN7B, C4_IN9, C4_IN10B, C4_IN15,
	 D0_N_115, C5_CD, C5_CLK, C5_P8_xa,
	 C5_X1O, OR_1396, C5_X0O, C5_G3,
	 C5_G2, C5_F5, C5_F0, C5_P19,
	 C5_IN0, C5_P18, C5_IN11, C5_P17,
	 C5_IN1, C5_P16, C5_IN7, C5_P15,
	 C5_IN12, C5_P14, C5_IN4, C5_P12,
	 C5_IN8, C5_P8, C5_IN9, C5_P3,
	 C5_IN6, C5_P2, C5_IN10, C5_P1,
	 C5_IN2, C5_IN3, C5_IN5, C5_IN13B,
	 C5_IN15B, C5_P0, C5_IN3B, C5_IN5B,
	 C5_IN13, C5_IN14, C5_IN15, P0_N_175_part1,
	 P0_N_175_part2, C6_CD, C6_CLKP, C6_X3MO,
	 C6_X3O, C6_X0MO, C6_X0O, C6_G3,
	 C6_G2, C6_G0, C6_F5, C6_F0,
	 C6_P19, C6_IN8, C6_P18, C6_IN13,
	 C6_P17, C6_IN2, C6_IN12, C6_P16,
	 C6_IN11B, C6_P15, C6_P14, C6_IN5B,
	 C6_P13, C6_IN5, C6_IN11, C6_P12,
	 C6_IN6, C6_P3, C6_IN9, C6_IN16B,
	 P0_N_175_part2_ffb, C6_P2, C6_IN14, C6_IN16,
	 C6_P1, C6_IN9B, C6_IN12B, C6_IN13B,
	 C6_IN14B, D0_N_116, C7_CD, C7_CLK,
	 C7_P8_xa, C7_X1O, OR_1395, C7_X0O,
	 C7_G3, C7_G2, C7_F5, C7_F0,
	 C7_P19, C7_IN1, C7_P18, C7_IN2,
	 C7_P17, C7_IN10, C7_P16, C7_IN3,
	 C7_IN15, C7_P15, C7_IN12, C7_P14,
	 C7_IN7, C7_IN11, C7_P12, C7_IN8,
	 C7_P8, C7_IN0, C7_P3, C7_IN14,
	 C7_P2, C7_IN5B, C7_IN13, C7_P1,
	 C7_IN4, C7_IN6B, C7_P0, C7_IN3B,
	 C7_IN5, C7_IN6, C7_IN9, C7_IN11B,
	 D0_N_114, D0_CD, D0_CLK, D0_P8_xa,
	 D0_X1O, OR_1397, D0_X0O, D0_G3,
	 D0_G2, D0_F5, D0_F0, D0_P19,
	 D0_IN0, D0_P18, D0_IN11, D0_P17,
	 D0_IN1, D0_P16, D0_IN7, D0_P15,
	 D0_IN12, D0_P14, D0_IN4, D0_P12,
	 D0_IN8, D0_P8, D0_IN9, D0_P3,
	 D0_IN6, D0_P2, D0_IN10, D0_P1,
	 D0_IN2, D0_IN3, D0_IN5, D0_IN13B,
	 D0_IN15B, D0_P0, D0_IN3B, D0_IN5B,
	 D0_IN13, D0_IN14, D0_IN15, N_38_part1,
	 N_38_part2, D1_CD, D1_CLKP, D1_X3O,
	 D1_P4_xa, P01_PIN, D1_X2O, D1_X0O,
	 D1_G3, D1_G1, D1_G0, D1_F5,
	 D1_F4, D1_F1, D1_F0, D1_P19,
	 D1_IN8, D1_P17, D1_P16, D1_P15,
	 D1_P14, D1_P13, D1_IN6B, D1_IN10B,
	 D1_P12, D1_IN7, D1_P11, D1_IN5B,
	 D1_P10, D1_IN11B, D1_P9, D1_IN5,
	 D1_IN9B, D1_IN11, D1_P7, D1_IN2,
	 D1_IN9, D1_P6, D1_IN6, D1_P5,
	 D1_IN2B, D1_IN4B, D1_IN10, D1_IN15,
	 D1_P4, D1_IN12, D1_P3, D1_IN13B,
	 D1_P2, D1_IN14B, D1_IN16, D1_P1,
	 D1_IN1, D1_IN3, D1_IN15B, N_38_part2_ffb,
	 D1_P0, D1_IN3B, D1_IN13, D1_IN14,
	 D1_IN16B, D0_N_15, D2_CD, D2_CLK,
	 D2_P8_xa, D2_X1O, OR_1393, D2_X0O,
	 D2_G3, D2_G2, D2_F5, D2_F0,
	 D0_N_15_ffb, D2_P19, D2_IN16, D2_P18,
	 D2_IN7, D2_P17, D2_IN9, D2_P16,
	 D2_IN3, D2_IN13, D2_P15, D2_IN4,
	 D2_P14, D2_IN1, D2_IN11, D2_P12,
	 D2_IN12, D2_P8, D2_IN2, D2_P3,
	 D2_IN15, D2_P2, D2_IN5, D2_P1,
	 D2_IN6B, D2_IN10, D2_IN14B, D2_P0,
	 D2_IN3B, D2_IN6, D2_IN8, D2_IN11B,
	 D2_IN14, D0_N_98, D0_N_99, D3_CD,
	 D3_CLKP, D3_P0_xa, D3_X3O, D3_P4_xa,
	 D3_X2O, D3_P13_xa, P0_N_195, D3_X0O,
	 D3_G3, D3_G1, D3_G0, P0_N_177_C,
	 D3_P19, D3_IN8, D3_P13, D3_IN9B,
	 D3_P12, D3_IN3B, D3_IN9, D3_IN13B,
	 D3_IN14B, D3_IN15, D3_P11, D3_IN5B,
	 D3_IN6, D3_P10, D3_IN1B, D3_IN4,
	 D3_IN5, D3_IN6B, D3_IN10, D3_IN11B,
	 D3_IN12, D3_P4, D3_IN2, D3_P0,
	 D3_IN0, D0_N_16, D0_N_40, D4_CD,
	 D4_CLKP, D4_P4_xa, D4_X2O, D4_P13_xa,
	 D4_X0O, D4_G3, D4_G1, D4_P19,
	 D4_IN12, D4_P13, D4_IN2, D4_P12,
	 D4_IN4, D4_IN6, D4_IN11, D4_IN13,
	 D4_IN14, D4_IN15B, D4_P4, D4_IN9,
	 D0_N_12, D0_N_36, D0_N_104, D0_N_6,
	 D5_CD, D5_CLKP, D5_P0_xa, D5_X3O,
	 D5_P4_xa, D5_X2O, D5_P8_xa, D5_X1O,
	 D5_P13_xa, D5_X0O, D5_G3, D5_G2,
	 D5_G1, D5_G0, D5_P19, D5_IN12,
	 D5_P13, D5_IN0, D5_P12, D5_IN4,
	 D5_IN6, D5_IN11B, D5_IN13, D5_IN14,
	 D5_IN15B, D5_P8, D5_IN8, D5_P4,
	 D5_IN2, D5_P0, D5_IN9, P0_N_238,
	 P0_N_239, P0_N_240, D6_CD, D6_CLKP,
	 D6_P4_xa, D6_X2O, D6_P8_xa, D6_X1O,
	 D6_P13_xa, D6_X0O, D6_G3, D6_G2,
	 D6_G1, RE_CPUX_grp, D6_P19, D6_IN12,
	 D6_P13, D6_IN0, ENX_grp, D6_P12,
	 D6_IN1B, D6_IN4, D6_IN10, D6_IN11,
	 D6_P8, D6_IN7, D6_P4, D6_IN15,
	 D0_N_102, D0_N_4, D0_N_38, D0_N_14,
	 L2L_KEYWD_RESET_glbb, D7_CD, D7_CLKP, D7_P0_xa,
	 D7_X3O, D7_P4_xa, D7_X2O, D7_P8_xa,
	 D7_X1O, D7_P13_xa, D7_X0O, D7_G3,
	 D7_G2, D7_G1, D7_G0, RE_PRGMX_grp,
	 D7_P19, D7_IN12, DI1X_grp, D7_P13,
	 D7_IN9, PRGMX_grp, CLKX_grp, D7_P12,
	 D7_IN4, D7_IN6, D7_IN11, D7_IN13,
	 D7_IN14B, D7_IN15B, DI2X_grp, D7_P8,
	 D7_IN2, DI0X_grp, D7_P4, D7_IN0,
	 DI3X_grp, D7_P0, D7_IN8 : std_logic;


  COMPONENT PGAND5_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND5_main use entity work.PGAND5_main(behav);

  COMPONENT PGORF72_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF72_main use entity work.PGORF72_main(behav);

  COMPONENT PGORF76_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF76_main use entity work.PGORF76_main(behav);

  COMPONENT PGORF74_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF74_main use entity work.PGORF74_main(behav);

  COMPONENT PGBUFI_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGBUFI_main use entity work.PGBUFI_main(behav);

  COMPONENT PGXOR2_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGXOR2_main use entity work.PGXOR2_main(behav);

  COMPONENT PGINVI_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A0 : IN std_logic;
        ZN0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGINVI_main use entity work.PGINVI_main(behav);

  COMPONENT PGAND2_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND2_main use entity work.PGAND2_main(behav);

  COMPONENT PGDFFR_main
    GENERIC (HLCQ, LHCQ, HLRQ, SUD0, 
        SUD1, HOLDD0, HOLDD1, POSC1, 
        POSC0, NEGC1, NEGC0, RECRC, 
        HOLDRC : TIME);
    PORT (
        RNESET : IN std_logic;
        CD : IN std_logic;
        CLK : IN std_logic;
        D0 : IN std_logic;
        Q0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGDFFR_main use entity work.PGDFFR_main(behav);

  COMPONENT PGAND6_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND6_main use entity work.PGAND6_main(behav);

  COMPONENT PGAND3_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND3_main use entity work.PGAND3_main(behav);

  COMPONENT PGORF73_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF73_main use entity work.PGORF73_main(behav);

  COMPONENT PGAND4_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND4_main use entity work.PGAND4_main(behav);

  COMPONENT PGORF77_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A6 : IN std_logic;
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF77_main use entity work.PGORF77_main(behav);

  COMPONENT PGAND7_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A6 : IN std_logic;
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND7_main use entity work.PGAND7_main(behav);

  COMPONENT PGORF75_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF75_main use entity work.PGORF75_main(behav);

  COMPONENT PGAND10_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A9 : IN std_logic;
        A8 : IN std_logic;
        A7 : IN std_logic;
        A6 : IN std_logic;
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND10_main use entity work.PGAND10_main(behav);

  COMPONENT PGAND9_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A8 : IN std_logic;
        A7 : IN std_logic;
        A6 : IN std_logic;
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND9_main use entity work.PGAND9_main(behav);

  COMPONENT PGAND8_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A7 : IN std_logic;
        A6 : IN std_logic;
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND8_main use entity work.PGAND8_main(behav);

  COMPONENT PXIN_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        XI0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PXIN_main use entity work.PXIN_main(behav);

  COMPONENT PXOUT_main
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A0 : IN std_logic;
        XO0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PXOUT_main use entity work.PXOUT_main(behav);

BEGIN

GLB_A0_P19 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A0_P19, A4 => A0_IN0B, A3 => A0_IN4B, A2 => A0_IN5, 
	A1 => A0_IN9B, A0 => A0_IN10B);
GLB_A0_P18 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A0_P18, A4 => A0_IN0B, A3 => A0_IN1, A2 => A0_IN4B, 
	A1 => A0_IN9, A0 => A0_IN10B);
GLB_A0_P17 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A0_P17, A4 => A0_IN0B, A3 => A0_IN4B, A2 => A0_IN9B, 
	A1 => A0_IN10, A0 => A0_IN13);
GLB_A0_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A0_P16, A4 => A0_IN0B, A3 => A0_IN4, A2 => A0_IN9B, 
	A1 => A0_IN10B, A0 => A0_IN12);
GLB_A0_P15 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A0_P15, A4 => A0_IN0, A3 => A0_IN4B, A2 => A0_IN6, 
	A1 => A0_IN9B, A0 => A0_IN10B);
GLB_A0_P14 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A0_P14, A4 => A0_IN0, A3 => A0_IN2, A2 => A0_IN4B, 
	A1 => A0_IN9, A0 => A0_IN10B);
GLB_A0_P3 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A0_P3, A4 => A0_IN0B, A3 => A0_IN4, A2 => A0_IN7, 
	A1 => A0_IN9, A0 => A0_IN10);
GLB_A0_P2 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A0_P2, A4 => A0_IN0B, A3 => A0_IN3, A2 => A0_IN4, 
	A1 => A0_IN9B, A0 => A0_IN10);
GLB_A0_P1 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A0_P1, A4 => A0_IN0B, A3 => A0_IN4, A2 => A0_IN9, 
	A1 => A0_IN10B, A0 => A0_IN11);
GLB_A0_P0 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A0_P0, A4 => A0_IN0B, A3 => A0_IN4B, A2 => A0_IN9, 
	A1 => A0_IN10, A0 => A0_IN14);
GLB_A0_G3 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A0_G3, A1 => A0_F0, A0 => A0_F5);
GLB_A0_F5 : PGORF76_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => A0_F5, A5 => A0_P14, A4 => A0_P15, A3 => A0_P16, 
	A2 => A0_P19, A1 => A0_P17, A0 => A0_P18);
GLB_A0_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => A0_F0, A3 => A0_P0, A2 => A0_P1, A1 => A0_P2, 
	A0 => A0_P3);
GLB_N_41 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => N_41, A0 => A0_X0O);
GLB_A0_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN5, A0 => D0_N_113_grpi);
GLB_A0_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN1, A0 => D0_N_106_grpi);
GLB_A0_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN13, A0 => D0_N_105_grpi);
GLB_A0_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN12, A0 => D0_N_127_grpi);
GLB_A0_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN6, A0 => D0_N_49_grpi);
GLB_A0_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN2, A0 => D0_N_50_grpi);
GLB_A0_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN0, A0 => N_37_grpi);
GLB_A0_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN7, A0 => D0_N_100_grpi);
GLB_A0_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN3, A0 => D0_N_101_grpi);
GLB_A0_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN11, A0 => D0_N_102_grpi);
GLB_A0_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN4, A0 => N_38_part2_grpi);
GLB_A0_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN14, A0 => D0_N_104_grpi);
GLB_A0_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN10, A0 => N_39_grpi);
GLB_A0_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A0_IN9, A0 => N_40_grpi);
GLB_A0_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A0_X0O, A1 => GND, A0 => A0_G3);
GLB_A0_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A0_IN9B, A0 => N_40_grpi);
GLB_A0_IN10B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A0_IN10B, A0 => N_39_grpi);
GLB_A0_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A0_IN4B, A0 => N_38_part2_grpi);
GLB_A0_IN0B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A0_IN0B, A0 => N_37_grpi);
GLB_A1_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A1_P19, A0 => A1_IN3);
GLB_A1_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A1_P13, A0 => A1_IN16B);
GLB_A1_P12 : PGAND2_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A1_P12, A1 => A1_IN5, A0 => A1_IN11);
GLB_A1_P11 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A1_P11, A1 => A1_IN16, A0 => A1_IN17B);
GLB_A1_P10 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A1_P10, A1 => A1_IN16B, A0 => A1_IN17);
GLB_A1_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A1_G3, A0 => GND);
GLB_A1_F2 : PGORF72_main
    GENERIC MAP (TRISE => 2.400000 ns, TFALL => 2.400000 ns)
	PORT MAP (Z0 => A1_F2, A1 => A1_P10, A0 => A1_P11);
GLB_A1_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => A1_CD, A0 => A1_P19);
GLB_A1_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => A1_CLKP, A0 => A1_P12);
GLB_A1_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A1_P13_xa, A0 => A1_P13);
GLB_A1_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A1_IN3, A0 => RE_CPUX_grp);
GLB_A1_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A1_IN11, A0 => CLKX_grp);
GLB_A1_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A1_IN5, A0 => ENX_grp);
GLB_A1_IN16 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A1_IN16, A0 => F0_N_7_ffb);
GLB_A1_IN17 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A1_IN17, A0 => F0_N_6_ffb);
GLB_A1_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A1_X0O, A1 => A1_P13_xa, A0 => A1_G3);
GLB_F0_N_6 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => F0_N_6, RNESET => L2L_KEYWD_RESET_glbb, CD => A1_CD, CLK => A1_CLK, 
	D0 => A1_F2);
GLB_F0_N_7 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => F0_N_7, RNESET => L2L_KEYWD_RESET_glbb, CD => A1_CD, CLK => A1_CLK, 
	D0 => A1_X0O);
GLB_A1_CLK : PGINVI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => A1_CLK, A0 => A1_CLKP);
GLB_A1_IN17B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A1_IN17B, A0 => F0_N_6_ffb);
GLB_A1_IN16B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A1_IN16B, A0 => F0_N_7_ffb);
GLB_A2_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A2_P19, A0 => A2_IN3);
GLB_A2_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A2_P13, A0 => A2_IN13);
GLB_A2_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A2_P12, A5 => A2_IN0, A4 => A2_IN1B, A3 => A2_IN2, 
	A2 => A2_IN4B, A1 => A2_IN9, A0 => A2_IN11);
GLB_A2_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A2_P8, A0 => A2_IN7);
GLB_A2_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A2_P4, A0 => A2_IN15);
GLB_A2_P0 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A2_P0, A0 => A2_IN6);
GLB_A2_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A2_G3, A0 => GND);
GLB_A2_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A2_G2, A0 => GND);
GLB_A2_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A2_G1, A0 => GND);
GLB_A2_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A2_G0, A0 => GND);
GLB_A2_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => A2_CD, A0 => A2_P19);
GLB_A2_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => A2_CLKP, A0 => A2_P12);
GLB_A2_P0_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A2_P0_xa, A0 => A2_P0);
GLB_A2_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A2_P4_xa, A0 => A2_P4);
GLB_A2_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A2_P8_xa, A0 => A2_P8);
GLB_A2_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A2_P13_xa, A0 => A2_P13);
GLB_A2_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A2_IN3, A0 => RE_PRGMX_grp);
GLB_A2_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A2_IN13, A0 => DI2X_grp);
GLB_A2_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A2_IN11, A0 => CLKX_grp);
GLB_A2_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A2_IN9, A0 => N_40_grpi);
GLB_A2_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A2_IN2, A0 => PRGMX_grp);
GLB_A2_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A2_IN0, A0 => N_37_grpi);
GLB_A2_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A2_IN7, A0 => DI3X_grp);
GLB_A2_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A2_IN15, A0 => DI0X_grp);
GLB_A2_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A2_IN6, A0 => DI1X_grp);
GLB_A2_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A2_X3O, A1 => A2_P0_xa, A0 => A2_G0);
GLB_A2_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A2_X2O, A1 => A2_P4_xa, A0 => A2_G1);
GLB_A2_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A2_X1O, A1 => A2_P8_xa, A0 => A2_G2);
GLB_A2_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A2_X0O, A1 => A2_P13_xa, A0 => A2_G3);
GLB_D0_N_18 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_18, RNESET => L2L_KEYWD_RESET_glbb, CD => A2_CD, CLK => A2_CLKP, 
	D0 => A2_X3O);
GLB_D0_N_31 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_31, RNESET => L2L_KEYWD_RESET_glbb, CD => A2_CD, CLK => A2_CLKP, 
	D0 => A2_X2O);
GLB_D0_N_50 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_50, RNESET => L2L_KEYWD_RESET_glbb, CD => A2_CD, CLK => A2_CLKP, 
	D0 => A2_X1O);
GLB_D0_N_42 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_42, RNESET => L2L_KEYWD_RESET_glbb, CD => A2_CD, CLK => A2_CLKP, 
	D0 => A2_X0O);
GLB_A2_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A2_IN4B, A0 => N_38_part2_grpi);
GLB_A2_IN1B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A2_IN1B, A0 => N_39_grpi);
GLB_A3_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A3_P19, A0 => A3_IN3);
GLB_A3_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A3_P13, A0 => A3_IN15);
GLB_A3_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A3_P12, A5 => A3_IN0B, A4 => A3_IN1, A3 => A3_IN2, 
	A2 => A3_IN4B, A1 => A3_IN9B, A0 => A3_IN11);
GLB_A3_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A3_P8, A0 => A3_IN7);
GLB_A3_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A3_P4, A0 => A3_IN6);
GLB_A3_P0 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A3_P0, A0 => A3_IN13);
GLB_A3_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A3_G3, A0 => GND);
GLB_A3_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A3_G2, A0 => GND);
GLB_A3_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A3_G1, A0 => GND);
GLB_A3_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A3_G0, A0 => GND);
GLB_A3_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => A3_CD, A0 => A3_P19);
GLB_A3_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => A3_CLKP, A0 => A3_P12);
GLB_A3_P0_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A3_P0_xa, A0 => A3_P0);
GLB_A3_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A3_P4_xa, A0 => A3_P4);
GLB_A3_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A3_P8_xa, A0 => A3_P8);
GLB_A3_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A3_P13_xa, A0 => A3_P13);
GLB_A3_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A3_IN3, A0 => RE_PRGMX_grp);
GLB_A3_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A3_IN15, A0 => DI0X_grp);
GLB_A3_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A3_IN11, A0 => CLKX_grp);
GLB_A3_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A3_IN2, A0 => PRGMX_grp);
GLB_A3_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A3_IN1, A0 => N_39_grpi);
GLB_A3_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A3_IN7, A0 => DI3X_grp);
GLB_A3_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A3_IN6, A0 => DI1X_grp);
GLB_A3_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A3_IN13, A0 => DI2X_grp);
GLB_A3_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A3_X3O, A1 => A3_P0_xa, A0 => A3_G0);
GLB_A3_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A3_X2O, A1 => A3_P4_xa, A0 => A3_G1);
GLB_A3_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A3_X1O, A1 => A3_P8_xa, A0 => A3_G2);
GLB_A3_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A3_X0O, A1 => A3_P13_xa, A0 => A3_G3);
GLB_D0_N_35 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_35, RNESET => L2L_KEYWD_RESET_glbb, CD => A3_CD, CLK => A3_CLKP, 
	D0 => A3_X3O);
GLB_D0_N_11 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_11, RNESET => L2L_KEYWD_RESET_glbb, CD => A3_CD, CLK => A3_CLKP, 
	D0 => A3_X2O);
GLB_D0_N_105 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_105, RNESET => L2L_KEYWD_RESET_glbb, CD => A3_CD, CLK => A3_CLKP, 
	D0 => A3_X1O);
GLB_D0_N_7 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_7, RNESET => L2L_KEYWD_RESET_glbb, CD => A3_CD, CLK => A3_CLKP, 
	D0 => A3_X0O);
GLB_A3_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A3_IN9B, A0 => N_40_grpi);
GLB_A3_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A3_IN4B, A0 => N_38_part2_grpi);
GLB_A3_IN0B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A3_IN0B, A0 => N_37_grpi);
GLB_A4_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A4_P19, A0 => A4_IN7);
GLB_A4_P16 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P16, A5 => A4_IN0, A4 => A4_IN5, A3 => A4_IN6B, 
	A2 => A4_IN8B, A1 => A4_IN10, A0 => A4_IN12);
GLB_A4_P15 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P15, A5 => A4_IN0, A4 => A4_IN6, A3 => A4_IN8B, 
	A2 => A4_IN11B, A1 => A4_IN12, A0 => A4_IN13B);
GLB_A4_P14 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P14, A5 => A4_IN0, A4 => A4_IN6B, A3 => A4_IN8, 
	A2 => A4_IN11B, A1 => A4_IN12, A0 => A4_IN13B);
GLB_A4_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A4_P12, A0 => A4_IN3);
GLB_A4_P11 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P11, A5 => A4_IN0, A4 => A4_IN5B, A3 => A4_IN6B, 
	A2 => A4_IN8, A1 => A4_IN9B, A0 => A4_IN12);
GLB_A4_P10 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P10, A5 => A4_IN0, A4 => A4_IN6, A3 => A4_IN8, 
	A2 => A4_IN9, A1 => A4_IN10, A0 => A4_IN12);
GLB_A4_P9 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P9, A5 => A4_IN0, A4 => A4_IN5, A3 => A4_IN6, 
	A2 => A4_IN8, A1 => A4_IN10, A0 => A4_IN12);
GLB_A4_P8 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A4_P8, A5 => A4_IN0, A4 => A4_IN6B, A3 => A4_IN8B, 
	A2 => A4_IN9, A1 => A4_IN10, A0 => A4_IN12);
GLB_A4_P7 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P7, A4 => A4_IN1, A3 => A4_IN2, A2 => A4_IN4, 
	A1 => A4_IN12B, A0 => A4_IN16B);
GLB_A4_P6 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P6, A4 => A4_IN0, A3 => A4_IN6, A2 => A4_IN8, 
	A1 => A4_IN12, A0 => A4_IN13);
GLB_A4_P5 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P5, A4 => A4_IN0, A3 => A4_IN6B, A2 => A4_IN8B, 
	A1 => A4_IN12, A0 => A4_IN13);
GLB_A4_P4 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A4_P4, A5 => A4_IN0, A4 => A4_IN5B, A3 => A4_IN6, 
	A2 => A4_IN8B, A1 => A4_IN9B, A0 => A4_IN12);
GLB_A4_P3 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P3, A2 => A4_IN0B, A1 => A4_IN12, A0 => A4_IN15);
GLB_A4_P2 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P2, A2 => A4_IN2B, A1 => A4_IN12B, A0 => A4_IN16);
GLB_A4_P1 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => A4_P1, A2 => A4_IN1B, A1 => A4_IN12B, A0 => A4_IN16);
GLB_A4_P0 : PGAND3_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A4_P0, A2 => A4_IN4B, A1 => A4_IN12B, A0 => A4_IN16);
GLB_A4_G3 : PGORF74_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A4_G3, A3 => A4_F0, A2 => A4_F1, A1 => A4_F4, 
	A0 => A4_F5);
GLB_A4_F5 : PGORF73_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => A4_F5, A2 => A4_P14, A1 => A4_P15, A0 => A4_P16);
GLB_A4_F4 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => A4_F4, A3 => A4_P8, A2 => A4_P9, A1 => A4_P10, 
	A0 => A4_P11);
GLB_A4_F1 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => A4_F1, A3 => A4_P4, A2 => A4_P5, A1 => A4_P6, 
	A0 => A4_P7);
GLB_A4_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => A4_F0, A3 => A4_P0, A2 => A4_P1, A1 => A4_P2, 
	A0 => A4_P3);
GLB_A4_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => A4_CD, A0 => A4_P19);
GLB_A4_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => A4_CLKP, A0 => A4_P12);
GLB_A4_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN7, A0 => RE_CPUX_grp);
GLB_A4_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN3, A0 => N_40_C_grpi);
GLB_A4_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN5, A0 => P0_N_179_grpi);
GLB_A4_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN10, A0 => OR_871_grpi);
GLB_A4_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN9, A0 => P0_N_176_grpi);
GLB_A4_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN4, A0 => N_38_part2_grpi);
GLB_A4_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN2, A0 => N_40_grpi);
GLB_A4_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN1, A0 => N_39_grpi);
GLB_A4_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN8, A0 => P0_N_177_grpi);
GLB_A4_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN13, A0 => AND_1372_grpi);
GLB_A4_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN6, A0 => P0_N_178_grpi);
GLB_A4_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN0, A0 => P0_N_212_grpi);
GLB_A4_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN15, A0 => P0_N_214_grpi);
GLB_A4_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN12, A0 => P0_N_195_grpi);
GLB_A4_IN16 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A4_IN16, A0 => N_37_ffb);
GLB_A4_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A4_X0O, A1 => GND, A0 => A4_G3);
GLB_N_37 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_37, RNESET => L2L_KEYWD_RESET_glbb, CD => A4_CD, CLK => A4_CLKP, 
	D0 => A4_X0O);
GLB_A4_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN13B, A0 => AND_1372_grpi);
GLB_A4_IN11B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN11B, A0 => OR_872_grpi);
GLB_A4_IN16B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN16B, A0 => N_37_ffb);
GLB_A4_IN6B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN6B, A0 => P0_N_178_grpi);
GLB_A4_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN9B, A0 => P0_N_176_grpi);
GLB_A4_IN8B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN8B, A0 => P0_N_177_grpi);
GLB_A4_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN5B, A0 => P0_N_179_grpi);
GLB_A4_IN0B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN0B, A0 => P0_N_212_grpi);
GLB_A4_IN2B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN2B, A0 => N_40_grpi);
GLB_A4_IN1B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN1B, A0 => N_39_grpi);
GLB_A4_IN12B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN12B, A0 => P0_N_195_grpi);
GLB_A4_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A4_IN4B, A0 => N_38_part2_grpi);
GLB_A5_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A5_P19, A0 => A5_IN3);
GLB_A5_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A5_P13, A0 => A5_IN15);
GLB_A5_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A5_P12, A5 => A5_IN0B, A4 => A5_IN1B, A3 => A5_IN2, 
	A2 => A5_IN4, A1 => A5_IN9B, A0 => A5_IN11);
GLB_A5_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A5_P8, A0 => A5_IN13);
GLB_A5_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A5_P4, A0 => A5_IN6);
GLB_A5_P0 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A5_P0, A0 => A5_IN7);
GLB_A5_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A5_G3, A0 => GND);
GLB_A5_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A5_G2, A0 => GND);
GLB_A5_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A5_G1, A0 => GND);
GLB_A5_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A5_G0, A0 => GND);
GLB_A5_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => A5_CD, A0 => A5_P19);
GLB_A5_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => A5_CLKP, A0 => A5_P12);
GLB_A5_P0_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A5_P0_xa, A0 => A5_P0);
GLB_A5_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A5_P4_xa, A0 => A5_P4);
GLB_A5_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A5_P8_xa, A0 => A5_P8);
GLB_A5_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A5_P13_xa, A0 => A5_P13);
GLB_A5_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A5_IN3, A0 => RE_PRGMX_grp);
GLB_A5_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A5_IN15, A0 => DI0X_grp);
GLB_A5_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A5_IN11, A0 => CLKX_grp);
GLB_A5_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A5_IN4, A0 => N_38_part2_grpi);
GLB_A5_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A5_IN2, A0 => PRGMX_grp);
GLB_A5_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A5_IN13, A0 => DI2X_grp);
GLB_A5_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A5_IN6, A0 => DI1X_grp);
GLB_A5_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A5_IN7, A0 => DI3X_grp);
GLB_A5_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A5_X3O, A1 => A5_P0_xa, A0 => A5_G0);
GLB_A5_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A5_X2O, A1 => A5_P4_xa, A0 => A5_G1);
GLB_A5_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A5_X1O, A1 => A5_P8_xa, A0 => A5_G2);
GLB_A5_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A5_X0O, A1 => A5_P13_xa, A0 => A5_G3);
GLB_D0_N_127 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_127, RNESET => L2L_KEYWD_RESET_glbb, CD => A5_CD, CLK => A5_CLKP, 
	D0 => A5_X3O);
GLB_D0_N_13 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_13, RNESET => L2L_KEYWD_RESET_glbb, CD => A5_CD, CLK => A5_CLKP, 
	D0 => A5_X2O);
GLB_D0_N_37 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_37, RNESET => L2L_KEYWD_RESET_glbb, CD => A5_CD, CLK => A5_CLKP, 
	D0 => A5_X1O);
GLB_D0_N_5 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_5, RNESET => L2L_KEYWD_RESET_glbb, CD => A5_CD, CLK => A5_CLKP, 
	D0 => A5_X0O);
GLB_A5_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A5_IN9B, A0 => N_40_grpi);
GLB_A5_IN1B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A5_IN1B, A0 => N_39_grpi);
GLB_A5_IN0B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A5_IN0B, A0 => N_37_grpi);
GLB_A6_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A6_P19, A0 => A6_IN3);
GLB_A6_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A6_P13, A0 => A6_IN15);
GLB_A6_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A6_P12, A5 => A6_IN0B, A4 => A6_IN1B, A3 => A6_IN2, 
	A2 => A6_IN4B, A1 => A6_IN9, A0 => A6_IN11);
GLB_A6_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A6_P8, A0 => A6_IN13);
GLB_A6_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A6_P4, A0 => A6_IN7);
GLB_A6_P0 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A6_P0, A0 => A6_IN6);
GLB_A6_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A6_G3, A0 => GND);
GLB_A6_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A6_G2, A0 => GND);
GLB_A6_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A6_G1, A0 => GND);
GLB_A6_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A6_G0, A0 => GND);
GLB_A6_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => A6_CD, A0 => A6_P19);
GLB_A6_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => A6_CLKP, A0 => A6_P12);
GLB_A6_P0_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A6_P0_xa, A0 => A6_P0);
GLB_A6_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A6_P4_xa, A0 => A6_P4);
GLB_A6_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A6_P8_xa, A0 => A6_P8);
GLB_A6_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A6_P13_xa, A0 => A6_P13);
GLB_A6_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A6_IN3, A0 => RE_PRGMX_grp);
GLB_A6_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A6_IN15, A0 => DI0X_grp);
GLB_A6_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A6_IN11, A0 => CLKX_grp);
GLB_A6_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A6_IN9, A0 => N_40_grpi);
GLB_A6_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A6_IN2, A0 => PRGMX_grp);
GLB_A6_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A6_IN13, A0 => DI2X_grp);
GLB_A6_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A6_IN7, A0 => DI3X_grp);
GLB_A6_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A6_IN6, A0 => DI1X_grp);
GLB_A6_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A6_X3O, A1 => A6_P0_xa, A0 => A6_G0);
GLB_A6_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A6_X2O, A1 => A6_P4_xa, A0 => A6_G1);
GLB_A6_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A6_X1O, A1 => A6_P8_xa, A0 => A6_G2);
GLB_A6_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A6_X0O, A1 => A6_P13_xa, A0 => A6_G3);
GLB_D0_N_10 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_10, RNESET => L2L_KEYWD_RESET_glbb, CD => A6_CD, CLK => A6_CLKP, 
	D0 => A6_X3O);
GLB_D0_N_106 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_106, RNESET => L2L_KEYWD_RESET_glbb, CD => A6_CD, CLK => A6_CLKP, 
	D0 => A6_X2O);
GLB_D0_N_34 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_34, RNESET => L2L_KEYWD_RESET_glbb, CD => A6_CD, CLK => A6_CLKP, 
	D0 => A6_X1O);
GLB_D0_N_8 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_8, RNESET => L2L_KEYWD_RESET_glbb, CD => A6_CD, CLK => A6_CLKP, 
	D0 => A6_X0O);
GLB_A6_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A6_IN4B, A0 => N_38_part2_grpi);
GLB_A6_IN1B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A6_IN1B, A0 => N_39_grpi);
GLB_A6_IN0B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A6_IN0B, A0 => N_37_grpi);
GLB_A7_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A7_P19, A0 => A7_IN3);
GLB_A7_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A7_P13, A0 => A7_IN4);
GLB_A7_P12 : PGAND4_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A7_P12, A3 => A7_IN5, A2 => A7_IN11, A1 => A7_IN14, 
	A0 => A7_IN15B);
GLB_A7_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A7_P8, A0 => A7_IN8);
GLB_A7_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A7_P4, A0 => A7_IN12);
GLB_A7_P0 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => A7_P0, A0 => A7_IN0);
GLB_A7_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A7_G3, A0 => GND);
GLB_A7_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A7_G2, A0 => GND);
GLB_A7_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A7_G1, A0 => GND);
GLB_A7_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => A7_G0, A0 => GND);
GLB_A7_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => A7_CD, A0 => A7_P19);
GLB_A7_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => A7_CLKP, A0 => A7_P12);
GLB_A7_P0_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A7_P0_xa, A0 => A7_P0);
GLB_A7_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A7_P4_xa, A0 => A7_P4);
GLB_A7_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A7_P8_xa, A0 => A7_P8);
GLB_A7_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => A7_P13_xa, A0 => A7_P13);
GLB_A7_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A7_IN3, A0 => RE_CPUX_grp);
GLB_A7_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A7_IN4, A0 => OR_1397_grpi);
GLB_A7_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A7_IN14, A0 => F0_N_6_grpi);
GLB_A7_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A7_IN11, A0 => CLKX_grp);
GLB_A7_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A7_IN5, A0 => ENX_grp);
GLB_A7_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A7_IN8, A0 => OR_1393_grpi);
GLB_A7_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A7_IN12, A0 => OR_1395_grpi);
GLB_A7_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => A7_IN0, A0 => N_41_grpi);
GLB_A7_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A7_X3O, A1 => A7_P0_xa, A0 => A7_G0);
GLB_A7_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A7_X2O, A1 => A7_P4_xa, A0 => A7_G1);
GLB_A7_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A7_X1O, A1 => A7_P8_xa, A0 => A7_G2);
GLB_A7_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => A7_X0O, A1 => A7_P13_xa, A0 => A7_G3);
GLB_P0_N_214 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_214, RNESET => L2L_KEYWD_RESET_glbb, CD => A7_CD, CLK => A7_CLKP, 
	D0 => A7_X3O);
GLB_P0_N_216 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_216, RNESET => L2L_KEYWD_RESET_glbb, CD => A7_CD, CLK => A7_CLKP, 
	D0 => A7_X2O);
GLB_P0_N_217 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_217, RNESET => L2L_KEYWD_RESET_glbb, CD => A7_CD, CLK => A7_CLKP, 
	D0 => A7_X1O);
GLB_P0_N_218 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_218, RNESET => L2L_KEYWD_RESET_glbb, CD => A7_CD, CLK => A7_CLKP, 
	D0 => A7_X0O);
GLB_A7_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => A7_IN15B, A0 => F0_N_7_grpi);
GLB_B0_P19 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B0_P19, A5 => B0_IN2, A4 => B0_IN4, A3 => B0_IN5, 
	A2 => B0_IN6B, A1 => B0_IN10, A0 => B0_IN12B);
GLB_B0_P18 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P18, A5 => B0_IN4, A4 => B0_IN5, A3 => B0_IN6B, 
	A2 => B0_IN8, A1 => B0_IN10, A0 => B0_IN12B);
GLB_B0_P17 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P17, A5 => B0_IN2, A4 => B0_IN4, A3 => B0_IN6B, 
	A2 => B0_IN9, A1 => B0_IN10, A0 => B0_IN12B);
GLB_B0_P16 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P16, A5 => B0_IN2, A4 => B0_IN4, A3 => B0_IN6, 
	A2 => B0_IN9, A1 => B0_IN10, A0 => B0_IN12);
GLB_B0_P15 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P15, A5 => B0_IN4, A4 => B0_IN5, A3 => B0_IN6, 
	A2 => B0_IN8, A1 => B0_IN10, A0 => B0_IN12);
GLB_B0_P14 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P14, A5 => B0_IN2, A4 => B0_IN4, A3 => B0_IN5, 
	A2 => B0_IN6, A1 => B0_IN10, A0 => B0_IN12);
GLB_B0_P13 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B0_P13, A5 => B0_IN4, A4 => B0_IN6B, A3 => B0_IN8, 
	A2 => B0_IN9, A1 => B0_IN10, A0 => B0_IN12B);
GLB_B0_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B0_P12, A0 => B0_IN3);
GLB_B0_P11 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P11, A4 => B0_IN2, A3 => B0_IN6B, A2 => B0_IN8, 
	A1 => B0_IN9, A0 => B0_IN12B);
GLB_B0_P10 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P10, A4 => B0_IN2, A3 => B0_IN5, A2 => B0_IN6B, 
	A1 => B0_IN8, A0 => B0_IN12B);
GLB_B0_P9 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P9, A5 => B0_IN4, A4 => B0_IN6, A3 => B0_IN8, 
	A2 => B0_IN9, A1 => B0_IN10, A0 => B0_IN12);
GLB_B0_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B0_P8, A0 => B0_IN7);
GLB_B0_P7 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P7, A3 => B0_IN0B, A2 => B0_IN6, A1 => B0_IN12B, 
	A0 => B0_IN13B);
GLB_B0_P6 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P6, A3 => B0_IN0B, A2 => B0_IN6B, A1 => B0_IN12, 
	A0 => B0_IN13B);
GLB_B0_P5 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P5, A4 => B0_IN2, A3 => B0_IN6, A2 => B0_IN8, 
	A1 => B0_IN9, A0 => B0_IN12);
GLB_B0_P4 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B0_P4, A4 => B0_IN2, A3 => B0_IN5, A2 => B0_IN6, 
	A1 => B0_IN8, A0 => B0_IN12);
GLB_B0_P3 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P3, A2 => B0_IN6, A1 => B0_IN12, A0 => B0_IN13);
GLB_B0_P2 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P2, A2 => B0_IN6B, A1 => B0_IN12B, A0 => B0_IN13);
GLB_B0_P1 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B0_P1, A3 => B0_IN5B, A2 => B0_IN6, A1 => B0_IN9B, 
	A0 => B0_IN12B);
GLB_B0_P0 : PGAND4_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B0_P0, A3 => B0_IN5B, A2 => B0_IN6B, A1 => B0_IN9B, 
	A0 => B0_IN12);
GLB_B0_G3 : PGORF74_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B0_G3, A3 => B0_F0, A2 => B0_F1, A1 => B0_F4, 
	A0 => B0_F5);
GLB_B0_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B0_G2, A0 => GND);
GLB_B0_F5 : PGORF77_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B0_F5, A6 => B0_P13, A5 => B0_P14, A4 => B0_P15, 
	A3 => B0_P16, A2 => B0_P19, A1 => B0_P17, A0 => B0_P18);
GLB_B0_F4 : PGORF73_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B0_F4, A2 => B0_P9, A1 => B0_P10, A0 => B0_P11);
GLB_B0_F1 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B0_F1, A3 => B0_P4, A2 => B0_P5, A1 => B0_P6, 
	A0 => B0_P7);
GLB_B0_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B0_F0, A3 => B0_P0, A2 => B0_P1, A1 => B0_P2, 
	A0 => B0_P3);
GLB_B0_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => B0_CD, A0 => B0_P12);
GLB_B0_CLK : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B0_CLK, A0 => D0_N_116_C_ck2f);
GLB_B0_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => B0_P8_xa, A0 => B0_P8);
GLB_P03_PIN : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => P03_PIN, A0 => B0_X0O);
GLB_B0_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN3, A0 => RE_PRGMX_grp);
GLB_B0_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN10, A0 => P0_N_174_grpi);
GLB_B0_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN4, A0 => P0_N_181_grpi);
GLB_B0_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN7, A0 => DI3X_grp);
GLB_B0_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN9, A0 => P0_N_176_grpi);
GLB_B0_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN8, A0 => P0_N_175_part2_grpi);
GLB_B0_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN5, A0 => P0_N_179_grpi);
GLB_B0_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN2, A0 => P0_N_180_grpi);
GLB_B0_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN13, A0 => AND_1372_grpi);
GLB_B0_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN6, A0 => P0_N_178_grpi);
GLB_B0_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B0_IN12, A0 => P0_N_177_grpi);
GLB_B0_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B0_X1O, A1 => B0_P8_xa, A0 => B0_G2);
GLB_B0_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B0_X0O, A1 => GND, A0 => B0_G3);
GLB_D0_N_113 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_113, RNESET => L2L_KEYWD_RESET_glbb, CD => B0_CD, CLK => B0_CLK, 
	D0 => B0_X1O);
GLB_B0_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B0_IN13B, A0 => AND_1372_grpi);
GLB_B0_IN0B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B0_IN0B, A0 => OR_872_grpi);
GLB_B0_IN12B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B0_IN12B, A0 => P0_N_177_grpi);
GLB_B0_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B0_IN9B, A0 => P0_N_176_grpi);
GLB_B0_IN6B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B0_IN6B, A0 => P0_N_178_grpi);
GLB_B0_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B0_IN5B, A0 => P0_N_179_grpi);
GLB_B1_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B1_P19, A0 => B1_IN3);
GLB_B1_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B1_P12, A5 => B1_IN0B, A4 => B1_IN1, A3 => B1_IN2, 
	A2 => B1_IN4, A1 => B1_IN6, A0 => B1_IN11);
GLB_B1_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B1_P8, A0 => B1_IN15);
GLB_B1_P0 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B1_P0, A0 => B1_IN7);
GLB_B1_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B1_G2, A0 => GND);
GLB_B1_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B1_G0, A0 => GND);
GLB_B1_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => B1_CD, A0 => B1_P19);
GLB_B1_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => B1_CLKP, A0 => B1_P12);
GLB_B1_P0_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => B1_P0_xa, A0 => B1_P0);
GLB_B1_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => B1_P8_xa, A0 => B1_P8);
GLB_B1_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B1_IN3, A0 => RE_PRGMX_grp);
GLB_B1_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B1_IN11, A0 => CLKX_grp);
GLB_B1_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B1_IN6, A0 => PRGMX_grp);
GLB_B1_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B1_IN4, A0 => N_38_part2_grpi);
GLB_B1_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B1_IN2, A0 => N_40_grpi);
GLB_B1_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B1_IN1, A0 => N_39_grpi);
GLB_B1_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B1_IN15, A0 => DI0X_grp);
GLB_B1_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B1_IN7, A0 => DI3X_grp);
GLB_B1_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B1_X3O, A1 => B1_P0_xa, A0 => B1_G0);
GLB_B1_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B1_X1O, A1 => B1_P8_xa, A0 => B1_G2);
GLB_D0_N_100 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_100, RNESET => L2L_KEYWD_RESET_glbb, CD => B1_CD, CLK => B1_CLKP, 
	D0 => B1_X3O);
GLB_D0_N_2 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_2, RNESET => L2L_KEYWD_RESET_glbb, CD => B1_CD, CLK => B1_CLKP, 
	D0 => B1_X1O);
GLB_B1_IN0B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B1_IN0B, A0 => N_37_grpi);
GLB_B2_P16 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P16, A1 => B2_IN0, A0 => B2_IN2);
GLB_B2_P15 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P15, A2 => B2_IN0, A1 => B2_IN4, A0 => B2_IN10);
GLB_B2_P14 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P14, A2 => B2_IN2, A1 => B2_IN4, A0 => B2_IN10);
GLB_B2_P11 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P11, A1 => B2_IN4, A0 => B2_IN10B);
GLB_B2_P10 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P10, A1 => B2_IN4B, A0 => B2_IN10);
GLB_B2_P7 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P7, A3 => B2_IN0, A2 => B2_IN4, A1 => B2_IN10, 
	A0 => B2_IN13);
GLB_B2_P6 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P6, A3 => B2_IN2, A2 => B2_IN4, A1 => B2_IN10, 
	A0 => B2_IN13);
GLB_B2_P5 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P5, A4 => B2_IN0, A3 => B2_IN4, A2 => B2_IN5B, 
	A1 => B2_IN9B, A0 => B2_IN10);
GLB_B2_P4 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B2_P4, A4 => B2_IN2, A3 => B2_IN4, A2 => B2_IN5B, 
	A1 => B2_IN9B, A0 => B2_IN10);
GLB_B2_P3 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P3, A2 => B2_IN0, A1 => B2_IN2, A0 => B2_IN13);
GLB_B2_P2 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P2, A2 => B2_IN9, A1 => B2_IN13B, A0 => B2_IN17B);
GLB_B2_P1 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B2_P1, A2 => B2_IN5, A1 => B2_IN13B, A0 => B2_IN17B);
GLB_B2_P0 : PGAND4_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B2_P0, A3 => B2_IN0, A2 => B2_IN2, A1 => B2_IN5B, 
	A0 => B2_IN9B);
GLB_B2_G3 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B2_G3, A1 => B2_F0, A0 => B2_F1);
GLB_B2_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B2_G1, A0 => B2_F5);
GLB_B2_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B2_G0, A0 => B2_F5);
GLB_B2_F5 : PGORF73_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B2_F5, A2 => B2_P14, A1 => B2_P15, A0 => B2_P16);
GLB_P00_PIN : PGORF72_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => P00_PIN, A1 => B2_P10, A0 => B2_P11);
GLB_B2_F1 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B2_F1, A3 => B2_P4, A2 => B2_P5, A1 => B2_P6, 
	A0 => B2_P7);
GLB_B2_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B2_F0, A3 => B2_P0, A2 => B2_P1, A1 => B2_P2, 
	A0 => B2_P3);
GLB_OR_872 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => OR_872, A0 => B2_X3O);
GLB_OR_871 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => OR_871, A0 => B2_X2O);
GLB_P02_PIN : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => P02_PIN, A0 => B2_X0O);
GLB_B2_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B2_IN10, A0 => P0_N_174_grpi);
GLB_B2_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B2_IN4, A0 => P0_N_181_grpi);
GLB_B2_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B2_IN13, A0 => AND_1372_grpi);
GLB_B2_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B2_IN9, A0 => P0_N_176_grpi);
GLB_B2_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B2_IN5, A0 => P0_N_179_grpi);
GLB_B2_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B2_IN2, A0 => P0_N_180_grpi);
GLB_B2_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B2_IN0, A0 => P0_N_175_part1_grpi);
GLB_B2_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B2_X3O, A1 => GND, A0 => B2_G0);
GLB_B2_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B2_X2O, A1 => GND, A0 => B2_G1);
GLB_B2_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B2_X0O, A1 => GND, A0 => B2_G3);
GLB_B2_IN10B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B2_IN10B, A0 => P0_N_174_grpi);
GLB_B2_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B2_IN4B, A0 => P0_N_181_grpi);
GLB_B2_IN17B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B2_IN17B, A0 => OR_872_ffb);
GLB_B2_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B2_IN13B, A0 => AND_1372_grpi);
GLB_B2_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B2_IN9B, A0 => P0_N_176_grpi);
GLB_B2_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B2_IN5B, A0 => P0_N_179_grpi);
GLB_B3_P19 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B3_P19, A4 => B3_IN1, A3 => B3_IN2, A2 => B3_IN4B, 
	A1 => B3_IN7, A0 => B3_IN9B);
GLB_B3_P18 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B3_P18, A4 => B3_IN1B, A3 => B3_IN4B, A2 => B3_IN7, 
	A1 => B3_IN8, A0 => B3_IN9);
GLB_B3_P17 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B3_P17, A4 => B3_IN1B, A3 => B3_IN4B, A2 => B3_IN7, 
	A1 => B3_IN9B, A0 => B3_IN13);
GLB_B3_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B3_P16, A4 => B3_IN1, A3 => B3_IN4B, A2 => B3_IN6, 
	A1 => B3_IN7, A0 => B3_IN9);
GLB_B3_P15 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B3_P15, A4 => B3_IN1B, A3 => B3_IN4, A2 => B3_IN7B, 
	A1 => B3_IN9, A0 => B3_IN11);
GLB_B3_P14 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B3_P14, A4 => B3_IN1B, A3 => B3_IN4, A2 => B3_IN7B, 
	A1 => B3_IN9B, A0 => B3_IN14);
GLB_B3_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B3_P12, A0 => B3_IN3);
GLB_B3_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B3_P8, A0 => B3_IN15);
GLB_B3_P3 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B3_P3, A4 => B3_IN0, A3 => B3_IN1B, A2 => B3_IN4B, 
	A1 => B3_IN7B, A0 => B3_IN9);
GLB_B3_P2 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B3_P2, A4 => B3_IN1, A3 => B3_IN4B, A2 => B3_IN7B, 
	A1 => B3_IN9B, A0 => B3_IN10);
GLB_B3_P1 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B3_P1, A4 => B3_IN1B, A3 => B3_IN4B, A2 => B3_IN5, 
	A1 => B3_IN7B, A0 => B3_IN9B);
GLB_B3_P0 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B3_P0, A4 => B3_IN1, A3 => B3_IN4B, A2 => B3_IN7B, 
	A1 => B3_IN9, A0 => B3_IN12);
GLB_B3_G3 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B3_G3, A1 => B3_F0, A0 => B3_F5);
GLB_B3_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B3_G2, A0 => GND);
GLB_B3_F5 : PGORF76_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B3_F5, A5 => B3_P14, A4 => B3_P15, A3 => B3_P16, 
	A2 => B3_P19, A1 => B3_P17, A0 => B3_P18);
GLB_B3_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B3_F0, A3 => B3_P0, A2 => B3_P1, A1 => B3_P2, 
	A0 => B3_P3);
GLB_B3_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => B3_CD, A0 => B3_P12);
GLB_B3_CLK : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B3_CLK, A0 => D0_N_3_C_ck1f);
GLB_B3_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => B3_P8_xa, A0 => B3_P8);
GLB_OR_1392 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => OR_1392, A0 => B3_X0O);
GLB_B3_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN2, A0 => D0_N_15_grpi);
GLB_B3_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN8, A0 => D0_N_14_grpi);
GLB_B3_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN13, A0 => D0_N_13_grpi);
GLB_B3_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN7, A0 => N_38_part1_grpi);
GLB_B3_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN6, A0 => D0_N_16_grpi);
GLB_B3_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN11, A0 => D0_N_18_grpi);
GLB_B3_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN14, A0 => D0_N_99_grpi);
GLB_B3_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN4, A0 => N_37_grpi);
GLB_B3_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN3, A0 => RE_PRGMX_grp);
GLB_B3_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN15, A0 => DI0X_grp);
GLB_B3_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN0, A0 => D0_N_10_grpi);
GLB_B3_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN10, A0 => D0_N_11_grpi);
GLB_B3_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN5, A0 => D0_N_115_grpi);
GLB_B3_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN12, A0 => D0_N_12_grpi);
GLB_B3_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN9, A0 => N_40_grpi);
GLB_B3_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B3_IN1, A0 => N_39_grpi);
GLB_B3_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B3_X1O, A1 => B3_P8_xa, A0 => B3_G2);
GLB_B3_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B3_X0O, A1 => GND, A0 => B3_G3);
GLB_D0_N_3 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_3, RNESET => L2L_KEYWD_RESET_glbb, CD => B3_CD, CLK => B3_CLK, 
	D0 => B3_X1O);
GLB_B3_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B3_IN9B, A0 => N_40_grpi);
GLB_B3_IN1B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B3_IN1B, A0 => N_39_grpi);
GLB_B3_IN7B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B3_IN7B, A0 => N_38_part1_grpi);
GLB_B3_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B3_IN4B, A0 => N_37_grpi);
GLB_B4_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B4_P19, A0 => B4_IN7);
GLB_B4_P17 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P17, A2 => B4_IN1B, A1 => B4_IN2, A0 => B4_IN9);
GLB_B4_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P16, A4 => B4_IN1B, A3 => B4_IN2B, A2 => B4_IN3B, 
	A1 => B4_IN10, A0 => B4_IN15);
GLB_B4_P15 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P15, A2 => B4_IN1B, A1 => B4_IN3, A0 => B4_IN9);
GLB_B4_P14 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P14, A2 => B4_IN0, A1 => B4_IN1, A0 => B4_IN17B);
GLB_B4_P13 : PGAND3_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B4_P13, A2 => B4_IN0B, A1 => B4_IN1, A0 => B4_IN17);
GLB_B4_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B4_P12, A0 => B4_IN16);
GLB_B4_P11 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P11, A6 => B4_IN1B, A5 => B4_IN2, A4 => B4_IN3B, 
	A3 => B4_IN4B, A2 => B4_IN5, A1 => B4_IN11, A0 => B4_IN14B);
GLB_B4_P10 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P10, A6 => B4_IN1, A5 => B4_IN2B, A4 => B4_IN3B, 
	A3 => B4_IN4B, A2 => B4_IN5, A1 => B4_IN11, A0 => B4_IN14B);
GLB_B4_P7 : PGBUFI_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P7, A0 => B4_IN1);
GLB_B4_P6 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P6, A1 => B4_IN2B, A0 => B4_IN3B);
GLB_B4_P3 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P3, A2 => B4_IN1, A1 => B4_IN10, A0 => B4_IN15);
GLB_B4_P2 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P2, A4 => B4_IN0B, A3 => B4_IN1B, A2 => B4_IN2B, 
	A1 => B4_IN3B, A0 => B4_IN17);
GLB_B4_P1 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B4_P1, A4 => B4_IN0, A3 => B4_IN1B, A2 => B4_IN2B, 
	A1 => B4_IN3B, A0 => B4_IN17B);
GLB_B4_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B4_G3, A0 => B4_F1);
GLB_B4_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B4_G2, A0 => B4_F4);
GLB_B4_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B4_G1, A0 => B4_F5);
GLB_B4_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B4_G0, A0 => B4_F0);
GLB_B4_F5 : PGORF75_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B4_F5, A4 => B4_P13, A3 => B4_P14, A2 => B4_P15, 
	A1 => B4_P16, A0 => B4_P17);
GLB_B4_F4 : PGORF72_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B4_F4, A1 => B4_P10, A0 => B4_P11);
GLB_B4_F1 : PGORF72_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B4_F1, A1 => B4_P6, A0 => B4_P7);
GLB_B4_F0 : PGORF73_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B4_F0, A2 => B4_P1, A1 => B4_P2, A0 => B4_P3);
GLB_B4_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => B4_CD, A0 => B4_P19);
GLB_B4_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => B4_CLKP, A0 => B4_P12);
GLB_B4_X2MO : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B4_X2MO, A0 => B4_G0);
GLB_P0_N_181_C : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => P0_N_181_C, A0 => B4_X1O);
GLB_P0_N_212 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => P0_N_212, A0 => B4_X0O);
GLB_B4_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN7, A0 => RE_CPUX_grp);
GLB_B4_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN9, A0 => P0_N_217_grpi);
GLB_B4_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN3, A0 => P0_N_240_grpi);
GLB_B4_IN16 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN16, A0 => P0_N_181_C_ffb);
GLB_B4_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN2, A0 => P0_N_239_grpi);
GLB_B4_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN11, A0 => CLKX_grp);
GLB_B4_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN5, A0 => ENX_grp);
GLB_B4_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN15, A0 => P0_N_181_grpi);
GLB_B4_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN10, A0 => P0_N_174_grpi);
GLB_B4_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN1, A0 => P0_N_238_grpi);
GLB_B4_IN17 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN17, A0 => P0_N_180_ffb);
GLB_B4_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B4_IN0, A0 => P0_N_175_part1_grpi);
GLB_B4_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B4_X2O, A1 => B4_X2MO, A0 => B4_G1);
GLB_B4_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B4_X1O, A1 => GND, A0 => B4_G2);
GLB_B4_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B4_X0O, A1 => GND, A0 => B4_G3);
GLB_P0_N_180 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_180, RNESET => L2L_KEYWD_RESET_glbb, CD => B4_CD, CLK => B4_CLKP, 
	D0 => B4_X2O);
GLB_B4_IN14B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B4_IN14B, A0 => F0_N_6_grpi);
GLB_B4_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B4_IN4B, A0 => F0_N_7_grpi);
GLB_B4_IN0B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B4_IN0B, A0 => P0_N_175_part1_grpi);
GLB_B4_IN17B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B4_IN17B, A0 => P0_N_180_ffb);
GLB_B4_IN3B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B4_IN3B, A0 => P0_N_240_grpi);
GLB_B4_IN2B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B4_IN2B, A0 => P0_N_239_grpi);
GLB_B4_IN1B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B4_IN1B, A0 => P0_N_238_grpi);
GLB_B5_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B5_P12, A0 => B5_IN3);
GLB_B5_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B5_P8, A0 => B5_IN6);
GLB_B5_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B5_G2, A0 => GND);
GLB_B5_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => B5_CD, A0 => B5_P12);
GLB_B5_CLK : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B5_CLK, A0 => D0_N_3_C_ck1f);
GLB_B5_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => B5_P8_xa, A0 => B5_P8);
GLB_B5_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B5_IN3, A0 => RE_PRGMX_grp);
GLB_B5_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B5_IN6, A0 => DI2X_grp);
GLB_B5_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B5_X1O, A1 => B5_P8_xa, A0 => B5_G2);
GLB_D0_N_39 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_39, RNESET => L2L_KEYWD_RESET_glbb, CD => B5_CD, CLK => B5_CLK, 
	D0 => B5_X1O);
GLB_B6_P19 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B6_P19, A4 => B6_IN4B, A3 => B6_IN9B, A2 => B6_IN10, 
	A1 => B6_IN14, A0 => B6_IN15);
GLB_B6_P18 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B6_P18, A4 => B6_IN4B, A3 => B6_IN9, A2 => B6_IN10B, 
	A1 => B6_IN13, A0 => B6_IN15);
GLB_B6_P17 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B6_P17, A4 => B6_IN4B, A3 => B6_IN5, A2 => B6_IN9B, 
	A1 => B6_IN10B, A0 => B6_IN15);
GLB_B6_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B6_P16, A4 => B6_IN0, A3 => B6_IN4B, A2 => B6_IN9, 
	A1 => B6_IN10, A0 => B6_IN15);
GLB_B6_P15 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B6_P15, A4 => B6_IN3, A3 => B6_IN4, A2 => B6_IN9B, 
	A1 => B6_IN10B, A0 => B6_IN15B);
GLB_B6_P14 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B6_P14, A4 => B6_IN4, A3 => B6_IN8, A2 => B6_IN9, 
	A1 => B6_IN10B, A0 => B6_IN15B);
GLB_B6_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B6_P13, A0 => B6_IN12);
GLB_B6_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B6_P12, A0 => B6_IN7);
GLB_B6_P3 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B6_P3, A4 => B6_IN1, A3 => B6_IN4B, A2 => B6_IN9B, 
	A1 => B6_IN10B, A0 => B6_IN15B);
GLB_B6_P2 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B6_P2, A4 => B6_IN2, A3 => B6_IN4B, A2 => B6_IN9, 
	A1 => B6_IN10B, A0 => B6_IN15B);
GLB_B6_P1 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B6_P1, A4 => B6_IN4B, A3 => B6_IN9B, A2 => B6_IN10, 
	A1 => B6_IN11, A0 => B6_IN15B);
GLB_B6_P0 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B6_P0, A4 => B6_IN4B, A3 => B6_IN6, A2 => B6_IN9, 
	A1 => B6_IN10, A0 => B6_IN15B);
GLB_B6_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B6_G3, A0 => GND);
GLB_B6_G0 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B6_G0, A1 => B6_F0, A0 => B6_F5);
GLB_B6_F5 : PGORF76_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B6_F5, A5 => B6_P14, A4 => B6_P15, A3 => B6_P16, 
	A2 => B6_P19, A1 => B6_P17, A0 => B6_P18);
GLB_B6_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B6_F0, A3 => B6_P0, A2 => B6_P1, A1 => B6_P2, 
	A0 => B6_P3);
GLB_B6_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => B6_CD, A0 => B6_P12);
GLB_B6_CLK : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B6_CLK, A0 => D0_N_3_C_ck1f);
GLB_OR_1394 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => OR_1394, A0 => B6_X3O);
GLB_B6_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => B6_P13_xa, A0 => B6_P13);
GLB_B6_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN14, A0 => D0_N_39_grpi);
GLB_B6_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN13, A0 => D0_N_38_grpi);
GLB_B6_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN5, A0 => D0_N_37_grpi);
GLB_B6_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN15, A0 => N_38_part2_grpi);
GLB_B6_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN0, A0 => D0_N_40_grpi);
GLB_B6_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN3, A0 => D0_N_41_grpi);
GLB_B6_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN8, A0 => D0_N_42_grpi);
GLB_B6_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN4, A0 => N_37_grpi);
GLB_B6_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN12, A0 => DI3X_grp);
GLB_B6_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN7, A0 => RE_PRGMX_grp);
GLB_B6_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN1, A0 => D0_N_114_grpi);
GLB_B6_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN2, A0 => D0_N_34_grpi);
GLB_B6_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN11, A0 => D0_N_35_grpi);
GLB_B6_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN10, A0 => N_39_grpi);
GLB_B6_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN9, A0 => N_40_grpi);
GLB_B6_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B6_IN6, A0 => D0_N_36_grpi);
GLB_B6_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B6_X3O, A1 => GND, A0 => B6_G0);
GLB_B6_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B6_X0O, A1 => B6_P13_xa, A0 => B6_G3);
GLB_D0_N_101 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_101, RNESET => L2L_KEYWD_RESET_glbb, CD => B6_CD, CLK => B6_CLK, 
	D0 => B6_X0O);
GLB_B6_IN10B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B6_IN10B, A0 => N_39_grpi);
GLB_B6_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B6_IN9B, A0 => N_40_grpi);
GLB_B6_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B6_IN15B, A0 => N_38_part2_grpi);
GLB_B6_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B6_IN4B, A0 => N_37_grpi);
GLB_B7_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B7_P19, A0 => B7_IN7);
GLB_B7_P18 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P18, A4 => B7_IN0, A3 => B7_IN4, A2 => B7_IN13, 
	A1 => B7_IN15, A0 => B7_IN17);
GLB_B7_P17 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P17, A4 => B7_IN0, A3 => B7_IN4, A2 => B7_IN5B, 
	A1 => B7_IN6, A0 => B7_IN16B);
GLB_B7_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P16, A4 => B7_IN4, A3 => B7_IN6, A2 => B7_IN13, 
	A1 => B7_IN15, A0 => B7_IN17);
GLB_B7_P15 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P15, A5 => B7_IN0, A4 => B7_IN4, A3 => B7_IN5B, 
	A2 => B7_IN15, A1 => B7_IN16B, A0 => B7_IN17);
GLB_B7_P14 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P14, A5 => B7_IN4, A4 => B7_IN5B, A3 => B7_IN6, 
	A2 => B7_IN15, A1 => B7_IN16B, A0 => B7_IN17);
GLB_B7_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B7_P13, A0 => B7_IN12);
GLB_B7_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B7_P12, A0 => B7_IN9);
GLB_B7_P11 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P11, A3 => B7_IN2B, A2 => B7_IN3B, A1 => B7_IN15, 
	A0 => B7_IN17B);
GLB_B7_P10 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P10, A3 => B7_IN2B, A2 => B7_IN3B, A1 => B7_IN15B, 
	A0 => B7_IN17);
GLB_B7_P7 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P7, A2 => B7_IN1B, A1 => B7_IN2, A0 => B7_IN8);
GLB_B7_P6 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P6, A2 => B7_IN1B, A1 => B7_IN3, A0 => B7_IN8);
GLB_B7_P5 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P5, A2 => B7_IN1, A1 => B7_IN15, A0 => B7_IN17B);
GLB_B7_P4 : PGAND3_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B7_P4, A2 => B7_IN1, A1 => B7_IN15B, A0 => B7_IN17);
GLB_B7_P3 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P3, A1 => B7_IN4B, A0 => B7_IN10);
GLB_B7_P2 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P2, A3 => B7_IN0, A2 => B7_IN4, A1 => B7_IN6, 
	A0 => B7_IN13);
GLB_B7_P1 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => B7_P1, A3 => B7_IN4, A2 => B7_IN11B, A1 => B7_IN13B, 
	A0 => B7_IN16);
GLB_B7_P0 : PGAND4_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => B7_P0, A3 => B7_IN4, A2 => B7_IN5, A1 => B7_IN11B, 
	A0 => B7_IN13B);
GLB_B7_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B7_G3, A0 => GND);
GLB_B7_G2 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B7_G2, A1 => B7_F0, A0 => B7_F5);
GLB_B7_G1 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => B7_G1, A1 => B7_F1, A0 => B7_F4);
GLB_B7_F5 : PGORF75_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B7_F5, A4 => B7_P14, A3 => B7_P15, A2 => B7_P16, 
	A1 => B7_P17, A0 => B7_P18);
GLB_B7_F4 : PGORF72_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B7_F4, A1 => B7_P10, A0 => B7_P11);
GLB_B7_F1 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B7_F1, A3 => B7_P4, A2 => B7_P5, A1 => B7_P6, 
	A0 => B7_P7);
GLB_B7_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => B7_F0, A3 => B7_P0, A2 => B7_P1, A1 => B7_P2, 
	A0 => B7_P3);
GLB_B7_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => B7_CD, A0 => B7_P19);
GLB_B7_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => B7_CLKP, A0 => B7_P12);
GLB_B7_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => B7_P13_xa, A0 => B7_P13);
GLB_B7_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN7, A0 => RE_CPUX_grp);
GLB_B7_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN12, A0 => OR_1401_grpi);
GLB_B7_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN9, A0 => P0_N_177_C_grpi);
GLB_B7_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN2, A0 => P0_N_239_grpi);
GLB_B7_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN8, A0 => P0_N_218_grpi);
GLB_B7_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN3, A0 => P0_N_240_grpi);
GLB_B7_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN15, A0 => P0_N_181_grpi);
GLB_B7_IN17 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN17, A0 => P0_N_174_ffb);
GLB_B7_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN1, A0 => P0_N_238_grpi);
GLB_B7_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN10, A0 => P0_N_216_grpi);
GLB_B7_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN13, A0 => AND_1372_grpi);
GLB_B7_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN6, A0 => P0_N_180_grpi);
GLB_B7_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN0, A0 => P0_N_175_part1_grpi);
GLB_B7_IN16 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN16, A0 => P0_N_176_ffb);
GLB_B7_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN5, A0 => P0_N_179_grpi);
GLB_B7_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => B7_IN4, A0 => P0_N_212_grpi);
GLB_B7_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B7_X2O, A1 => GND, A0 => B7_G1);
GLB_B7_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B7_X1O, A1 => GND, A0 => B7_G2);
GLB_B7_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => B7_X0O, A1 => B7_P13_xa, A0 => B7_G3);
GLB_P0_N_174 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_174, RNESET => L2L_KEYWD_RESET_glbb, CD => B7_CD, CLK => B7_CLKP, 
	D0 => B7_X2O);
GLB_P0_N_176 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_176, RNESET => L2L_KEYWD_RESET_glbb, CD => B7_CD, CLK => B7_CLKP, 
	D0 => B7_X1O);
GLB_P0_N_177 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_177, RNESET => L2L_KEYWD_RESET_glbb, CD => B7_CD, CLK => B7_CLKP, 
	D0 => B7_X0O);
GLB_B7_IN16B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B7_IN16B, A0 => P0_N_176_ffb);
GLB_B7_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B7_IN5B, A0 => P0_N_179_grpi);
GLB_B7_IN3B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B7_IN3B, A0 => P0_N_240_grpi);
GLB_B7_IN2B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B7_IN2B, A0 => P0_N_239_grpi);
GLB_B7_IN1B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B7_IN1B, A0 => P0_N_238_grpi);
GLB_B7_IN17B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B7_IN17B, A0 => P0_N_174_ffb);
GLB_B7_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B7_IN15B, A0 => P0_N_181_grpi);
GLB_B7_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B7_IN4B, A0 => P0_N_212_grpi);
GLB_B7_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B7_IN13B, A0 => AND_1372_grpi);
GLB_B7_IN11B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => B7_IN11B, A0 => OR_872_grpi);
GLB_C0_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C0_P19, A0 => C0_IN12);
GLB_C0_P13 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C0_P13, A5 => C0_IN4, A4 => C0_IN9, A3 => C0_IN11, 
	A2 => C0_IN13B, A1 => C0_IN14, A0 => C0_IN15B);
GLB_C0_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C0_P12, A5 => C0_IN4, A4 => C0_IN9, A3 => C0_IN11B, 
	A2 => C0_IN13B, A1 => C0_IN14B, A0 => C0_IN15);
GLB_C0_P8 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C0_P8, A5 => C0_IN4, A4 => C0_IN9, A3 => C0_IN11B, 
	A2 => C0_IN13B, A1 => C0_IN14B, A0 => C0_IN15B);
GLB_C0_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C0_P4, A0 => C0_IN8);
GLB_C0_P0 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C0_P0, A0 => C0_IN2);
GLB_C0_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C0_G3, A0 => GND);
GLB_C0_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C0_G2, A0 => GND);
GLB_C0_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C0_G1, A0 => GND);
GLB_C0_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C0_G0, A0 => GND);
GLB_C0_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => C0_CD, A0 => C0_P19);
GLB_C0_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => C0_CLKP, A0 => C0_P12);
GLB_C0_P0_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => C0_P0_xa, A0 => C0_P0);
GLB_C0_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => C0_P4_xa, A0 => C0_P4);
GLB_C0_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => C0_P8_xa, A0 => C0_P8);
GLB_D0_N_116_C : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D0_N_116_C, A0 => C0_X1O);
GLB_C0_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => C0_P13_xa, A0 => C0_P13);
GLB_D0_N_3_C : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D0_N_3_C, A0 => C0_X0O);
GLB_C0_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C0_IN12, A0 => RE_PRGMX_grp);
GLB_C0_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C0_IN14, A0 => N_39_grpi);
GLB_C0_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C0_IN11, A0 => N_38_part2_grpi);
GLB_C0_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C0_IN15, A0 => N_37_grpi);
GLB_C0_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C0_IN9, A0 => PRGMX_grp);
GLB_C0_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C0_IN4, A0 => CLKX_grp);
GLB_C0_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C0_IN8, A0 => DI3X_grp);
GLB_C0_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C0_IN2, A0 => DI2X_grp);
GLB_C0_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C0_X3O, A1 => C0_P0_xa, A0 => C0_G0);
GLB_C0_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C0_X2O, A1 => C0_P4_xa, A0 => C0_G1);
GLB_C0_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C0_X1O, A1 => C0_P8_xa, A0 => C0_G2);
GLB_C0_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C0_X0O, A1 => C0_P13_xa, A0 => C0_G3);
GLB_D0_N_41 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_41, RNESET => L2L_KEYWD_RESET_glbb, CD => C0_CD, CLK => C0_CLKP, 
	D0 => C0_X3O);
GLB_D0_N_49 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_49, RNESET => L2L_KEYWD_RESET_glbb, CD => C0_CD, CLK => C0_CLKP, 
	D0 => C0_X2O);
GLB_C0_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C0_IN15B, A0 => N_37_grpi);
GLB_C0_IN14B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C0_IN14B, A0 => N_39_grpi);
GLB_C0_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C0_IN13B, A0 => N_40_grpi);
GLB_C0_IN11B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C0_IN11B, A0 => N_38_part2_grpi);
GLB_C1_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C1_P19, A0 => C1_IN8);
GLB_C1_P18 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P18, A4 => C1_IN0, A3 => C1_IN2, A2 => C1_IN5, 
	A1 => C1_IN12, A0 => C1_IN15);
GLB_C1_P17 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P17, A4 => C1_IN6B, A3 => C1_IN9, A2 => C1_IN12, 
	A1 => C1_IN15, A0 => C1_IN16B);
GLB_C1_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P16, A4 => C1_IN0, A3 => C1_IN2, A2 => C1_IN5, 
	A1 => C1_IN9, A0 => C1_IN15);
GLB_C1_P15 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P15, A5 => C1_IN0, A4 => C1_IN5, A3 => C1_IN6B, 
	A2 => C1_IN12, A1 => C1_IN15, A0 => C1_IN16B);
GLB_C1_P14 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P14, A5 => C1_IN0, A4 => C1_IN5, A3 => C1_IN6B, 
	A2 => C1_IN9, A1 => C1_IN15, A0 => C1_IN16B);
GLB_C1_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C1_P12, A0 => C1_IN10);
GLB_C1_P11 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P11, A2 => C1_IN0B, A1 => C1_IN5, A0 => C1_IN14);
GLB_C1_P10 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P10, A3 => C1_IN0, A2 => C1_IN5B, A1 => C1_IN7B, 
	A0 => C1_IN13B);
GLB_C1_P9 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P9, A3 => C1_IN0B, A2 => C1_IN5, A1 => C1_IN7B, 
	A0 => C1_IN13B);
GLB_C1_P7 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P7, A2 => C1_IN3, A1 => C1_IN13, A0 => C1_IN14B);
GLB_C1_P6 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P6, A2 => C1_IN3, A1 => C1_IN7, A0 => C1_IN14B);
GLB_C1_P5 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P5, A2 => C1_IN0, A1 => C1_IN5B, A0 => C1_IN14);
GLB_C1_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C1_P4, A0 => C1_IN11);
GLB_C1_P3 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P3, A1 => C1_IN1, A0 => C1_IN15B);
GLB_C1_P2 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P2, A3 => C1_IN2, A2 => C1_IN9, A1 => C1_IN12, 
	A0 => C1_IN15);
GLB_C1_P1 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C1_P1, A3 => C1_IN2B, A2 => C1_IN4B, A1 => C1_IN6, 
	A0 => C1_IN15);
GLB_C1_P0 : PGAND4_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C1_P0, A3 => C1_IN2B, A2 => C1_IN4B, A1 => C1_IN15, 
	A0 => C1_IN16);
GLB_C1_G3 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C1_G3, A1 => C1_F1, A0 => C1_F4);
GLB_C1_G2 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C1_G2, A1 => C1_F0, A0 => C1_F5);
GLB_C1_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C1_G1, A0 => GND);
GLB_C1_F5 : PGORF75_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C1_F5, A4 => C1_P14, A3 => C1_P15, A2 => C1_P16, 
	A1 => C1_P17, A0 => C1_P18);
GLB_C1_F4 : PGORF73_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C1_F4, A2 => C1_P9, A1 => C1_P10, A0 => C1_P11);
GLB_C1_F1 : PGORF73_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C1_F1, A2 => C1_P5, A1 => C1_P6, A0 => C1_P7);
GLB_C1_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C1_F0, A3 => C1_P0, A2 => C1_P1, A1 => C1_P2, 
	A0 => C1_P3);
GLB_C1_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => C1_CD, A0 => C1_P19);
GLB_C1_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => C1_CLKP, A0 => C1_P12);
GLB_C1_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => C1_P4_xa, A0 => C1_P4);
GLB_C1_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN8, A0 => RE_CPUX_grp);
GLB_C1_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN10, A0 => P0_N_181_C_grpi);
GLB_C1_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN5, A0 => P0_N_174_grpi);
GLB_C1_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN13, A0 => P0_N_239_grpi);
GLB_C1_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN7, A0 => P0_N_240_grpi);
GLB_C1_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN3, A0 => P0_N_218_grpi);
GLB_C1_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN14, A0 => P0_N_238_grpi);
GLB_C1_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN0, A0 => P0_N_181_grpi);
GLB_C1_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN11, A0 => OR_1400_grpi);
GLB_C1_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN1, A0 => P0_N_216_grpi);
GLB_C1_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN12, A0 => P0_N_175_part2_grpi);
GLB_C1_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN9, A0 => P0_N_180_grpi);
GLB_C1_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN2, A0 => AND_1372_grpi);
GLB_C1_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN6, A0 => P0_N_176_grpi);
GLB_C1_IN16 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN16, A0 => P0_N_179_ffb);
GLB_C1_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C1_IN15, A0 => P0_N_212_grpi);
GLB_C1_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C1_X2O, A1 => C1_P4_xa, A0 => C1_G1);
GLB_C1_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C1_X1O, A1 => GND, A0 => C1_G2);
GLB_C1_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C1_X0O, A1 => GND, A0 => C1_G3);
GLB_P0_N_178 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_178, RNESET => L2L_KEYWD_RESET_glbb, CD => C1_CD, CLK => C1_CLKP, 
	D0 => C1_X2O);
GLB_P0_N_179 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_179, RNESET => L2L_KEYWD_RESET_glbb, CD => C1_CD, CLK => C1_CLKP, 
	D0 => C1_X1O);
GLB_P0_N_181 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_181, RNESET => L2L_KEYWD_RESET_glbb, CD => C1_CD, CLK => C1_CLKP, 
	D0 => C1_X0O);
GLB_C1_IN16B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C1_IN16B, A0 => P0_N_179_ffb);
GLB_C1_IN6B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C1_IN6B, A0 => P0_N_176_grpi);
GLB_C1_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C1_IN13B, A0 => P0_N_239_grpi);
GLB_C1_IN7B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C1_IN7B, A0 => P0_N_240_grpi);
GLB_C1_IN0B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C1_IN0B, A0 => P0_N_181_grpi);
GLB_C1_IN14B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C1_IN14B, A0 => P0_N_238_grpi);
GLB_C1_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C1_IN5B, A0 => P0_N_174_grpi);
GLB_C1_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C1_IN15B, A0 => P0_N_212_grpi);
GLB_C1_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C1_IN4B, A0 => OR_872_grpi);
GLB_C1_IN2B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C1_IN2B, A0 => AND_1372_grpi);
GLB_C2_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C2_P19, A0 => C2_IN8);
GLB_C2_P17 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P17, A6 => C2_IN1B, A5 => C2_IN4, A4 => C2_IN7, 
	A3 => C2_IN9B, A2 => C2_IN10, A1 => C2_IN13B, A0 => C2_IN14B);
GLB_C2_P16 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P16, A1 => C2_IN4B, A0 => C2_IN9);
GLB_C2_P15 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P15, A1 => C2_IN9, A0 => C2_IN10B);
GLB_C2_P14 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P14, A4 => C2_IN1B, A3 => C2_IN4, A2 => C2_IN9B, 
	A1 => C2_IN10, A0 => C2_IN11);
GLB_C2_P13 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C2_P13, A4 => C2_IN1, A3 => C2_IN4, A2 => C2_IN9B, 
	A1 => C2_IN10, A0 => C2_IN11B);
GLB_C2_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C2_P12, A0 => C2_IN12);
GLB_C2_P11 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P11, A1 => C2_IN16B, A0 => C2_IN17);
GLB_C2_P10 : PGAND10_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P10, A9 => C2_IN1B, A8 => C2_IN4, A7 => C2_IN6B, 
	A6 => C2_IN7, A5 => C2_IN9B, A4 => C2_IN10, A3 => C2_IN11B, 
	A2 => C2_IN13B, A1 => C2_IN14B, A0 => C2_IN16);
GLB_C2_P8 : PGAND10_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C2_P8, A9 => C2_IN1B, A8 => C2_IN3B, A7 => C2_IN4, 
	A6 => C2_IN7, A5 => C2_IN9B, A4 => C2_IN10, A3 => C2_IN11B, 
	A2 => C2_IN13B, A1 => C2_IN14B, A0 => C2_IN17B);
GLB_C2_P7 : PGBUFI_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P7, A0 => C2_IN17B);
GLB_C2_P6 : PGAND9_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P6, A8 => C2_IN1B, A7 => C2_IN3, A6 => C2_IN4, 
	A5 => C2_IN7, A4 => C2_IN9B, A3 => C2_IN10, A2 => C2_IN11B, 
	A1 => C2_IN13B, A0 => C2_IN14B);
GLB_C2_P3 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P3, A1 => C2_IN16, A0 => C2_IN17B);
GLB_C2_P2 : PGAND9_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P2, A8 => C2_IN1B, A7 => C2_IN4, A6 => C2_IN7, 
	A5 => C2_IN9B, A4 => C2_IN10, A3 => C2_IN11B, A2 => C2_IN13B, 
	A1 => C2_IN14B, A0 => C2_IN16);
GLB_C2_P1 : PGAND10_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C2_P1, A9 => C2_IN1B, A8 => C2_IN4, A7 => C2_IN6, 
	A6 => C2_IN7, A5 => C2_IN9B, A4 => C2_IN10, A3 => C2_IN11B, 
	A2 => C2_IN13B, A1 => C2_IN14B, A0 => C2_IN17B);
GLB_C2_P0 : PGAND10_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C2_P0, A9 => C2_IN1B, A8 => C2_IN4, A7 => C2_IN6B, 
	A6 => C2_IN7, A5 => C2_IN9B, A4 => C2_IN10, A3 => C2_IN11B, 
	A2 => C2_IN13B, A1 => C2_IN14B, A0 => C2_IN17);
GLB_C2_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C2_G3, A0 => C2_F5);
GLB_C2_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C2_G2, A0 => C2_F1);
GLB_C2_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C2_G1, A0 => C2_F0);
GLB_C2_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C2_G0, A0 => C2_F4);
GLB_C2_F5 : PGORF75_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C2_F5, A4 => C2_P13, A3 => C2_P14, A2 => C2_P15, 
	A1 => C2_P16, A0 => C2_P17);
GLB_C2_F4 : PGORF72_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C2_F4, A1 => C2_P10, A0 => C2_P11);
GLB_C2_F1 : PGORF72_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C2_F1, A1 => C2_P6, A0 => C2_P7);
GLB_C2_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C2_F0, A3 => C2_P0, A2 => C2_P1, A1 => C2_P2, 
	A0 => C2_P3);
GLB_C2_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => C2_CD, A0 => C2_P19);
GLB_C2_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => C2_CLKP, A0 => C2_P12);
GLB_C2_X2MO : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C2_X2MO, A0 => C2_G0);
GLB_C2_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => C2_P8_xa, A0 => C2_P8);
GLB_N_40_C : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => N_40_C, A0 => C2_X0O);
GLB_C2_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN8, A0 => RE_CPUX_grp);
GLB_C2_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN9, A0 => PRGMX_grp);
GLB_C2_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN11, A0 => F0_N_7_grpi);
GLB_C2_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN1, A0 => F0_N_6_grpi);
GLB_C2_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN12, A0 => N_40_C_grpi);
GLB_C2_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN3, A0 => P0_N_218_grpi);
GLB_C2_IN16 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN16, A0 => N_39_ffb);
GLB_C2_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN6, A0 => P0_N_217_grpi);
GLB_C2_IN17 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN17, A0 => N_40_ffb);
GLB_C2_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN10, A0 => ENX_grp);
GLB_C2_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN7, A0 => P0_N_240_grpi);
GLB_C2_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C2_IN4, A0 => CLKX_grp);
GLB_C2_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C2_X2O, A1 => C2_X2MO, A0 => C2_G1);
GLB_C2_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C2_X1O, A1 => C2_P8_xa, A0 => C2_G2);
GLB_C2_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C2_X0O, A1 => GND, A0 => C2_G3);
GLB_N_39 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_39, RNESET => L2L_KEYWD_RESET_glbb, CD => C2_CD, CLK => C2_CLKP, 
	D0 => C2_X2O);
GLB_N_40 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_40, RNESET => L2L_KEYWD_RESET_glbb, CD => C2_CD, CLK => C2_CLKP, 
	D0 => C2_X1O);
GLB_C2_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN4B, A0 => CLKX_grp);
GLB_C2_IN10B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN10B, A0 => ENX_grp);
GLB_C2_IN16B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN16B, A0 => N_39_ffb);
GLB_C2_IN3B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN3B, A0 => P0_N_218_grpi);
GLB_C2_IN17B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN17B, A0 => N_40_ffb);
GLB_C2_IN14B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN14B, A0 => P0_N_238_grpi);
GLB_C2_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN13B, A0 => P0_N_239_grpi);
GLB_C2_IN11B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN11B, A0 => F0_N_7_grpi);
GLB_C2_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN9B, A0 => PRGMX_grp);
GLB_C2_IN6B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN6B, A0 => P0_N_217_grpi);
GLB_C2_IN1B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C2_IN1B, A0 => F0_N_6_grpi);
GLB_C3_P19 : PGAND7_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C3_P19, A6 => C3_IN5, A5 => C3_IN7B, A4 => C3_IN9B, 
	A3 => C3_IN10, A2 => C3_IN11, A1 => C3_IN13, A0 => C3_IN15);
GLB_C3_P18 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P18, A6 => C3_IN5, A5 => C3_IN7B, A4 => C3_IN9B, 
	A3 => C3_IN10, A2 => C3_IN11, A1 => C3_IN12, A0 => C3_IN15);
GLB_C3_P17 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P17, A6 => C3_IN5, A5 => C3_IN6, A4 => C3_IN7B, 
	A3 => C3_IN9B, A2 => C3_IN11, A1 => C3_IN13, A0 => C3_IN15);
GLB_C3_P16 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P16, A6 => C3_IN5, A5 => C3_IN6, A4 => C3_IN7, 
	A3 => C3_IN9, A2 => C3_IN11, A1 => C3_IN13, A0 => C3_IN15);
GLB_C3_P15 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P15, A6 => C3_IN5, A5 => C3_IN7, A4 => C3_IN9, 
	A3 => C3_IN10, A2 => C3_IN11, A1 => C3_IN12, A0 => C3_IN15);
GLB_C3_P14 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P14, A6 => C3_IN5, A5 => C3_IN7, A4 => C3_IN9, 
	A3 => C3_IN10, A2 => C3_IN11, A1 => C3_IN13, A0 => C3_IN15);
GLB_C3_P13 : PGAND7_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C3_P13, A6 => C3_IN5, A5 => C3_IN6, A4 => C3_IN7B, 
	A3 => C3_IN9B, A2 => C3_IN11, A1 => C3_IN12, A0 => C3_IN15);
GLB_C3_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C3_P12, A5 => C3_IN7, A4 => C3_IN9, A3 => C3_IN10, 
	A2 => C3_IN12, A1 => C3_IN13, A0 => C3_IN15);
GLB_C3_P11 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P11, A5 => C3_IN6, A4 => C3_IN7B, A3 => C3_IN9B, 
	A2 => C3_IN12, A1 => C3_IN13, A0 => C3_IN15);
GLB_C3_P10 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P10, A5 => C3_IN7B, A4 => C3_IN9B, A3 => C3_IN10, 
	A2 => C3_IN12, A1 => C3_IN13, A0 => C3_IN15);
GLB_C3_P9 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P9, A6 => C3_IN5, A5 => C3_IN6, A4 => C3_IN7, 
	A3 => C3_IN9, A2 => C3_IN11, A1 => C3_IN12, A0 => C3_IN15);
GLB_C3_P8 : PGAND2_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C3_P8, A1 => C3_IN6, A0 => C3_IN10);
GLB_C3_P7 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P7, A4 => C3_IN6B, A3 => C3_IN7, A2 => C3_IN9B, 
	A1 => C3_IN10B, A0 => C3_IN15);
GLB_C3_P6 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P6, A4 => C3_IN4B, A3 => C3_IN7B, A2 => C3_IN9, 
	A1 => C3_IN15, A0 => C3_IN16B);
GLB_C3_P5 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P5, A4 => C3_IN4B, A3 => C3_IN7, A2 => C3_IN9B, 
	A1 => C3_IN15, A0 => C3_IN16B);
GLB_C3_P4 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C3_P4, A5 => C3_IN6, A4 => C3_IN7, A3 => C3_IN9, 
	A2 => C3_IN12, A1 => C3_IN13, A0 => C3_IN15);
GLB_C3_P3 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P3, A1 => C3_IN0, A0 => C3_IN15B);
GLB_C3_P2 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P2, A3 => C3_IN7, A2 => C3_IN9, A1 => C3_IN15, 
	A0 => C3_IN16);
GLB_C3_P1 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C3_P1, A3 => C3_IN7B, A2 => C3_IN9B, A1 => C3_IN15, 
	A0 => C3_IN16);
GLB_C3_P0 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C3_P0, A4 => C3_IN6B, A3 => C3_IN7B, A2 => C3_IN9, 
	A1 => C3_IN10B, A0 => C3_IN15);
GLB_C3_G3 : PGORF74_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C3_G3, A3 => C3_F0, A2 => C3_F1, A1 => C3_F4, 
	A0 => C3_F5);
GLB_C3_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C3_G2, A0 => GND);
GLB_C3_F5 : PGORF77_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C3_F5, A6 => C3_P13, A5 => C3_P14, A4 => C3_P15, 
	A3 => C3_P16, A2 => C3_P19, A1 => C3_P17, A0 => C3_P18);
GLB_C3_F4 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C3_F4, A3 => C3_P9, A2 => C3_P10, A1 => C3_P11, 
	A0 => C3_P12);
GLB_C3_F1 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C3_F1, A3 => C3_P4, A2 => C3_P5, A1 => C3_P6, 
	A0 => C3_P7);
GLB_C3_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C3_F0, A3 => C3_P0, A2 => C3_P1, A1 => C3_P2, 
	A0 => C3_P3);
GLB_C3_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => C3_P8_xa, A0 => C3_P8);
GLB_AND_1372 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => AND_1372, A0 => C3_X1O);
GLB_OR_1401 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => OR_1401, A0 => C3_X0O);
GLB_C3_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN11, A0 => P0_N_181_grpi);
GLB_C3_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN5, A0 => P0_N_174_grpi);
GLB_C3_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN10, A0 => P0_N_179_grpi);
GLB_C3_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN13, A0 => P0_N_180_grpi);
GLB_C3_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN12, A0 => P0_N_175_part2_grpi);
GLB_C3_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN6, A0 => P0_N_176_grpi);
GLB_C3_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN0, A0 => P0_N_214_grpi);
GLB_C3_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN7, A0 => P0_N_177_grpi);
GLB_C3_IN16 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN16, A0 => AND_1372_ffb);
GLB_C3_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN15, A0 => P0_N_212_grpi);
GLB_C3_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C3_IN9, A0 => P0_N_178_grpi);
GLB_C3_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C3_X1O, A1 => C3_P8_xa, A0 => C3_G2);
GLB_C3_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C3_X0O, A1 => GND, A0 => C3_G3);
GLB_C3_IN16B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C3_IN16B, A0 => AND_1372_ffb);
GLB_C3_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C3_IN4B, A0 => OR_872_grpi);
GLB_C3_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C3_IN15B, A0 => P0_N_212_grpi);
GLB_C3_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C3_IN9B, A0 => P0_N_178_grpi);
GLB_C3_IN10B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C3_IN10B, A0 => P0_N_179_grpi);
GLB_C3_IN7B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C3_IN7B, A0 => P0_N_177_grpi);
GLB_C3_IN6B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C3_IN6B, A0 => P0_N_176_grpi);
GLB_C4_P18 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P18, A6 => C4_IN5, A5 => C4_IN7B, A4 => C4_IN9B, 
	A3 => C4_IN10, A2 => C4_IN11, A1 => C4_IN13, A0 => C4_IN15);
GLB_C4_P17 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P17, A6 => C4_IN5, A5 => C4_IN7B, A4 => C4_IN9B, 
	A3 => C4_IN10, A2 => C4_IN11, A1 => C4_IN12, A0 => C4_IN15);
GLB_C4_P16 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P16, A6 => C4_IN5, A5 => C4_IN7, A4 => C4_IN9, 
	A3 => C4_IN10, A2 => C4_IN11, A1 => C4_IN12, A0 => C4_IN15);
GLB_C4_P15 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P15, A6 => C4_IN5, A5 => C4_IN7, A4 => C4_IN9, 
	A3 => C4_IN10, A2 => C4_IN11, A1 => C4_IN13, A0 => C4_IN15);
GLB_C4_P14 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P14, A6 => C4_IN5, A5 => C4_IN6, A4 => C4_IN7B, 
	A3 => C4_IN9B, A2 => C4_IN11, A1 => C4_IN12, A0 => C4_IN15);
GLB_C4_P13 : PGAND7_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C4_P13, A6 => C4_IN5, A5 => C4_IN6, A4 => C4_IN7B, 
	A3 => C4_IN9B, A2 => C4_IN11, A1 => C4_IN13, A0 => C4_IN15);
GLB_C4_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C4_P12, A5 => C4_IN7, A4 => C4_IN9, A3 => C4_IN10, 
	A2 => C4_IN12, A1 => C4_IN13, A0 => C4_IN15);
GLB_C4_P11 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P11, A5 => C4_IN6, A4 => C4_IN7B, A3 => C4_IN9B, 
	A2 => C4_IN12, A1 => C4_IN13, A0 => C4_IN15);
GLB_C4_P10 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P10, A5 => C4_IN7B, A4 => C4_IN9B, A3 => C4_IN10, 
	A2 => C4_IN12, A1 => C4_IN13, A0 => C4_IN15);
GLB_C4_P9 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P9, A6 => C4_IN5, A5 => C4_IN6, A4 => C4_IN7, 
	A3 => C4_IN9, A2 => C4_IN11, A1 => C4_IN12, A0 => C4_IN15);
GLB_C4_P8 : PGAND7_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C4_P8, A6 => C4_IN5, A5 => C4_IN6, A4 => C4_IN7, 
	A3 => C4_IN9, A2 => C4_IN11, A1 => C4_IN13, A0 => C4_IN15);
GLB_C4_P7 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P7, A4 => C4_IN6B, A3 => C4_IN7, A2 => C4_IN9B, 
	A1 => C4_IN10B, A0 => C4_IN15);
GLB_C4_P6 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P6, A4 => C4_IN2B, A3 => C4_IN4B, A2 => C4_IN7B, 
	A1 => C4_IN9, A0 => C4_IN15);
GLB_C4_P5 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P5, A4 => C4_IN2B, A3 => C4_IN4B, A2 => C4_IN7, 
	A1 => C4_IN9B, A0 => C4_IN15);
GLB_C4_P4 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C4_P4, A5 => C4_IN6, A4 => C4_IN7, A3 => C4_IN9, 
	A2 => C4_IN12, A1 => C4_IN13, A0 => C4_IN15);
GLB_C4_P3 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P3, A1 => C4_IN0, A0 => C4_IN15B);
GLB_C4_P2 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P2, A3 => C4_IN2, A2 => C4_IN7, A1 => C4_IN9, 
	A0 => C4_IN15);
GLB_C4_P1 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C4_P1, A3 => C4_IN2, A2 => C4_IN7B, A1 => C4_IN9B, 
	A0 => C4_IN15);
GLB_C4_P0 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C4_P0, A4 => C4_IN6B, A3 => C4_IN7B, A2 => C4_IN9, 
	A1 => C4_IN10B, A0 => C4_IN15);
GLB_C4_G3 : PGORF74_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C4_G3, A3 => C4_F0, A2 => C4_F1, A1 => C4_F4, 
	A0 => C4_F5);
GLB_C4_F5 : PGORF76_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C4_F5, A5 => C4_P13, A4 => C4_P14, A3 => C4_P15, 
	A2 => C4_P16, A1 => C4_P17, A0 => C4_P18);
GLB_C4_F4 : PGORF75_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C4_F4, A4 => C4_P8, A3 => C4_P9, A2 => C4_P10, 
	A1 => C4_P11, A0 => C4_P12);
GLB_C4_F1 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C4_F1, A3 => C4_P4, A2 => C4_P5, A1 => C4_P6, 
	A0 => C4_P7);
GLB_C4_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C4_F0, A3 => C4_P0, A2 => C4_P1, A1 => C4_P2, 
	A0 => C4_P3);
GLB_OR_1400 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => OR_1400, A0 => C4_X0O);
GLB_C4_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN10, A0 => P0_N_179_grpi);
GLB_C4_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN11, A0 => P0_N_181_grpi);
GLB_C4_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN5, A0 => P0_N_174_grpi);
GLB_C4_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN13, A0 => P0_N_180_grpi);
GLB_C4_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN12, A0 => P0_N_175_part2_grpi);
GLB_C4_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN6, A0 => P0_N_176_grpi);
GLB_C4_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN0, A0 => P0_N_214_grpi);
GLB_C4_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN7, A0 => P0_N_177_grpi);
GLB_C4_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN2, A0 => AND_1372_grpi);
GLB_C4_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN15, A0 => P0_N_212_grpi);
GLB_C4_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C4_IN9, A0 => P0_N_178_grpi);
GLB_C4_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C4_X0O, A1 => GND, A0 => C4_G3);
GLB_C4_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C4_IN4B, A0 => OR_872_grpi);
GLB_C4_IN2B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C4_IN2B, A0 => AND_1372_grpi);
GLB_C4_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C4_IN15B, A0 => P0_N_212_grpi);
GLB_C4_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C4_IN9B, A0 => P0_N_178_grpi);
GLB_C4_IN10B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C4_IN10B, A0 => P0_N_179_grpi);
GLB_C4_IN7B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C4_IN7B, A0 => P0_N_177_grpi);
GLB_C4_IN6B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C4_IN6B, A0 => P0_N_176_grpi);
GLB_C5_P19 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C5_P19, A4 => C5_IN0, A3 => C5_IN3B, A2 => C5_IN5, 
	A1 => C5_IN13, A0 => C5_IN15B);
GLB_C5_P18 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C5_P18, A4 => C5_IN3, A3 => C5_IN5B, A2 => C5_IN11, 
	A1 => C5_IN13B, A0 => C5_IN15B);
GLB_C5_P17 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C5_P17, A4 => C5_IN1, A3 => C5_IN3, A2 => C5_IN5B, 
	A1 => C5_IN13, A0 => C5_IN15B);
GLB_C5_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C5_P16, A4 => C5_IN3B, A3 => C5_IN5, A2 => C5_IN7, 
	A1 => C5_IN13B, A0 => C5_IN15B);
GLB_C5_P15 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C5_P15, A4 => C5_IN3B, A3 => C5_IN5B, A2 => C5_IN12, 
	A1 => C5_IN13, A0 => C5_IN15B);
GLB_C5_P14 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C5_P14, A4 => C5_IN3B, A3 => C5_IN4, A2 => C5_IN5B, 
	A1 => C5_IN13B, A0 => C5_IN15);
GLB_C5_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C5_P12, A0 => C5_IN8);
GLB_C5_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C5_P8, A0 => C5_IN9);
GLB_C5_P3 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C5_P3, A4 => C5_IN3B, A3 => C5_IN5B, A2 => C5_IN6, 
	A1 => C5_IN13B, A0 => C5_IN15B);
GLB_C5_P2 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C5_P2, A4 => C5_IN3, A3 => C5_IN5, A2 => C5_IN10, 
	A1 => C5_IN13, A0 => C5_IN15B);
GLB_C5_P1 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C5_P1, A4 => C5_IN2, A3 => C5_IN3, A2 => C5_IN5, 
	A1 => C5_IN13B, A0 => C5_IN15B);
GLB_C5_P0 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C5_P0, A4 => C5_IN3B, A3 => C5_IN5B, A2 => C5_IN13, 
	A1 => C5_IN14, A0 => C5_IN15);
GLB_C5_G3 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C5_G3, A1 => C5_F0, A0 => C5_F5);
GLB_C5_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C5_G2, A0 => GND);
GLB_C5_F5 : PGORF76_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C5_F5, A5 => C5_P14, A4 => C5_P15, A3 => C5_P16, 
	A2 => C5_P19, A1 => C5_P17, A0 => C5_P18);
GLB_C5_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C5_F0, A3 => C5_P0, A2 => C5_P1, A1 => C5_P2, 
	A0 => C5_P3);
GLB_C5_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => C5_CD, A0 => C5_P12);
GLB_C5_CLK : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C5_CLK, A0 => D0_N_116_C_ck2f);
GLB_C5_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => C5_P8_xa, A0 => C5_P8);
GLB_OR_1396 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => OR_1396, A0 => C5_X0O);
GLB_C5_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN0, A0 => D0_N_6_grpi);
GLB_C5_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN11, A0 => D0_N_5_grpi);
GLB_C5_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN1, A0 => D0_N_4_grpi);
GLB_C5_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN7, A0 => D0_N_7_grpi);
GLB_C5_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN12, A0 => D0_N_8_grpi);
GLB_C5_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN4, A0 => D0_N_98_grpi);
GLB_C5_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN8, A0 => RE_PRGMX_grp);
GLB_C5_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN9, A0 => DI1X_grp);
GLB_C5_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN6, A0 => D0_N_116_grpi);
GLB_C5_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN10, A0 => D0_N_2_grpi);
GLB_C5_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN5, A0 => N_39_grpi);
GLB_C5_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN3, A0 => N_38_part1_grpi);
GLB_C5_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN2, A0 => D0_N_3_grpi);
GLB_C5_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN15, A0 => N_37_grpi);
GLB_C5_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN14, A0 => D0_N_31_grpi);
GLB_C5_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C5_IN13, A0 => N_40_grpi);
GLB_C5_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C5_X1O, A1 => C5_P8_xa, A0 => C5_G2);
GLB_C5_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C5_X0O, A1 => GND, A0 => C5_G3);
GLB_D0_N_115 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_115, RNESET => L2L_KEYWD_RESET_glbb, CD => C5_CD, CLK => C5_CLK, 
	D0 => C5_X1O);
GLB_C5_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C5_IN15B, A0 => N_37_grpi);
GLB_C5_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C5_IN13B, A0 => N_40_grpi);
GLB_C5_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C5_IN5B, A0 => N_39_grpi);
GLB_C5_IN3B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C5_IN3B, A0 => N_38_part1_grpi);
GLB_C6_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C6_P19, A0 => C6_IN8);
GLB_C6_P18 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C6_P18, A2 => C6_IN2, A1 => C6_IN13, A0 => C6_IN14B);
GLB_C6_P17 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C6_P17, A2 => C6_IN2, A1 => C6_IN12, A0 => C6_IN14B);
GLB_C6_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C6_P16, A4 => C6_IN11B, A3 => C6_IN12B, A2 => C6_IN13B, 
	A1 => C6_IN14B, A0 => C6_IN16B);
GLB_C6_P15 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C6_P15, A4 => C6_IN5, A3 => C6_IN11, A2 => C6_IN12B, 
	A1 => C6_IN13B, A0 => C6_IN16);
GLB_C6_P14 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C6_P14, A4 => C6_IN5B, A3 => C6_IN12B, A2 => C6_IN13B, 
	A1 => C6_IN14B, A0 => C6_IN16B);
GLB_C6_P13 : PGAND3_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C6_P13, A2 => C6_IN5, A1 => C6_IN11, A0 => C6_IN14);
GLB_C6_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C6_P12, A0 => C6_IN6);
GLB_C6_P3 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C6_P3, A2 => C6_IN9, A1 => C6_IN14, A0 => C6_IN16B);
GLB_C6_P2 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C6_P2, A2 => C6_IN9B, A1 => C6_IN14, A0 => C6_IN16);
GLB_C6_P1 : PGAND4_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C6_P1, A3 => C6_IN9B, A2 => C6_IN12B, A1 => C6_IN13B, 
	A0 => C6_IN14B);
GLB_C6_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C6_G3, A0 => C6_F5);
GLB_C6_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C6_G2, A0 => C6_F0);
GLB_C6_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C6_G0, A0 => C6_F0);
GLB_C6_F5 : PGORF76_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C6_F5, A5 => C6_P13, A4 => C6_P14, A3 => C6_P15, 
	A2 => C6_P16, A1 => C6_P17, A0 => C6_P18);
GLB_C6_F0 : PGORF73_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C6_F0, A2 => C6_P1, A1 => C6_P2, A0 => C6_P3);
GLB_C6_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => C6_CD, A0 => C6_P19);
GLB_C6_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => C6_CLKP, A0 => C6_P12);
GLB_C6_X3MO : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C6_X3MO, A0 => C6_G3);
GLB_C6_X0MO : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C6_X0MO, A0 => C6_G2);
GLB_C6_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C6_IN8, A0 => RE_CPUX_grp);
GLB_C6_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C6_IN13, A0 => P0_N_239_grpi);
GLB_C6_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C6_IN12, A0 => P0_N_240_grpi);
GLB_C6_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C6_IN2, A0 => P0_N_217_grpi);
GLB_C6_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C6_IN11, A0 => P0_N_181_grpi);
GLB_C6_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C6_IN5, A0 => P0_N_174_grpi);
GLB_C6_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C6_IN6, A0 => P0_N_177_C_grpi);
GLB_C6_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C6_IN9, A0 => P0_N_180_grpi);
GLB_C6_IN16 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C6_IN16, A0 => P0_N_175_part2_ffb);
GLB_C6_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C6_IN14, A0 => P0_N_238_grpi);
GLB_C6_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C6_X3O, A1 => C6_X3MO, A0 => C6_G0);
GLB_C6_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C6_X0O, A1 => C6_X0MO, A0 => C6_G3);
GLB_P0_N_175_part1 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_175_part1, RNESET => L2L_KEYWD_RESET_glbb, CD => C6_CD, CLK => C6_CLKP, 
	D0 => C6_X3O);
GLB_P0_N_175_part2 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_175_part2, RNESET => L2L_KEYWD_RESET_glbb, CD => C6_CD, CLK => C6_CLKP, 
	D0 => C6_X0O);
GLB_C6_IN11B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C6_IN11B, A0 => P0_N_181_grpi);
GLB_C6_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C6_IN5B, A0 => P0_N_174_grpi);
GLB_C6_IN16B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C6_IN16B, A0 => P0_N_175_part2_ffb);
GLB_C6_IN14B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C6_IN14B, A0 => P0_N_238_grpi);
GLB_C6_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C6_IN13B, A0 => P0_N_239_grpi);
GLB_C6_IN12B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C6_IN12B, A0 => P0_N_240_grpi);
GLB_C6_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C6_IN9B, A0 => P0_N_180_grpi);
GLB_C7_P19 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C7_P19, A4 => C7_IN1, A3 => C7_IN3, A2 => C7_IN5, 
	A1 => C7_IN6B, A0 => C7_IN11B);
GLB_C7_P18 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C7_P18, A4 => C7_IN2, A3 => C7_IN3, A2 => C7_IN5B, 
	A1 => C7_IN6, A0 => C7_IN11B);
GLB_C7_P17 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C7_P17, A4 => C7_IN3, A3 => C7_IN5B, A2 => C7_IN6B, 
	A1 => C7_IN10, A0 => C7_IN11B);
GLB_C7_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C7_P16, A4 => C7_IN3, A3 => C7_IN5, A2 => C7_IN6, 
	A1 => C7_IN11B, A0 => C7_IN15);
GLB_C7_P15 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C7_P15, A4 => C7_IN3B, A3 => C7_IN5B, A2 => C7_IN6B, 
	A1 => C7_IN11, A0 => C7_IN12);
GLB_C7_P14 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C7_P14, A4 => C7_IN3B, A3 => C7_IN5B, A2 => C7_IN6, 
	A1 => C7_IN7, A0 => C7_IN11);
GLB_C7_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C7_P12, A0 => C7_IN8);
GLB_C7_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C7_P8, A0 => C7_IN0);
GLB_C7_P3 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C7_P3, A4 => C7_IN3B, A3 => C7_IN5B, A2 => C7_IN6B, 
	A1 => C7_IN11B, A0 => C7_IN14);
GLB_C7_P2 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C7_P2, A4 => C7_IN3B, A3 => C7_IN5B, A2 => C7_IN6, 
	A1 => C7_IN11B, A0 => C7_IN13);
GLB_C7_P1 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => C7_P1, A4 => C7_IN3B, A3 => C7_IN4, A2 => C7_IN5, 
	A1 => C7_IN6B, A0 => C7_IN11B);
GLB_C7_P0 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => C7_P0, A4 => C7_IN3B, A3 => C7_IN5, A2 => C7_IN6, 
	A1 => C7_IN9, A0 => C7_IN11B);
GLB_C7_G3 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C7_G3, A1 => C7_F0, A0 => C7_F5);
GLB_C7_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => C7_G2, A0 => GND);
GLB_C7_F5 : PGORF76_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C7_F5, A5 => C7_P14, A4 => C7_P15, A3 => C7_P16, 
	A2 => C7_P19, A1 => C7_P17, A0 => C7_P18);
GLB_C7_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => C7_F0, A3 => C7_P0, A2 => C7_P1, A1 => C7_P2, 
	A0 => C7_P3);
GLB_C7_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => C7_CD, A0 => C7_P12);
GLB_C7_CLK : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C7_CLK, A0 => D0_N_116_C_ck2f);
GLB_C7_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => C7_P8_xa, A0 => C7_P8);
GLB_OR_1395 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => OR_1395, A0 => C7_X0O);
GLB_C7_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN1, A0 => D0_N_39_grpi);
GLB_C7_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN2, A0 => D0_N_38_grpi);
GLB_C7_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN10, A0 => D0_N_37_grpi);
GLB_C7_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN15, A0 => D0_N_40_grpi);
GLB_C7_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN3, A0 => N_38_part1_grpi);
GLB_C7_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN12, A0 => D0_N_41_grpi);
GLB_C7_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN11, A0 => N_37_grpi);
GLB_C7_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN7, A0 => D0_N_42_grpi);
GLB_C7_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN8, A0 => RE_PRGMX_grp);
GLB_C7_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN0, A0 => DI0X_grp);
GLB_C7_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN14, A0 => D0_N_114_grpi);
GLB_C7_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN13, A0 => D0_N_34_grpi);
GLB_C7_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN4, A0 => D0_N_35_grpi);
GLB_C7_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN9, A0 => D0_N_36_grpi);
GLB_C7_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN6, A0 => N_40_grpi);
GLB_C7_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => C7_IN5, A0 => N_39_grpi);
GLB_C7_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C7_X1O, A1 => C7_P8_xa, A0 => C7_G2);
GLB_C7_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => C7_X0O, A1 => GND, A0 => C7_G3);
GLB_D0_N_116 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_116, RNESET => L2L_KEYWD_RESET_glbb, CD => C7_CD, CLK => C7_CLK, 
	D0 => C7_X1O);
GLB_C7_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C7_IN5B, A0 => N_39_grpi);
GLB_C7_IN6B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C7_IN6B, A0 => N_40_grpi);
GLB_C7_IN11B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C7_IN11B, A0 => N_37_grpi);
GLB_C7_IN3B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => C7_IN3B, A0 => N_38_part1_grpi);
GLB_D0_P19 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D0_P19, A4 => D0_IN0, A3 => D0_IN3B, A2 => D0_IN5, 
	A1 => D0_IN13, A0 => D0_IN15B);
GLB_D0_P18 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D0_P18, A4 => D0_IN3, A3 => D0_IN5B, A2 => D0_IN11, 
	A1 => D0_IN13B, A0 => D0_IN15B);
GLB_D0_P17 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D0_P17, A4 => D0_IN1, A3 => D0_IN3, A2 => D0_IN5B, 
	A1 => D0_IN13, A0 => D0_IN15B);
GLB_D0_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D0_P16, A4 => D0_IN3B, A3 => D0_IN5, A2 => D0_IN7, 
	A1 => D0_IN13B, A0 => D0_IN15B);
GLB_D0_P15 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D0_P15, A4 => D0_IN3B, A3 => D0_IN5B, A2 => D0_IN12, 
	A1 => D0_IN13, A0 => D0_IN15B);
GLB_D0_P14 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D0_P14, A4 => D0_IN3B, A3 => D0_IN4, A2 => D0_IN5B, 
	A1 => D0_IN13B, A0 => D0_IN15);
GLB_D0_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D0_P12, A0 => D0_IN8);
GLB_D0_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D0_P8, A0 => D0_IN9);
GLB_D0_P3 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D0_P3, A4 => D0_IN3B, A3 => D0_IN5B, A2 => D0_IN6, 
	A1 => D0_IN13B, A0 => D0_IN15B);
GLB_D0_P2 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D0_P2, A4 => D0_IN3, A3 => D0_IN5, A2 => D0_IN10, 
	A1 => D0_IN13, A0 => D0_IN15B);
GLB_D0_P1 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D0_P1, A4 => D0_IN2, A3 => D0_IN3, A2 => D0_IN5, 
	A1 => D0_IN13B, A0 => D0_IN15B);
GLB_D0_P0 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D0_P0, A4 => D0_IN3B, A3 => D0_IN5B, A2 => D0_IN13, 
	A1 => D0_IN14, A0 => D0_IN15);
GLB_D0_G3 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D0_G3, A1 => D0_F0, A0 => D0_F5);
GLB_D0_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D0_G2, A0 => GND);
GLB_D0_F5 : PGORF76_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => D0_F5, A5 => D0_P14, A4 => D0_P15, A3 => D0_P16, 
	A2 => D0_P19, A1 => D0_P17, A0 => D0_P18);
GLB_D0_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => D0_F0, A3 => D0_P0, A2 => D0_P1, A1 => D0_P2, 
	A0 => D0_P3);
GLB_D0_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => D0_CD, A0 => D0_P12);
GLB_D0_CLK : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => D0_CLK, A0 => D0_N_116_C_ck2f);
GLB_D0_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D0_P8_xa, A0 => D0_P8);
GLB_OR_1397 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => OR_1397, A0 => D0_X0O);
GLB_D0_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN0, A0 => D0_N_6_grpi);
GLB_D0_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN11, A0 => D0_N_5_grpi);
GLB_D0_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN1, A0 => D0_N_4_grpi);
GLB_D0_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN7, A0 => D0_N_7_grpi);
GLB_D0_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN12, A0 => D0_N_8_grpi);
GLB_D0_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN4, A0 => D0_N_98_grpi);
GLB_D0_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN8, A0 => RE_PRGMX_grp);
GLB_D0_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN9, A0 => DI2X_grp);
GLB_D0_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN6, A0 => D0_N_116_grpi);
GLB_D0_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN10, A0 => D0_N_2_grpi);
GLB_D0_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN5, A0 => N_39_grpi);
GLB_D0_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN3, A0 => N_38_part1_grpi);
GLB_D0_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN2, A0 => D0_N_3_grpi);
GLB_D0_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN15, A0 => N_37_grpi);
GLB_D0_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN14, A0 => D0_N_31_grpi);
GLB_D0_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D0_IN13, A0 => N_40_grpi);
GLB_D0_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D0_X1O, A1 => D0_P8_xa, A0 => D0_G2);
GLB_D0_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D0_X0O, A1 => GND, A0 => D0_G3);
GLB_D0_N_114 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_114, RNESET => L2L_KEYWD_RESET_glbb, CD => D0_CD, CLK => D0_CLK, 
	D0 => D0_X1O);
GLB_D0_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D0_IN15B, A0 => N_37_grpi);
GLB_D0_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D0_IN13B, A0 => N_40_grpi);
GLB_D0_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D0_IN5B, A0 => N_39_grpi);
GLB_D0_IN3B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D0_IN3B, A0 => N_38_part1_grpi);
GLB_D1_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D1_P19, A0 => D1_IN8);
GLB_D1_P17 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P17, A6 => D1_IN3, A5 => D1_IN5, A4 => D1_IN6B, 
	A3 => D1_IN9, A2 => D1_IN10B, A1 => D1_IN11, A0 => D1_IN15);
GLB_D1_P16 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P16, A5 => D1_IN3, A4 => D1_IN6B, A3 => D1_IN9, 
	A2 => D1_IN10B, A1 => D1_IN12, A0 => D1_IN15);
GLB_D1_P15 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P15, A5 => D1_IN2, A4 => D1_IN3, A3 => D1_IN5, 
	A2 => D1_IN11, A1 => D1_IN12, A0 => D1_IN15);
GLB_D1_P14 : PGAND6_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P14, A5 => D1_IN2, A4 => D1_IN3, A3 => D1_IN5, 
	A2 => D1_IN9, A1 => D1_IN11, A0 => D1_IN15);
GLB_D1_P13 : PGAND7_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D1_P13, A6 => D1_IN3, A5 => D1_IN5, A4 => D1_IN6B, 
	A3 => D1_IN10B, A2 => D1_IN11, A1 => D1_IN12, A0 => D1_IN15);
GLB_D1_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D1_P12, A0 => D1_IN7);
GLB_D1_P11 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P11, A1 => D1_IN5B, A0 => D1_IN9);
GLB_D1_P10 : PGAND2_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P10, A1 => D1_IN9, A0 => D1_IN11B);
GLB_D1_P9 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P9, A2 => D1_IN5, A1 => D1_IN9B, A0 => D1_IN11);
GLB_D1_P7 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P7, A4 => D1_IN2, A3 => D1_IN3, A2 => D1_IN9, 
	A1 => D1_IN12, A0 => D1_IN15);
GLB_D1_P6 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P6, A4 => D1_IN2B, A3 => D1_IN3, A2 => D1_IN4B, 
	A1 => D1_IN6, A0 => D1_IN15);
GLB_D1_P5 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P5, A4 => D1_IN2B, A3 => D1_IN3, A2 => D1_IN4B, 
	A1 => D1_IN10, A0 => D1_IN15);
GLB_D1_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D1_P4, A0 => D1_IN12);
GLB_D1_P3 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P3, A2 => D1_IN3B, A1 => D1_IN13B, A0 => D1_IN16);
GLB_D1_P2 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P2, A2 => D1_IN3B, A1 => D1_IN14B, A0 => D1_IN16);
GLB_D1_P1 : PGAND3_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D1_P1, A2 => D1_IN1, A1 => D1_IN3, A0 => D1_IN15B);
GLB_D1_P0 : PGAND4_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D1_P0, A3 => D1_IN3B, A2 => D1_IN13, A1 => D1_IN14, 
	A0 => D1_IN16B);
GLB_D1_G3 : PGORF73_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D1_G3, A2 => D1_F0, A1 => D1_F1, A0 => D1_F5);
GLB_D1_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D1_G1, A0 => D1_F4);
GLB_D1_G0 : PGORF73_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D1_G0, A2 => D1_F0, A1 => D1_F1, A0 => D1_F5);
GLB_D1_F5 : PGORF75_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => D1_F5, A4 => D1_P13, A3 => D1_P14, A2 => D1_P15, 
	A1 => D1_P16, A0 => D1_P17);
GLB_D1_F4 : PGORF73_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => D1_F4, A2 => D1_P9, A1 => D1_P10, A0 => D1_P11);
GLB_D1_F1 : PGORF73_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => D1_F1, A2 => D1_P5, A1 => D1_P6, A0 => D1_P7);
GLB_D1_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => D1_F0, A3 => D1_P0, A2 => D1_P1, A1 => D1_P2, 
	A0 => D1_P3);
GLB_D1_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => D1_CD, A0 => D1_P19);
GLB_D1_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => D1_CLKP, A0 => D1_P12);
GLB_D1_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D1_P4_xa, A0 => D1_P4);
GLB_P01_PIN : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => P01_PIN, A0 => D1_X2O);
GLB_D1_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN8, A0 => RE_CPUX_grp);
GLB_D1_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN7, A0 => N_40_C_grpi);
GLB_D1_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN11, A0 => P0_N_181_grpi);
GLB_D1_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN5, A0 => P0_N_174_grpi);
GLB_D1_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN9, A0 => P0_N_180_grpi);
GLB_D1_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN2, A0 => AND_1372_grpi);
GLB_D1_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN6, A0 => P0_N_176_grpi);
GLB_D1_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN15, A0 => P0_N_212_grpi);
GLB_D1_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN10, A0 => P0_N_179_grpi);
GLB_D1_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN12, A0 => P0_N_175_part2_grpi);
GLB_D1_IN16 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN16, A0 => N_38_part2_ffb);
GLB_D1_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN3, A0 => P0_N_195_grpi);
GLB_D1_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN1, A0 => P0_N_216_grpi);
GLB_D1_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN14, A0 => N_39_grpi);
GLB_D1_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D1_IN13, A0 => N_40_grpi);
GLB_D1_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D1_X3O, A1 => GND, A0 => D1_G0);
GLB_D1_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D1_X2O, A1 => D1_P4_xa, A0 => D1_G1);
GLB_D1_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D1_X0O, A1 => GND, A0 => D1_G3);
GLB_N_38_part1 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_38_part1, RNESET => L2L_KEYWD_RESET_glbb, CD => D1_CD, CLK => D1_CLKP, 
	D0 => D1_X3O);
GLB_N_38_part2 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_38_part2, RNESET => L2L_KEYWD_RESET_glbb, CD => D1_CD, CLK => D1_CLKP, 
	D0 => D1_X0O);
GLB_D1_IN10B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN10B, A0 => P0_N_179_grpi);
GLB_D1_IN6B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN6B, A0 => P0_N_176_grpi);
GLB_D1_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN5B, A0 => P0_N_174_grpi);
GLB_D1_IN11B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN11B, A0 => P0_N_181_grpi);
GLB_D1_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN9B, A0 => P0_N_180_grpi);
GLB_D1_IN4B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN4B, A0 => OR_872_grpi);
GLB_D1_IN2B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN2B, A0 => AND_1372_grpi);
GLB_D1_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN13B, A0 => N_40_grpi);
GLB_D1_IN14B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN14B, A0 => N_39_grpi);
GLB_D1_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN15B, A0 => P0_N_212_grpi);
GLB_D1_IN16B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN16B, A0 => N_38_part2_ffb);
GLB_D1_IN3B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D1_IN3B, A0 => P0_N_195_grpi);
GLB_D2_P19 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D2_P19, A4 => D2_IN3, A3 => D2_IN6B, A2 => D2_IN11B, 
	A1 => D2_IN14, A0 => D2_IN16);
GLB_D2_P18 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D2_P18, A4 => D2_IN3, A3 => D2_IN6, A2 => D2_IN7, 
	A1 => D2_IN11B, A0 => D2_IN14B);
GLB_D2_P17 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D2_P17, A4 => D2_IN3, A3 => D2_IN6B, A2 => D2_IN9, 
	A1 => D2_IN11B, A0 => D2_IN14B);
GLB_D2_P16 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D2_P16, A4 => D2_IN3, A3 => D2_IN6, A2 => D2_IN11B, 
	A1 => D2_IN13, A0 => D2_IN14);
GLB_D2_P15 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D2_P15, A4 => D2_IN3B, A3 => D2_IN4, A2 => D2_IN6, 
	A1 => D2_IN11, A0 => D2_IN14B);
GLB_D2_P14 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D2_P14, A4 => D2_IN1, A3 => D2_IN3B, A2 => D2_IN6B, 
	A1 => D2_IN11, A0 => D2_IN14B);
GLB_D2_P12 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D2_P12, A0 => D2_IN12);
GLB_D2_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D2_P8, A0 => D2_IN2);
GLB_D2_P3 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D2_P3, A4 => D2_IN3B, A3 => D2_IN6, A2 => D2_IN11B, 
	A1 => D2_IN14B, A0 => D2_IN15);
GLB_D2_P2 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D2_P2, A4 => D2_IN3B, A3 => D2_IN5, A2 => D2_IN6B, 
	A1 => D2_IN11B, A0 => D2_IN14);
GLB_D2_P1 : PGAND5_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D2_P1, A4 => D2_IN3B, A3 => D2_IN6B, A2 => D2_IN10, 
	A1 => D2_IN11B, A0 => D2_IN14B);
GLB_D2_P0 : PGAND5_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D2_P0, A4 => D2_IN3B, A3 => D2_IN6, A2 => D2_IN8, 
	A1 => D2_IN11B, A0 => D2_IN14);
GLB_D2_G3 : PGORF72_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D2_G3, A1 => D2_F0, A0 => D2_F5);
GLB_D2_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D2_G2, A0 => GND);
GLB_D2_F5 : PGORF76_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => D2_F5, A5 => D2_P14, A4 => D2_P15, A3 => D2_P16, 
	A2 => D2_P19, A1 => D2_P17, A0 => D2_P18);
GLB_D2_F0 : PGORF74_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => D2_F0, A3 => D2_P0, A2 => D2_P1, A1 => D2_P2, 
	A0 => D2_P3);
GLB_D2_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => D2_CD, A0 => D2_P12);
GLB_D2_CLK : PGBUFI_main
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => D2_CLK, A0 => D0_N_3_C_ck1f);
GLB_D2_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D2_P8_xa, A0 => D2_P8);
GLB_OR_1393 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => OR_1393, A0 => D2_X0O);
GLB_D2_IN16 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN16, A0 => D0_N_15_ffb);
GLB_D2_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN7, A0 => D0_N_14_grpi);
GLB_D2_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN9, A0 => D0_N_13_grpi);
GLB_D2_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN13, A0 => D0_N_16_grpi);
GLB_D2_IN3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN3, A0 => N_38_part1_grpi);
GLB_D2_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN4, A0 => D0_N_18_grpi);
GLB_D2_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN11, A0 => N_37_grpi);
GLB_D2_IN1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN1, A0 => D0_N_99_grpi);
GLB_D2_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN12, A0 => RE_PRGMX_grp);
GLB_D2_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN2, A0 => DI1X_grp);
GLB_D2_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN15, A0 => D0_N_10_grpi);
GLB_D2_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN5, A0 => D0_N_11_grpi);
GLB_D2_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN10, A0 => D0_N_115_grpi);
GLB_D2_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN14, A0 => N_39_grpi);
GLB_D2_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN8, A0 => D0_N_12_grpi);
GLB_D2_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D2_IN6, A0 => N_40_grpi);
GLB_D2_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D2_X1O, A1 => D2_P8_xa, A0 => D2_G2);
GLB_D2_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D2_X0O, A1 => GND, A0 => D2_G3);
GLB_D0_N_15 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_15, RNESET => L2L_KEYWD_RESET_glbb, CD => D2_CD, CLK => D2_CLK, 
	D0 => D2_X1O);
GLB_D2_IN14B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D2_IN14B, A0 => N_39_grpi);
GLB_D2_IN6B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D2_IN6B, A0 => N_40_grpi);
GLB_D2_IN11B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D2_IN11B, A0 => N_37_grpi);
GLB_D2_IN3B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D2_IN3B, A0 => N_38_part1_grpi);
GLB_D3_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D3_P19, A0 => D3_IN8);
GLB_D3_P13 : PGAND8_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D3_P13, A7 => D3_IN1B, A6 => D3_IN4, A5 => D3_IN5B, 
	A4 => D3_IN6B, A3 => D3_IN9B, A2 => D3_IN10, A1 => D3_IN11B, 
	A0 => D3_IN12);
GLB_D3_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D3_P12, A5 => D3_IN3B, A4 => D3_IN4, A3 => D3_IN9, 
	A2 => D3_IN13B, A1 => D3_IN14B, A0 => D3_IN15);
GLB_D3_P11 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D3_P11, A6 => D3_IN1B, A5 => D3_IN4, A4 => D3_IN5B, 
	A3 => D3_IN6, A2 => D3_IN10, A1 => D3_IN11B, A0 => D3_IN12);
GLB_D3_P10 : PGAND7_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => D3_P10, A6 => D3_IN1B, A5 => D3_IN4, A4 => D3_IN5, 
	A3 => D3_IN6B, A2 => D3_IN10, A1 => D3_IN11B, A0 => D3_IN12);
GLB_D3_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D3_P4, A0 => D3_IN2);
GLB_D3_P0 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D3_P0, A0 => D3_IN0);
GLB_D3_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D3_G3, A0 => GND);
GLB_D3_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D3_G1, A0 => GND);
GLB_D3_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D3_G0, A0 => GND);
GLB_P0_N_177_C : PGORF72_main
    GENERIC MAP (TRISE => 4.000000 ns, TFALL => 4.000000 ns)
	PORT MAP (Z0 => P0_N_177_C, A1 => D3_P10, A0 => D3_P11);
GLB_D3_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => D3_CD, A0 => D3_P19);
GLB_D3_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => D3_CLKP, A0 => D3_P12);
GLB_D3_P0_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D3_P0_xa, A0 => D3_P0);
GLB_D3_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D3_P4_xa, A0 => D3_P4);
GLB_D3_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D3_P13_xa, A0 => D3_P13);
GLB_P0_N_195 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => P0_N_195, A0 => D3_X0O);
GLB_D3_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D3_IN8, A0 => RE_PRGMX_grp);
GLB_D3_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D3_IN15, A0 => N_37_grpi);
GLB_D3_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D3_IN9, A0 => PRGMX_grp);
GLB_D3_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D3_IN6, A0 => P0_N_239_grpi);
GLB_D3_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D3_IN12, A0 => P0_N_240_grpi);
GLB_D3_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D3_IN10, A0 => ENX_grp);
GLB_D3_IN5 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D3_IN5, A0 => P0_N_238_grpi);
GLB_D3_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D3_IN4, A0 => CLKX_grp);
GLB_D3_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D3_IN2, A0 => DI1X_grp);
GLB_D3_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D3_IN0, A0 => DI0X_grp);
GLB_D3_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D3_X3O, A1 => D3_P0_xa, A0 => D3_G0);
GLB_D3_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D3_X2O, A1 => D3_P4_xa, A0 => D3_G1);
GLB_D3_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D3_X0O, A1 => D3_P13_xa, A0 => D3_G3);
GLB_D0_N_98 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_98, RNESET => L2L_KEYWD_RESET_glbb, CD => D3_CD, CLK => D3_CLKP, 
	D0 => D3_X3O);
GLB_D0_N_99 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_99, RNESET => L2L_KEYWD_RESET_glbb, CD => D3_CD, CLK => D3_CLKP, 
	D0 => D3_X2O);
GLB_D3_IN9B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D3_IN9B, A0 => PRGMX_grp);
GLB_D3_IN14B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D3_IN14B, A0 => N_39_grpi);
GLB_D3_IN13B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D3_IN13B, A0 => N_40_grpi);
GLB_D3_IN3B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D3_IN3B, A0 => N_38_part1_grpi);
GLB_D3_IN5B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D3_IN5B, A0 => P0_N_238_grpi);
GLB_D3_IN11B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D3_IN11B, A0 => F0_N_7_grpi);
GLB_D3_IN6B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D3_IN6B, A0 => P0_N_239_grpi);
GLB_D3_IN1B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D3_IN1B, A0 => F0_N_6_grpi);
GLB_D4_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D4_P19, A0 => D4_IN12);
GLB_D4_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D4_P13, A0 => D4_IN2);
GLB_D4_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D4_P12, A5 => D4_IN4, A4 => D4_IN6, A3 => D4_IN11, 
	A2 => D4_IN13, A1 => D4_IN14, A0 => D4_IN15B);
GLB_D4_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D4_P4, A0 => D4_IN9);
GLB_D4_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D4_G3, A0 => GND);
GLB_D4_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D4_G1, A0 => GND);
GLB_D4_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => D4_CD, A0 => D4_P19);
GLB_D4_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => D4_CLKP, A0 => D4_P12);
GLB_D4_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D4_P4_xa, A0 => D4_P4);
GLB_D4_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D4_P13_xa, A0 => D4_P13);
GLB_D4_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D4_IN12, A0 => RE_PRGMX_grp);
GLB_D4_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D4_IN2, A0 => DI2X_grp);
GLB_D4_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D4_IN14, A0 => N_39_grpi);
GLB_D4_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D4_IN13, A0 => PRGMX_grp);
GLB_D4_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D4_IN11, A0 => N_38_part2_grpi);
GLB_D4_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D4_IN6, A0 => N_40_grpi);
GLB_D4_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D4_IN4, A0 => CLKX_grp);
GLB_D4_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D4_IN9, A0 => DI1X_grp);
GLB_D4_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D4_X2O, A1 => D4_P4_xa, A0 => D4_G1);
GLB_D4_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D4_X0O, A1 => D4_P13_xa, A0 => D4_G3);
GLB_D0_N_16 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_16, RNESET => L2L_KEYWD_RESET_glbb, CD => D4_CD, CLK => D4_CLKP, 
	D0 => D4_X2O);
GLB_D0_N_40 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_40, RNESET => L2L_KEYWD_RESET_glbb, CD => D4_CD, CLK => D4_CLKP, 
	D0 => D4_X0O);
GLB_D4_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D4_IN15B, A0 => N_37_grpi);
GLB_D5_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D5_P19, A0 => D5_IN12);
GLB_D5_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D5_P13, A0 => D5_IN0);
GLB_D5_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D5_P12, A5 => D5_IN4, A4 => D5_IN6, A3 => D5_IN11B, 
	A2 => D5_IN13, A1 => D5_IN14, A0 => D5_IN15B);
GLB_D5_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D5_P8, A0 => D5_IN8);
GLB_D5_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D5_P4, A0 => D5_IN2);
GLB_D5_P0 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D5_P0, A0 => D5_IN9);
GLB_D5_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D5_G3, A0 => GND);
GLB_D5_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D5_G2, A0 => GND);
GLB_D5_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D5_G1, A0 => GND);
GLB_D5_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D5_G0, A0 => GND);
GLB_D5_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => D5_CD, A0 => D5_P19);
GLB_D5_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => D5_CLKP, A0 => D5_P12);
GLB_D5_P0_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D5_P0_xa, A0 => D5_P0);
GLB_D5_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D5_P4_xa, A0 => D5_P4);
GLB_D5_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D5_P8_xa, A0 => D5_P8);
GLB_D5_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D5_P13_xa, A0 => D5_P13);
GLB_D5_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D5_IN12, A0 => RE_PRGMX_grp);
GLB_D5_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D5_IN0, A0 => DI0X_grp);
GLB_D5_IN14 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D5_IN14, A0 => N_39_grpi);
GLB_D5_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D5_IN13, A0 => PRGMX_grp);
GLB_D5_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D5_IN6, A0 => N_40_grpi);
GLB_D5_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D5_IN4, A0 => CLKX_grp);
GLB_D5_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D5_IN8, A0 => DI3X_grp);
GLB_D5_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D5_IN2, A0 => DI2X_grp);
GLB_D5_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D5_IN9, A0 => DI1X_grp);
GLB_D5_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D5_X3O, A1 => D5_P0_xa, A0 => D5_G0);
GLB_D5_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D5_X2O, A1 => D5_P4_xa, A0 => D5_G1);
GLB_D5_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D5_X1O, A1 => D5_P8_xa, A0 => D5_G2);
GLB_D5_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D5_X0O, A1 => D5_P13_xa, A0 => D5_G3);
GLB_D0_N_12 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_12, RNESET => L2L_KEYWD_RESET_glbb, CD => D5_CD, CLK => D5_CLKP, 
	D0 => D5_X3O);
GLB_D0_N_36 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_36, RNESET => L2L_KEYWD_RESET_glbb, CD => D5_CD, CLK => D5_CLKP, 
	D0 => D5_X2O);
GLB_D0_N_104 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_104, RNESET => L2L_KEYWD_RESET_glbb, CD => D5_CD, CLK => D5_CLKP, 
	D0 => D5_X1O);
GLB_D0_N_6 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_6, RNESET => L2L_KEYWD_RESET_glbb, CD => D5_CD, CLK => D5_CLKP, 
	D0 => D5_X0O);
GLB_D5_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D5_IN15B, A0 => N_37_grpi);
GLB_D5_IN11B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D5_IN11B, A0 => N_38_part2_grpi);
GLB_D6_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D6_P19, A0 => D6_IN12);
GLB_D6_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D6_P13, A0 => D6_IN0);
GLB_D6_P12 : PGAND4_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D6_P12, A3 => D6_IN1B, A2 => D6_IN4, A1 => D6_IN10, 
	A0 => D6_IN11);
GLB_D6_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D6_P8, A0 => D6_IN7);
GLB_D6_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D6_P4, A0 => D6_IN15);
GLB_D6_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D6_G3, A0 => GND);
GLB_D6_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D6_G2, A0 => GND);
GLB_D6_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D6_G1, A0 => GND);
GLB_D6_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => D6_CD, A0 => D6_P19);
GLB_D6_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => D6_CLKP, A0 => D6_P12);
GLB_D6_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D6_P4_xa, A0 => D6_P4);
GLB_D6_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D6_P8_xa, A0 => D6_P8);
GLB_D6_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D6_P13_xa, A0 => D6_P13);
GLB_D6_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D6_IN12, A0 => RE_CPUX_grp);
GLB_D6_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D6_IN0, A0 => OR_1396_grpi);
GLB_D6_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D6_IN11, A0 => F0_N_7_grpi);
GLB_D6_IN10 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D6_IN10, A0 => ENX_grp);
GLB_D6_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D6_IN4, A0 => CLKX_grp);
GLB_D6_IN7 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D6_IN7, A0 => OR_1392_grpi);
GLB_D6_IN15 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D6_IN15, A0 => OR_1394_grpi);
GLB_D6_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D6_X2O, A1 => D6_P4_xa, A0 => D6_G1);
GLB_D6_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D6_X1O, A1 => D6_P8_xa, A0 => D6_G2);
GLB_D6_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D6_X0O, A1 => D6_P13_xa, A0 => D6_G3);
GLB_P0_N_238 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_238, RNESET => L2L_KEYWD_RESET_glbb, CD => D6_CD, CLK => D6_CLKP, 
	D0 => D6_X2O);
GLB_P0_N_239 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_239, RNESET => L2L_KEYWD_RESET_glbb, CD => D6_CD, CLK => D6_CLKP, 
	D0 => D6_X1O);
GLB_P0_N_240 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => P0_N_240, RNESET => L2L_KEYWD_RESET_glbb, CD => D6_CD, CLK => D6_CLKP, 
	D0 => D6_X0O);
GLB_D6_IN1B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D6_IN1B, A0 => F0_N_6_grpi);
GLB_D7_P19 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D7_P19, A0 => D7_IN12);
GLB_D7_P13 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D7_P13, A0 => D7_IN9);
GLB_D7_P12 : PGAND6_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D7_P12, A5 => D7_IN4, A4 => D7_IN6, A3 => D7_IN11, 
	A2 => D7_IN13, A1 => D7_IN14B, A0 => D7_IN15B);
GLB_D7_P8 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D7_P8, A0 => D7_IN2);
GLB_D7_P4 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D7_P4, A0 => D7_IN0);
GLB_D7_P0 : PGBUFI_main
    GENERIC MAP (TRISE => 3.700000 ns, TFALL => 3.700000 ns)
	PORT MAP (Z0 => D7_P0, A0 => D7_IN8);
GLB_D7_G3 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D7_G3, A0 => GND);
GLB_D7_G2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D7_G2, A0 => GND);
GLB_D7_G1 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D7_G1, A0 => GND);
GLB_D7_G0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.600000 ns, TFALL => 1.600000 ns)
	PORT MAP (Z0 => D7_G0, A0 => GND);
GLB_D7_CD : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => D7_CD, A0 => D7_P19);
GLB_D7_CLKP : PGBUFI_main
    GENERIC MAP (TRISE => 1.900000 ns, TFALL => 1.900000 ns)
	PORT MAP (Z0 => D7_CLKP, A0 => D7_P12);
GLB_D7_P0_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D7_P0_xa, A0 => D7_P0);
GLB_D7_P4_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D7_P4_xa, A0 => D7_P4);
GLB_D7_P8_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D7_P8_xa, A0 => D7_P8);
GLB_D7_P13_xa : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => D7_P13_xa, A0 => D7_P13);
GLB_D7_IN12 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D7_IN12, A0 => RE_PRGMX_grp);
GLB_D7_IN9 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D7_IN9, A0 => DI1X_grp);
GLB_D7_IN13 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D7_IN13, A0 => PRGMX_grp);
GLB_D7_IN11 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D7_IN11, A0 => N_38_part2_grpi);
GLB_D7_IN6 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D7_IN6, A0 => N_40_grpi);
GLB_D7_IN4 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D7_IN4, A0 => CLKX_grp);
GLB_D7_IN2 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D7_IN2, A0 => DI2X_grp);
GLB_D7_IN0 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D7_IN0, A0 => DI0X_grp);
GLB_D7_IN8 : PGBUFI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (Z0 => D7_IN8, A0 => DI3X_grp);
GLB_D7_X3O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D7_X3O, A1 => D7_P0_xa, A0 => D7_G0);
GLB_D7_X2O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D7_X2O, A1 => D7_P4_xa, A0 => D7_G1);
GLB_D7_X1O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D7_X1O, A1 => D7_P8_xa, A0 => D7_G2);
GLB_D7_X0O : PGXOR2_main
    GENERIC MAP (TRISE => 0.800000 ns, TFALL => 0.800000 ns)
	PORT MAP (Z0 => D7_X0O, A1 => D7_P13_xa, A0 => D7_G3);
GLB_D0_N_102 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_102, RNESET => L2L_KEYWD_RESET_glbb, CD => D7_CD, CLK => D7_CLKP, 
	D0 => D7_X3O);
GLB_D0_N_4 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_4, RNESET => L2L_KEYWD_RESET_glbb, CD => D7_CD, CLK => D7_CLKP, 
	D0 => D7_X2O);
GLB_D0_N_38 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_38, RNESET => L2L_KEYWD_RESET_glbb, CD => D7_CD, CLK => D7_CLKP, 
	D0 => D7_X1O);
GLB_D0_N_14 : PGDFFR_main
    GENERIC MAP (HLCQ => 2.400000 ns, LHCQ => 2.400000 ns, HLRQ => 6.800000 ns, SUD0 => 1.000000 ns, 
        SUD1 => 1.000000 ns, HOLDD0 => 8.300000 ns, HOLDD1 => 8.300000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => D0_N_14, RNESET => L2L_KEYWD_RESET_glbb, CD => D7_CD, CLK => D7_CLKP, 
	D0 => D7_X0O);
GLB_D7_IN15B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D7_IN15B, A0 => N_37_grpi);
GLB_D7_IN14B : PGINVI_main
    GENERIC MAP (TRISE => 1.100000 ns, TFALL => 1.100000 ns)
	PORT MAP (ZN0 => D7_IN14B, A0 => N_39_grpi);
IOC_L2L_KEYWD_RESET : PXIN_main
    GENERIC MAP (TRISE => 3.100000 ns, TFALL => 3.100000 ns)
	PORT MAP (Z0 => L2L_KEYWD_RESETb, XI0 => XRESET);
IOC_IO51_IBUFO : PXIN_main
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO51_IBUFO, XI0 => RE_PRGM);
IOC_IO3_IBUFO : PXIN_main
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO3_IBUFO, XI0 => RE_CPU);
IOC_IO18_IBUFO : PXIN_main
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO18_IBUFO, XI0 => PRGM);
IOC_IO53_IBUFO : PXIN_main
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO53_IBUFO, XI0 => EN);
IOC_IO39_IBUFO : PXIN_main
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO39_IBUFO, XI0 => DI3);
IOC_IO38_IBUFO : PXIN_main
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO38_IBUFO, XI0 => DI2);
IOC_IO22_IBUFO : PXIN_main
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO22_IBUFO, XI0 => DI1);
IOC_IO15_IBUFO : PXIN_main
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO15_IBUFO, XI0 => DI0);
IOC_IO47_IBUFO : PXIN_main
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO47_IBUFO, XI0 => CLK);
IOC_P03 : PXOUT_main
    GENERIC MAP (TRISE => 2.200000 ns, TFALL => 2.200000 ns)
	PORT MAP (XO0 => P03, A0 => IO16_OBUFI);
IOC_IO16_OBUFI : PGBUFI_main
    GENERIC MAP (TRISE => 0.400000 ns, TFALL => 0.400000 ns)
	PORT MAP (Z0 => IO16_OBUFI, A0 => P03_PIN_iomux);
IOC_P02 : PXOUT_main
    GENERIC MAP (TRISE => 2.200000 ns, TFALL => 2.200000 ns)
	PORT MAP (XO0 => P02, A0 => IO20_OBUFI);
IOC_IO20_OBUFI : PGBUFI_main
    GENERIC MAP (TRISE => 0.400000 ns, TFALL => 0.400000 ns)
	PORT MAP (Z0 => IO20_OBUFI, A0 => P02_PIN_iomux);
IOC_P01 : PXOUT_main
    GENERIC MAP (TRISE => 2.200000 ns, TFALL => 2.200000 ns)
	PORT MAP (XO0 => P01, A0 => IO50_OBUFI);
IOC_IO50_OBUFI : PGBUFI_main
    GENERIC MAP (TRISE => 0.400000 ns, TFALL => 0.400000 ns)
	PORT MAP (Z0 => IO50_OBUFI, A0 => P01_PIN_iomux);
IOC_P00 : PXOUT_main
    GENERIC MAP (TRISE => 2.200000 ns, TFALL => 2.200000 ns)
	PORT MAP (XO0 => P00, A0 => IO17_OBUFI);
IOC_IO17_OBUFI : PGBUFI_main
    GENERIC MAP (TRISE => 0.400000 ns, TFALL => 0.400000 ns)
	PORT MAP (Z0 => IO17_OBUFI, A0 => P00_PIN_iomux);
GRP_N_41_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => N_41_grpi, A0 => N_41);
GRP_D0_N_100_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_100_grpi, A0 => D0_N_100);
GRP_D0_N_101_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_101_grpi, A0 => D0_N_101);
GRP_D0_N_102_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_102_grpi, A0 => D0_N_102);
GRP_D0_N_104_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_104_grpi, A0 => D0_N_104);
GRP_D0_N_105_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_105_grpi, A0 => D0_N_105);
GRP_D0_N_106_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_106_grpi, A0 => D0_N_106);
GRP_D0_N_113_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_113_grpi, A0 => D0_N_113);
GRP_D0_N_127_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_127_grpi, A0 => D0_N_127);
GRP_D0_N_49_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_49_grpi, A0 => D0_N_49);
GRP_D0_N_50_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_50_grpi, A0 => D0_N_50);
GRP_N_37_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => N_37_ffb, A0 => N_37);
GRP_N_37_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 4.100000 ns, TFALL => 4.100000 ns)
	PORT MAP (Z0 => N_37_grpi, A0 => N_37);
GRP_N_38_part2_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => N_38_part2_ffb, A0 => N_38_part2);
GRP_N_38_part2_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => N_38_part2_grpi, A0 => N_38_part2);
GRP_N_39_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => N_39_ffb, A0 => N_39);
GRP_N_39_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 4.300000 ns, TFALL => 4.300000 ns)
	PORT MAP (Z0 => N_39_grpi, A0 => N_39);
GRP_N_40_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => N_40_ffb, A0 => N_40);
GRP_N_40_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 4.300000 ns, TFALL => 4.300000 ns)
	PORT MAP (Z0 => N_40_grpi, A0 => N_40);
GRP_F0_N_7_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => F0_N_7_ffb, A0 => F0_N_7);
GRP_F0_N_7_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.900000 ns, TFALL => 2.900000 ns)
	PORT MAP (Z0 => F0_N_7_grpi, A0 => F0_N_7);
GRP_F0_N_6_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => F0_N_6_ffb, A0 => F0_N_6);
GRP_F0_N_6_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.900000 ns, TFALL => 2.900000 ns)
	PORT MAP (Z0 => F0_N_6_grpi, A0 => F0_N_6);
GRP_CLKX_grp : PGBUFI_main
    GENERIC MAP (TRISE => 3.900000 ns, TFALL => 3.900000 ns)
	PORT MAP (Z0 => CLKX_grp, A0 => IO47_IBUFO);
GRP_ENX_grp : PGBUFI_main
    GENERIC MAP (TRISE => 3.000000 ns, TFALL => 3.000000 ns)
	PORT MAP (Z0 => ENX_grp, A0 => IO53_IBUFO);
GRP_RE_CPUX_grp : PGBUFI_main
    GENERIC MAP (TRISE => 3.400000 ns, TFALL => 3.400000 ns)
	PORT MAP (Z0 => RE_CPUX_grp, A0 => IO3_IBUFO);
GRP_D0_N_42_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_42_grpi, A0 => D0_N_42);
GRP_D0_N_31_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_31_grpi, A0 => D0_N_31);
GRP_D0_N_18_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_18_grpi, A0 => D0_N_18);
GRP_DI0X_grp : PGBUFI_main
    GENERIC MAP (TRISE => 3.400000 ns, TFALL => 3.400000 ns)
	PORT MAP (Z0 => DI0X_grp, A0 => IO15_IBUFO);
GRP_DI1X_grp : PGBUFI_main
    GENERIC MAP (TRISE => 3.400000 ns, TFALL => 3.400000 ns)
	PORT MAP (Z0 => DI1X_grp, A0 => IO22_IBUFO);
GRP_DI2X_grp : PGBUFI_main
    GENERIC MAP (TRISE => 3.400000 ns, TFALL => 3.400000 ns)
	PORT MAP (Z0 => DI2X_grp, A0 => IO38_IBUFO);
GRP_DI3X_grp : PGBUFI_main
    GENERIC MAP (TRISE => 3.400000 ns, TFALL => 3.400000 ns)
	PORT MAP (Z0 => DI3X_grp, A0 => IO39_IBUFO);
GRP_PRGMX_grp : PGBUFI_main
    GENERIC MAP (TRISE => 3.500000 ns, TFALL => 3.500000 ns)
	PORT MAP (Z0 => PRGMX_grp, A0 => IO18_IBUFO);
GRP_RE_PRGMX_grp : PGBUFI_main
    GENERIC MAP (TRISE => 4.200000 ns, TFALL => 4.200000 ns)
	PORT MAP (Z0 => RE_PRGMX_grp, A0 => IO51_IBUFO);
GRP_D0_N_7_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_7_grpi, A0 => D0_N_7);
GRP_D0_N_35_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_35_grpi, A0 => D0_N_35);
GRP_D0_N_11_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_11_grpi, A0 => D0_N_11);
GRP_N_40_C_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => N_40_C_grpi, A0 => N_40_C);
GRP_P0_N_176_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => P0_N_176_ffb, A0 => P0_N_176);
GRP_P0_N_176_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.100000 ns, TFALL => 3.100000 ns)
	PORT MAP (Z0 => P0_N_176_grpi, A0 => P0_N_176);
GRP_P0_N_177_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.800000 ns, TFALL => 2.800000 ns)
	PORT MAP (Z0 => P0_N_177_grpi, A0 => P0_N_177);
GRP_P0_N_178_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.800000 ns, TFALL => 2.800000 ns)
	PORT MAP (Z0 => P0_N_178_grpi, A0 => P0_N_178);
GRP_P0_N_179_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => P0_N_179_ffb, A0 => P0_N_179);
GRP_P0_N_179_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.100000 ns, TFALL => 3.100000 ns)
	PORT MAP (Z0 => P0_N_179_grpi, A0 => P0_N_179);
GRP_P0_N_195_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => P0_N_195_grpi, A0 => P0_N_195);
GRP_P0_N_212_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.000000 ns, TFALL => 3.000000 ns)
	PORT MAP (Z0 => P0_N_212_grpi, A0 => P0_N_212);
GRP_P0_N_214_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => P0_N_214_grpi, A0 => P0_N_214);
GRP_AND_1372_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => AND_1372_ffb, A0 => AND_1372);
GRP_AND_1372_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.100000 ns, TFALL => 3.100000 ns)
	PORT MAP (Z0 => AND_1372_grpi, A0 => AND_1372);
GRP_OR_871_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => OR_871_grpi, A0 => OR_871);
GRP_OR_872_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => OR_872_ffb, A0 => OR_872);
GRP_OR_872_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.100000 ns, TFALL => 3.100000 ns)
	PORT MAP (Z0 => OR_872_grpi, A0 => OR_872);
GRP_D0_N_5_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_5_grpi, A0 => D0_N_5);
GRP_D0_N_37_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_37_grpi, A0 => D0_N_37);
GRP_D0_N_13_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_13_grpi, A0 => D0_N_13);
GRP_D0_N_8_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_8_grpi, A0 => D0_N_8);
GRP_D0_N_34_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_34_grpi, A0 => D0_N_34);
GRP_D0_N_10_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_10_grpi, A0 => D0_N_10);
GRP_P0_N_218_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => P0_N_218_grpi, A0 => P0_N_218);
GRP_P0_N_217_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => P0_N_217_grpi, A0 => P0_N_217);
GRP_P0_N_216_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => P0_N_216_grpi, A0 => P0_N_216);
GRP_OR_1393_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => OR_1393_grpi, A0 => OR_1393);
GRP_OR_1395_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => OR_1395_grpi, A0 => OR_1395);
GRP_OR_1397_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => OR_1397_grpi, A0 => OR_1397);
GRP_P03_PIN_iomux : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => P03_PIN_iomux, A0 => P03_PIN);
GRP_P0_N_174_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => P0_N_174_ffb, A0 => P0_N_174);
GRP_P0_N_174_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.200000 ns, TFALL => 3.200000 ns)
	PORT MAP (Z0 => P0_N_174_grpi, A0 => P0_N_174);
GRP_P0_N_175_part2_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => P0_N_175_part2_ffb, A0 => P0_N_175_part2);
GRP_P0_N_175_part2_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.900000 ns, TFALL => 2.900000 ns)
	PORT MAP (Z0 => P0_N_175_part2_grpi, A0 => P0_N_175_part2);
GRP_P0_N_180_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => P0_N_180_ffb, A0 => P0_N_180);
GRP_P0_N_180_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.200000 ns, TFALL => 3.200000 ns)
	PORT MAP (Z0 => P0_N_180_grpi, A0 => P0_N_180);
GRP_P0_N_181_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => P0_N_181_grpi, A0 => P0_N_181);
GRP_D0_N_116_C_ck2f : PGBUFI_main
    GENERIC MAP (TRISE => 1.800000 ns, TFALL => 1.800000 ns)
	PORT MAP (Z0 => D0_N_116_C_ck2f, A0 => D0_N_116_C);
GRP_D0_N_2_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_2_grpi, A0 => D0_N_2);
GRP_P02_PIN_iomux : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => P02_PIN_iomux, A0 => P02_PIN);
GRP_P00_PIN_iomux : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => P00_PIN_iomux, A0 => P00_PIN);
GRP_P0_N_175_part1_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.700000 ns, TFALL => 2.700000 ns)
	PORT MAP (Z0 => P0_N_175_part1_grpi, A0 => P0_N_175_part1);
GRP_OR_1392_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => OR_1392_grpi, A0 => OR_1392);
GRP_D0_N_3_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_3_grpi, A0 => D0_N_3);
GRP_D0_N_115_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_115_grpi, A0 => D0_N_115);
GRP_D0_N_12_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_12_grpi, A0 => D0_N_12);
GRP_D0_N_14_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_14_grpi, A0 => D0_N_14);
GRP_D0_N_15_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => D0_N_15_grpi, A0 => D0_N_15);
GRP_D0_N_15_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => D0_N_15_ffb, A0 => D0_N_15);
GRP_D0_N_16_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_16_grpi, A0 => D0_N_16);
GRP_D0_N_99_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_99_grpi, A0 => D0_N_99);
GRP_N_38_part1_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.000000 ns, TFALL => 3.000000 ns)
	PORT MAP (Z0 => N_38_part1_grpi, A0 => N_38_part1);
GRP_D0_N_3_C_ck1f : PGBUFI_main
    GENERIC MAP (TRISE => 1.800000 ns, TFALL => 1.800000 ns)
	PORT MAP (Z0 => D0_N_3_C_ck1f, A0 => D0_N_3_C);
GRP_P0_N_181_C_ffb : PGBUFI_main
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => P0_N_181_C_ffb, A0 => P0_N_181_C);
GRP_P0_N_181_C_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => P0_N_181_C_grpi, A0 => P0_N_181_C);
GRP_P0_N_238_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.000000 ns, TFALL => 3.000000 ns)
	PORT MAP (Z0 => P0_N_238_grpi, A0 => P0_N_238);
GRP_P0_N_239_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.000000 ns, TFALL => 3.000000 ns)
	PORT MAP (Z0 => P0_N_239_grpi, A0 => P0_N_239);
GRP_P0_N_240_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 3.000000 ns, TFALL => 3.000000 ns)
	PORT MAP (Z0 => P0_N_240_grpi, A0 => P0_N_240);
GRP_D0_N_39_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_39_grpi, A0 => D0_N_39);
GRP_OR_1394_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => OR_1394_grpi, A0 => OR_1394);
GRP_D0_N_114_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_114_grpi, A0 => D0_N_114);
GRP_D0_N_36_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_36_grpi, A0 => D0_N_36);
GRP_D0_N_38_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_38_grpi, A0 => D0_N_38);
GRP_D0_N_40_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_40_grpi, A0 => D0_N_40);
GRP_D0_N_41_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_41_grpi, A0 => D0_N_41);
GRP_P0_N_177_C_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => P0_N_177_C_grpi, A0 => P0_N_177_C);
GRP_OR_1401_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => OR_1401_grpi, A0 => OR_1401);
GRP_OR_1400_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => OR_1400_grpi, A0 => OR_1400);
GRP_OR_1396_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => OR_1396_grpi, A0 => OR_1396);
GRP_D0_N_116_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_116_grpi, A0 => D0_N_116);
GRP_D0_N_4_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_4_grpi, A0 => D0_N_4);
GRP_D0_N_6_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_6_grpi, A0 => D0_N_6);
GRP_D0_N_98_grpi : PGBUFI_main
    GENERIC MAP (TRISE => 2.600000 ns, TFALL => 2.600000 ns)
	PORT MAP (Z0 => D0_N_98_grpi, A0 => D0_N_98);
GRP_P01_PIN_iomux : PGBUFI_main
    GENERIC MAP (TRISE => 1.000000 ns, TFALL => 1.000000 ns)
	PORT MAP (Z0 => P01_PIN_iomux, A0 => P01_PIN);
GRP_L2L_KEYWD_RESET_glb : PXIN_main
    GENERIC MAP (TRISE => 1.500000 ns, TFALL => 1.500000 ns)
	PORT MAP (Z0 => L2L_KEYWD_RESET_glbb, XI0 => L2L_KEYWD_RESETb);
END main_STRUCTURE;
