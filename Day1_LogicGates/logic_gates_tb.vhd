library IEEE;                                       --Standard IEEE Library which inludes pre-defined packages
use IEEE.STD_LOGIC_1164.ALL;                        --It defines data types like STD_LOGIC and STD_LOGIC_VECTOR, which are used to represent binary logic (e.g., 0, 1, Z for high impedance, X for unknown).

entity logic_gates_tb is                            --No ports are needed for the test bench
end logic_gates_tb;

architecture Behavioral of logic_gates_tb is        --The architecture block defines internal behavior of the testbench
  component logic_gates                             --Component declaration for the logic_gates entity
        Port (
            A       : in  STD_LOGIC;
            B       : in  STD_LOGIC;
            AND_OUT : out STD_LOGIC;
            OR_OUT  : out STD_LOGIC;
            NOT_OUT : out STD_LOGIC;
            NAND_OUT: out STD_LOGIC;
            NOR_OUT : out STD_LOGIC;
            XOR_OUT : out STD_LOGIC;
            XNOR_OUT: out STD_LOGIC
        );
    end component;
    
    signal A, B        : STD_LOGIC;                 --Signals to connect to the logic_gates component
    signal AND_OUT     : STD_LOGIC;
    signal OR_OUT      : STD_LOGIC;
    signal NOT_OUT     : STD_LOGIC;
    signal NAND_OUT    : STD_LOGIC;
    signal NOR_OUT     : STD_LOGIC;
    signal XOR_OUT     : STD_LOGIC;
    signal XNOR_OUT    : STD_LOGIC;

begin
-- Instantiate the logic_gates component
uut: logic_gates Port map (  A => A, B => B, AND_OUT => AND_OUT, OR_OUT => OR_OUT, NOT_OUT => NOT_OUT, NAND_OUT => NAND_OUT, NOR_OUT => NOR_OUT, XOR_OUT => XOR_OUT, XNOR_OUT => XNOR_OUT);
-- Test process
    simulation_process: process
    begin
        A <= '0';
        B <= '0';
        wait for 10 ns;

        A <= '0';
        B <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '0';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        wait for 10 ns;
        wait;
    end process;
end Behavioral;
