library IEEE;                                 --Standard IEEE Library which inludes pre-defined packages
use IEEE.STD_LOGIC_1164.ALL;                  --It defines data types like STD_LOGIC and STD_LOGIC_VECTOR, which are used to represent binary logic (e.g., 0, 1, Z for high impedance, X for unknown).

entity logic_gates is                         --The entity block defines the interface of the Logic Gates
    Port ( A : in STD_LOGIC;                  --A as an input of type STD_LOGIC
           B : in STD_LOGIC;                  --B as an input of type STD_LOGIC
           AND_OUT : out STD_LOGIC;           --AND_OUT as an output of AND gate of type STD_LOGIC
           OR_OUT : out STD_LOGIC;            --OR_OUT as an output of OR gate of type STD_LOGIC
           NOT_OUT : out STD_LOGIC;           --NOT_OUT as an output of NOT gate of type STD_LOGIC
           NAND_OUT : out STD_LOGIC;          --NAND_OUT as an output of NAND gate of type STD_LOGIC
           NOR_OUT : out STD_LOGIC;           --NOR_OUT as an output of NOR gate of type STD_LOGIC
           XOR_OUT : out STD_LOGIC;           --XOR_OUT as an output of XOR gate of type STD_LOGIC
           XNOR_OUT : out STD_LOGIC);         --XNOR_OUT as an output of XNOR gate of type STD_LOGIC
end logic_gates;                              --End of Enitity, It defines external view of LOGIC Gates

architecture Behavioral of logic_gates is     --The architecture block defines internal behavior of LOGIC Gates
begin                                          
    --Architecture includes direct concurrent signal assignments for each gate
    AND_OUT <= A AND B;                       --AND gate output
    OR_OUT  <= A OR B;                        --OR gate output
    NOT_OUT <= NOT A;                         --NOT gate output (only A)
    NAND_OUT <= NOT (A AND B);                --NAND gate output
    NOR_OUT <= NOT (A OR B);                  --NOR gate output
    XOR_OUT <= A XOR B;                       --XOR gate output
    XNOR_OUT <= NOT (A XOR B);                --XNOR gate output
end Behavioral;
