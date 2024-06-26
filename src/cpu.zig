// Central Processing Unit

const ProcessorStatusFlags = packed struct {
  carry: u1,               // Result carry bit
  zero: u1,                // Result is zero
  disable_interrupts: u1,    
  decimal_mode: u1,        // Not used in NES
  break_call: u1,          // Break called by interrupt
  unused: u1,     
  overflow: u1,            // Result overflow 
  negative: u1,            // Negative result
};

// 6502 CPU registers
var status: ProcessorStatusFlags = 0x00;
var accumulator: u8 = 0x00;
var x_register: u8 = 0x00;
var y_register: u8 = 0x00;
var stack_pointer: u8 = 0x00;
var program_counter: u16 = 0x0000;

// Adressing modes
fn ABS() u8;

// Opcodes
fn ADC() u8;
// ...
fn XXX() u8;

// Emulator helper functions
var address_absolute: u16 = 0x0000;
var address_relative: u16 = 0x0000;
var opcode: u8 = 0x00;
