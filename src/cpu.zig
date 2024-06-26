// Central Processing Unit

const ProcessorStatusFlags = packed struct {
  carry: u1 = 0,               // Result carry bit
  zero: u1 = 0,                // Result is zero
  disable_interrupts: u1 = 0,    
  decimal_mode: u1 = 0,        // Not used in NES
  break_call: u1 = 0,          // Break called by interrupt
  unused: u1 = 0,     
  overflow: u1 = 0,            // Result overflow 
  negative: u1 = 0,            // Negative result
};

// 6502 CPU registers
var cpu_status = ProcessorStatusFlags;
var cpu_accumulator: u8;
var x_register: u8;
var y_register: u8;
var stack_pointer: u8;
var cpu_program_counter: u16;

// Adressing modes

// Opcodes

