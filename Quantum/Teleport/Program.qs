// Based on the code found here: https://github.com/microsoft/Quantum/tree/main/samples/getting-started/teleportation
namespace Teleport {
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Random; 
    open Microsoft.Quantum.Measurement;

    // Main operation
    @EntryPoint()
    operation RunProgram () : Unit {
        // Allocate mutables
        mutable message = [];
        mutable receivedMes = [];
        mutable sendSuccess = true;

        // Create a 16bit Q register in superposition to create a random message
        set message = Bit16Gen();
        Message($"Message to send: {message}"); // Display random message
        
        // Run through the entire message and teleport each bit. Record the results
        for bit in message{
            let sent = bit;                     // Get next bit to send
            let received = TeleportMsg(sent);   // Get the bit received from teleportation

            Message($"Sent {sent}, got {received}.");   // Output the results of the sigle Qubit teleportation
            set receivedMes += [received];              // Add the bit recieved to the receieved message array
            
            if (sendSuccess == true) { if (sent != received) { set sendSuccess = false; } } // Check if the sent message is still intact   
        }

        Message($"Message received: {receivedMes}");                                        // Display received message
        Message(sendSuccess ? "Teleportation successful!\n" | "Teleportation failed\n");    // Diisplay if the sent message is equal to the recieved message or not
    }
    
    // Teleports a message between single Qubits
    operation Tele (message : Qubit, target : Qubit) : Unit {
        use register = Qubit(); // Create the sender Qubit

        H(register);            // Place the sender in superposition
        CNOT(register, target); // Entangle the sender and receiver Qubits

        CNOT(message, register);// Send message into our sender
        H(message);             // Placiing message into superpositon causes the message to send

        // USe MResetZ to measure message and register while resetting them to zero so they can be released
        if (MResetZ(message) == One) { Z(target); }     // If the sent message was one, apply a Z gate so the state does not change when measured
        if (MResetZ(register) == One) { X(target); }    // If the register step of the sending was equal to one, flip the result with an X gate to apply needed correction
    }

    // Converts the input and output of the teleportation between classical bits and a Qubits
    operation TeleportMsg (message : Bool) : Bool {
        // Create two Qubit objects to be the sender and the reciever
        use (msg, target) = (Qubit(), Qubit()); // NOTE: they are not in superposiiton yet and both start as ZERO

        if (message) { X(msg); }        // If the message is ONE, set our sender Qubit to ONE

        Tele(msg, target);              // Pass the sender and receiver Qubits through the tele operatiion
        return MResetZ(target) == One;  // Return the measured target of the teleportation and reset target to be released. Convert output to a bool
    }

    // Creates a 16 bit Q register
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