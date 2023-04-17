`timescale 1ns / 1ps
module vending_machine (
  input clk,
  input rst,
  input [2:0] selection,
  input coin,
  output reg dispense
);

// Define the state types
typedef enum logic [1:0] {
  IDLE,
  SELECTING,
  DISPENSING,
  RETURNING
} state_t;

// Define the state register and next state logic
reg [1:0] state, next_state;

always @(posedge clk, posedge rst) begin
  if (rst) begin
    state <= IDLE;
  end else begin
    state <= next_state;
  end
end

// Define the state transition logic
always @(*) begin
  case (state)
    IDLE: begin
      if (selection != 3'b000 && coin) begin
        next_state = SELECTING;
      end else begin
        next_state = IDLE;
      end
    end
    SELECTING: begin
      if (selection == 3'b001) begin
        next_state = DISPENSING;
      end else if (coin) begin
        next_state = SELECTING;
      end else begin
        next_state = RETURNING;
      end
    end
    DISPENSING: begin
      next_state = RETURNING;
    end
    RETURNING: begin
      next_state = IDLE;
    end
  endcase
end

// Define the output logic
always @(state) begin
  case (state)
    IDLE: begin
      dispense = 1'b0;
    end
    SELECTING: begin
      dispense = 1'b0;
    end
    DISPENSING: begin
      dispense = 1'b1;
    end
    RETURNING: begin
      dispense = 1'b0;
    end
  endcase
end

endmodule
