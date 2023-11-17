module jishuqi(clk,rst,en,load,cout,data,q1);
input clk,en,rst,load;
input [3:0] data;
output cout;
output q1;
reg[3:0] q1;
reg cout;

always@(posedge clk or negedge rst)//clk的上升沿，或者时钟的下降沿
begin
if(!rst)
	q1<=0;//初始化为0
else if(en) begin
	if(!load)  q1<=data;
else if(q1<9) q1<=q1+1;
else q1<=4'b0000;end
end
always@(q1)//表示十进制的九，4位二进制表示，如果条件成立，也就是 q1 的值等于 9，那么将 cout 寄存器的值设置为1（1位宽的二进制常数 1'b1），这表示计数器已经达到了特定的值。
    if (q1==4'h9) cout=1'b1; else cout=1'b0;
    //count 表示的是进位
    
    shu u_shu(
.in (q1)
);
    
endmodule




module shu
(
    input wire  [3:0] in,
	output reg  [7:0] out
	
);
always@(*)
    if(in==4'b0000)         //0
	    out=8'h3f;
		else if(in==4'b0001)//1
		out=8'h06;
		else if(in==4'b0010)//2
		out=8'h5b;
		else if(in==4'b0011)//3
		out=8'h4f;
		else if(in==4'b0100)//4
		out=8'h66;
		else if(in==4'b0101)//5
		out=8'h6d;
		else if(in==4'b0110)//6
		out=8'h7d;
		else if(in==4'b0111)//7
		out=8'h07;
		else if(in==4'b1000)//8
		out=8'h7f;
		else if(in==4'b1001)//9
		out=8'h6f;
		else if(in==4'b1010)//A
		out=8'h77;
		else if(in==4'b1011)//B
		out=8'h7c;
		else if(in==4'b1100)//C
		out=8'h39;
		else if(in==4'b1101)//D
		out=8'h5e;
		else if(in==4'b1110)//E
		out=8'h79;
		else if(in==4'b1111)//F
		out=8'h71;
		else out = 8'b0000_0001;
 endmodule
