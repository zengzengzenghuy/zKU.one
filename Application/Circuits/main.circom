pragma circom 2.0.3;  //define the version of circom compiler

//template is reusable code which acts as a blueprint for a component
template Multiplier2(){  
   signal input in1; // define input signal for circuit called 'in1'
   signal input in2; //define input signal for circuit called 'in2'
   signal output out;//define output signal for circuit called 'out'
   out <== in1 * in2;//compute the value of 'in1'*'in2' and pass the value to 'out'
   log(out);//print 'out' value
}

component main {public [in1,in2]} = Multiplier2();// define the main component using Multiplier2() template, and set two input signal as public, output signal is public by default

INPUT = {"in1":3,"in2":5}