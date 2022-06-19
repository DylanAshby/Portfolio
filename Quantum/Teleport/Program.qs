namespace Teleport {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Measurement;

    
    @EntryPoint()
    operation Teleport (msg : Qubit, target : Qubit) : Unit {
        use register = Qubit();

        H(register);
        CNOT(register, terget);

        CNOT(message, register);
        H(message);

        if (MReset(message) == One) { Z(target); }
        if (IsResultOne(MResetZ(register))) { X(target); }
    }

    
}
