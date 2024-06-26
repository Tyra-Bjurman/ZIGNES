// Central Processing Unit

const pub ProcessorStatusFlag = packed struct {
  carry:                u1 = 0,    // Result carry bit
  zero:                 u1 = 0,    // Result is zero
  disable_interrupts:   u1 = 0,    
  decimal_mode:         u1 = 0,    // Not used in NES
  break:                u1 = 0,    // Break operation called
  unused:               u1 = 0,    // 
  overflow:             u1 = 0,    // Result overflow 
  negative:             u1 = 0,    // Negative result
};

