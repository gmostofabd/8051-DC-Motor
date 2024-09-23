# ⚙️ **8051 DC Motor Interfacing**

<p align="center">
  <img src="https://github.com/gmostofabd/8051-DC-Motor/blob/feca7ea1dd92f3ef45aafdb5c30a1a3f59c8b644/assets/images/DCMOTOR_80501_Ckt.png" alt="AT89C51 DC Motor Circuit" width="70%">
</p>

This repository demonstrates how to interface a DC motor with the 8051 microcontroller using the **L298** driver to handle the extra current required to run the motor. The project includes complete assembly code, Proteus simulation files, and documentation, along with screenshots and photos from testing.

## 📦 **Project Overview**
The project showcases the integration of a **DC motor** with the **AT89C51** microcontroller, part of the 8051 family. The DC motor is driven via the **L298** H-Bridge motor driver, which provides the necessary current amplification to control the motor's direction and speed efficiently. The Proteus simulation files allow you to visualize and test the functionality before implementing it on hardware.

### **Key Features:**
- **DC Motor Control**: Forward and reverse motor control using the 8051 microcontroller.
- **L298 Driver**: Used to supply the necessary current for the DC motor operation.
- **Proteus Simulation**: Includes simulation files for DC motor interfacing with the 8051 MCU.
- **Test Results**: Screenshots and photos from actual tests provide insights into the project's performance.

## 🔧 **Hardware Components**
- **AT89C51 Microcontroller**: Manages control signals for the DC motor.
- **L298**: H-Bridge motor driver, used to control the direction and speed of the DC motor.
- **DC Motor**: The motor being controlled by the microcontroller and driver circuit.
- **Power Supply**: Provides the necessary voltage and current for the system.

## 🖥️ **Simulation & Testing**
This project was simulated using **Proteus Design Suite** to verify the DC motor's behavior and control before real-world implementation. The repository includes:
- Assembly code for controlling the DC motor.
- Proteus simulation file showing motor operation.
- Screenshots and photos taken during the testing phase.

---

### 🚀 **Steps to Run the Project:**
1. **Clone this repository**:
   ```bash
   git clone https://github.com/yourusername/8051_DC_Motor_Interfacing.git
   ```
2. **Open the Proteus Simulation**: 
   Load the provided simulation file in **Proteus Design Suite** and run it to observe the motor's behavior.
3. **Compile and Upload the Code**:
   Use **MIDE-51** or any other 8051-compatible IDE to compile the assembly code and generate the HEX file.
4. **Test on Hardware**:
   After programming the microcontroller, assemble the circuit with the DC motor and L298, and power it on to observe real-time results.

---

## 📄 **Included Files:**
- **Assembly Code**: The code to drive the DC motor using the 8051 microcontroller.
- **Proteus Simulation Files**: Pre-built simulation to test and visualize the circuit.
- **HEX File**: Ready-to-upload HEX code for the microcontroller.
- **Screenshots & Photos**: Visual proof of successful testing on both Proteus and hardware.

---



## 👨‍💻 **Code View**

```assembly
; 8051 Assembly Code for DC Motor Control using L298 Driver

ORG 0000H         ; Start Program at address 0
MOV P1, #00H      ; Initialize Port 1 (connected to L298)
MOV DPTR, #MYCODE ; Load the address of the code block
LCALL MOTOR_CTRL  ; Call the motor control routine

; DC Motor Control Subroutine
MOTOR_CTRL:
    MOV A, P1     ; Load the current value of Port 1 into Accumulator
    CPL A         ; Complement the Accumulator (toggle motor direction)
    MOV P1, A     ; Send the toggled value to Port 1
    ACALL DELAY   ; Call delay for motor timing
    RET           ; Return from subroutine

DELAY:
    MOV R0, #255  ; Load the maximum count for delay loop
DELAY_LOOP:
    DJNZ R0, DELAY_LOOP ; Decrement R0 until it reaches zero
    RET           ; Return from delay subroutine

END

```

