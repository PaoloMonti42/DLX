# DLX processor

Development of a fully functional MIPS processor core.   
The DLX sports a 5 stage pipeline with data forwarding, branch prediction, control hazard management, datapath optimization and register file windowing.  
After the design, the whole module was synthetized and power optimized.  
Finally, physical implementation with basic place&route and clock tree synthesis followed.  

The *__Report.pdf__* file goes in depth with the details about design and implementation of each feature.  
Project developed for the course of Microelectronic Systems at Politecnico di Torino, year 2016-2017.


### Simulation

After navigating to the *DLX_simulation* folder, execute the *compileAll* script. What this does is creating the work folder, then compiling all the necessary files in hierarchical order.  
Be careful with changing the names of the .vhd files, the dependencies are solved with a certain naming scheme, and that could break it.  

The next thing required is placing in this directory the binary file with the code you want to execute. Some code snippets are already available and compiled in the *test_bench* directory; instructions to compile and run your own code will follow.
Then, the simulation is executed with ModelSim my MentorGraphics by running the *run.do* script in the *test_bench* folder.

For example, if you want to run the code in the *forwarding* folder, this is the sequence of steps required:

```

cd DLX/DLX_simulation
./compileAll
cp test_bench/forwarding/test.asm.mem .
vsim -do test_bench/run.do

```

In case you want to run some custom code, some additional steps are required.  
First, move into the *compiler* directory. In there, create, or copy your own .asm file with the instructions to be executed.  
Then, by running the *compileCode.sh* script, and providing the .asm filename as an argument, the code is compiled and the .mem file is directly placed into the parent directory, where is needed for the simulation to run. Simulation can follow as before.


### Synthesis

To reproduce the synthesis procedure, two scripts are provided in the *DLX_synthesis* folder, both to be executed by Synopsys DesignCompiler.  
The *compileBottomUp.tcl* replicates the exact procedure we used to synthesize the processor, with a compile-once-dont-touch approach. By executing the script, the most influential components (in this case, the adder, the multiplier and the ALU) are compiled and optimized separately, so that their optimizations are kept by the upper lever components that instantiate them.  
Timing and power reports are generated at each step, before and after the optimization.  

Instead, the *analyzeAll.tcl* script only performs a preliminary compilation of all .vhd files in hierarchical order, so that another custom synthesis flow can be executed.

### Physical implementation

The *DLX_implementation* folder contains the working directory of Cadence Encounter.  
*dlx.v* contains the verilog code from which the elaboration starts, and in the *dlx.sdc* file are listed the timing constraints applied for the clock tree synthesis.
 The *summaryReport* folder contains very useful information about every step of the implementation: gates, cells, nets, pins, power and layers.
