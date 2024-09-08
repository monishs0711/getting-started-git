module tb_JK;

    // Testbench signals
    reg J;
    reg K;
    reg clk;
    reg res;
    wire q;

    // Instantiate the JK flip-flop
    JK uut (
        .J(J),
        .K(K),
        .clk(clk),
        .res(res),
        .q(q)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  // Clock period is 10 time units
    end

    // Testbench stimulus
    initial begin
        // Initialize signals
        clk = 0;
        res = 0;
        J = 0;
        K = 0;

        // Open VCD file
        $dumpfile("waves.vcd");
        $dumpvars(0, tb_JK);

        // Apply reset
        res = 1;
        #10;
        res = 0;

        // Test case 1: No Change
        J = 0; K = 0;
        #10;

        // Test case 2: Reset
        J = 0; K = 1; res=1;
        #10;

        // Test case 3: Set
        J = 1; K = 0; res=0;
        #10;

        // Test case 4: Toggle
        J = 1; K = 1; res=1;
        #20;

        // End simulation
        $finish;
    end

endmodule