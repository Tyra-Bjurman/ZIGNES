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
var status = ProcessorStatusFlags;
var accumulator: u8;
var x_register: u8;
var y_register: u8;
var stack_pointer: u8;
var program_counter: u16;

// Adressing modes
fn ABS() u8;

// Opcodes
fn ADC() u8;
// ...
fn XXX() u8;

// Emulator helper functions
var address_absolute: u16 = 0x0000;
var address_relative: u16 = 0x0000;
var opcode: u8 = 0;
