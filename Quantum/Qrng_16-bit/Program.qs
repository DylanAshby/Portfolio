// Code baded on the program in this tutorial: https://docs.microsoft.com/en-us/azure/quantum/tutorial-qdk-quantum-random-number-generator?tabs=tabid-qsharp
namespace Qrng_16_bit {

    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    
     // Main operation
    @EntryPoint()
    operation Bit16Gen() : Bool[]{
        // Allocate arrays to handle Qubits and the printable output
        mutable output = [];
        mutable bits = [];

        // Populate the array "bits" 16 measure Qubits to simulate a 16 Qubit register
        for bit in 0 .. 16 {
            set bits += [QuantumRandomNumberGenerator()];
        }
        
        // Set "output" to a printable version of "bits" (bool array) and return values
        set output = ResultArrayAsBoolArray(bits);
        return output;
    }

    // Creates a single Qubit, places it into superposition and then measures it
    operation QuantumRandomNumberGenerator(): Result {
        use q = Qubit(); // Create a siingle Qubit object
        
        H(q);        // Put Qubit in superposition
        return M(q); // Returning the Qubit observes it which forces ito eiter a 0 or a 1
    }
}