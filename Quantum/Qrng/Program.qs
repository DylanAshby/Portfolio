namespace Qrng {
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    @EntryPoint()
    operation QuantumRandomNumberGenerator(): Result {
        use q = Qubit();

        H(q);
        return M(q);
    }
}
