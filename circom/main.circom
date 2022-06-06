pragma circom 2.0.3; // specifies version of compiler

template Multiplier2(){ // creating template 'Multiplier2' that is later instantiated to create a new circuit
   signal input in1; // declaring input signal 'in1'
   signal input in2; // declaring input signal 'in2'
   signal output out; // declaring output signal 'out'
   out <== in1 * in2; // creating constraint and assignment 'out' must be product of 'in1' and 'in2' (always true)
   log(out); // printing out 'out'
}

component main {public [in1,in2]} = Multiplier2(); // instantiating template 'Multiplier2' to create component 'main' with 'in1' and 'in2' (and 'out') being public signals (output signals are alway public)

/* INPUT = {
    "in1": "5",
    "in2": "77"
} */
