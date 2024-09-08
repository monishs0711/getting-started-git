module tb_Dff;
    reg d;
    reg reset;
    reg clk;
    wire q;

    // Instantiate the D flip-flop module
    Dff uut (
        .d(d),
        .reset(reset),
        .clk(clk),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Initial block for test stimulus
    initial begin
        // Create waveform file
        $dumpfile("waves.vcd");
        $dumpvars(0, tb_Dff);

        // Initialize inputs
        reset = 0;
        d = 0;

        // Apply reset
        reset = 1;
        #10;
        reset = 0;

        // Test cases
        d = 1;
        #10;

        d = 0;
        #10;

        d = 1;
        #10;

        // Apply reset again
        reset = 1;
        #10;
        reset = 0;

        // Continue with further test cases if needed
        d = 0;
        #10;

        d = 1;
        #10;

        // End simulation
        $stop;
    end
endmodule