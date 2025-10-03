module light(
    input upstairs, downstairs,// Declare downstairs and upstairs input
    output stair_light// Declare stair light output
);

    assign stair_light = upstairs ^ downstairs;// Enter logic equation here

endmodule