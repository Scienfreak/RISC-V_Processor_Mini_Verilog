### RISC-V Instructuon Fields

1. R-type (Register)
2. I-type (Immediate)
3. S-type (Store)

#### R-type

|  funct7  |   rs2   |   rs1   |  funct3  |   rd   |  opcode  |
_______________________________________________________________
|    7     |    5    |    5    |    3     |   5    |    7     |

#### I-type

|     Immediate      |   rs1   |  funct3  |   rd   |  opcode  |
---------------------------------------------------------------
|         12         |    5    |    3     |   5    |    7     |

#### S-type

|Imm[11:5] |   rs2   |   rs1   |  funct3  |Imm[4:0]|  opcode  |
---------------------------------------------------------------
|    7     |    5    |    5    |    3     |   5    |    7     |

--> 맞는지 다시 확인할 것
--> 이를 토대로 Instruction Interpreter 
