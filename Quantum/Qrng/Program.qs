// Code baded on the program in this tutorial: https://docs.microsoft.com/en-us/azure/quantum/tutorial-qdk-quantum-random-number-generator?tabs=tabid-qsharp
namespace Qrng {
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    // Main operation
    @EntryPoint()
    operation QuantumRandomNumberGenerator(): Result {
         use q = Qubit(); // Create a siingle Qubit object
        
        H(q);        // Put Qubit in superposition
        return M(q); // Returning the Qubit observes it which forces ito eiter a 0 or a 1
    }
}