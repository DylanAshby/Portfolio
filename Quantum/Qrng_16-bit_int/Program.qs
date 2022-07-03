namespace Qrng_16_bit {

    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    
    @EntryPoint()
    operation Bit16Gen() : Int {
        mutable output = 0;
        mutable bits = [];

        for bit in 0 .. 16 {
            set bits += [QuantumRandomNumberGenerator()];
        }

        set output = ResultArrayAsInt(bits);
        return output;
    }

    operation QuantumRandomNumberGenerator(): Result {
        use q = Qubit();

        H(q);
        return M(q);
    }
}
