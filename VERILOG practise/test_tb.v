module twotofourdecoder_tb;

    // Declare testbench signals
    reg A;
    reg B;
    wire [3:0] i;  // Declare the output as a 4-bit wire

    // Instantiate the 2-to-4 decoder
    twotofourdecoder uut (
        .A(A),
        .B(B),
        .i(i)  // Remove the trailing comma
    );

    // Stimuli
    initial begin
        // Create waveform file
        $dumpfile("waves.vcd");
        $dumpvars(0, twotofourdecoder_tb);

        // Monitor signals
        $monitor("At time %t, A = %b, B = %b, i = %b", $time, A, B, i);

        // Apply stimuli
        A = 1; B = 1; #10;
        A = 1; B = 0; #10;
        A = 0; B = 1; #10;
        A = 0; B = 0; #10;

        // Finish simulation
        $finish;
    end
endmodule

