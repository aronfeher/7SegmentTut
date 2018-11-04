module SegmentLogic2(input[3:0] din, output[6:0] dout);
    always @(din)
    begin
        case (din) //case statement
            0 : dout = 7'b0000001;
            1 : dout = 7'b1001111;
            2 : dout = 7'b0010010;
            3 : dout = 7'b0000110;
            4 : dout = 7'b1001100;
            5 : dout = 7'b0100100;
            6 : dout = 7'b0100000;
            7 : dout = 7'b0001111;
            8 : dout = 7'b0000000;
            9 : dout = 7'b0000100;
            default : dout = 7'b1111111; 
        endcase
    end    
endmodule