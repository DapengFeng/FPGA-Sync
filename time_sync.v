module time_sync(clk_50m,rst_n,pwm_1,pwm_2,pwm_3,pwm_4,pwm_5); 
input wire clk_50m;   
input wire rst_n;
output reg pwm_1;
output reg pwm_2;
output reg pwm_3; 
output reg pwm_4;
output reg pwm_5;


parameter FRE_1   =   32'd49999999;
parameter FRE_2   =   32'd4999999;
parameter FRE_3   =   32'd4999999;
parameter FRE_4   =   32'd4999999;
parameter FRE_5   =   32'd499999;


parameter DUTY_1   =   32'd4999999;
parameter DUTY_2   =   32'd2499999;
parameter DUTY_3   =   32'd2499999;
parameter DUTY_4   =   32'd2499999;
parameter DUTY_5   =   32'd249999;


reg [31:0] counter_1;
always @(posedge clk_50m or negedge rst_n) begin
	if(!rst_n)begin
		counter_1 <= 0;
	end
    else begin
        if (counter_1 < FRE_1) begin
            counter_1 <= counter_1 + 1;
        end
        else begin
            counter_1 <= 0;
        end
    end
end

always @(posedge clk_50m or negedge rst_n)begin
	if(!rst_n)begin
		pwm_1 <= 1;
	end
	else begin
		if(counter_1 < DUTY_1)begin
			pwm_1 <= 1;
		end
		else begin
			pwm_1 <= 0;
		end
	end
end


reg [31:0] counter_2;
always @(posedge clk_50m or negedge rst_n) begin
	if(!rst_n)begin
		counter_2 <= 0;
	end
    else begin
        if (counter_2 < FRE_2) begin
            counter_2 <= counter_2 + 1;
        end
        else begin
            counter_2 <= 0;
        end
    end
end

always @(posedge clk_50m or negedge rst_n)begin
	if(!rst_n)begin
		pwm_2 <= 1;
	end
	else begin
		if(counter_2 < DUTY_2)begin
			pwm_2 <= 1;
		end
		else begin
			pwm_2 <= 0;
		end
	end
end


reg [31:0] counter_3;
always @(posedge clk_50m or negedge rst_n) begin
	if(!rst_n)begin
		counter_3 <= 0;
	end
    else begin
        if (counter_3 < FRE_3) begin
            counter_3 <= counter_3 + 1;
        end
        else begin
            counter_3 <= 0;
        end
    end
end

always @(posedge clk_50m or negedge rst_n)begin
	if(!rst_n)begin
		pwm_3 <= 1;
	end
	else begin
		if(counter_3 < DUTY_3)begin
			pwm_3 <= 1;
		end
		else begin
			pwm_3 <= 0;
		end
	end
end


reg [31:0] counter_4;
always @(posedge clk_50m or negedge rst_n) begin
	if(!rst_n)begin
		counter_4 <= 0;
	end
    else begin
        if (counter_4 < FRE_4) begin
            counter_4 <= counter_4 + 1;
        end
        else begin
            counter_4 <= 0;
        end
    end
end

always @(posedge clk_50m or negedge rst_n)begin
	if(!rst_n)begin
		pwm_4 <= 1;
	end
	else begin
		if(counter_4 < DUTY_4)begin
			pwm_4 <= 1;
		end
		else begin
			pwm_4 <= 0;
		end
	end
end


reg [31:0] counter_5;
always @(posedge clk_50m or negedge rst_n) begin
	if(!rst_n)begin
		counter_5 <= 0;
	end
    else begin
        if (counter_5 < FRE_5) begin
            counter_5 <= counter_5 + 1;
        end
        else begin
            counter_5 <= 0;
        end
    end
end

always @(posedge clk_50m or negedge rst_n)begin
	if(!rst_n)begin
		pwm_5 <= 1;
	end
	else begin
		if(counter_5 < DUTY_5)begin
			pwm_5 <= 1;
		end
		else begin
			pwm_5 <= 0;
		end
	end
end

endmodule








