module JK (
    input wire J,
    input wire K,
    input wire clk,
    input wire res,
    output reg q
);
always @(negedge res or negedge clk)begin
    if(res)begin
        q<=0;
    end else begin
        case ({J,K})
            2'b00: q<=q;
            2'b01: q<=0;
            2'b10: q<=1;
            2'b11: q<=~q;
            default: q<=q;
        endcase
    end
end
    
endmodule




module jk(input wire a,b,clk,res, output reg q);
always @(posedge or negedge res)begin
    if(res)
    q<=0;
    else
    case({j,k})
    2'b00: q<=q
    default: q<=~q;
    and so on....
    endcase

end
endmodule