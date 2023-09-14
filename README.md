
# Very Simple Switch

---

## Overview

This repository contains a Verilog hardware description for a simple switch implemented in Xilinx Vivado. The switch can handle multiple input and output ports with configurable data width. This README provides instructions on setting up the software environment and running the program.

## Program Functionality

The Verilog module "very_simple_switch" is designed to perform the following functions:
- Accept input data from multiple input ports.
- Route incoming data to the appropriate output port based on the destination address.
- Provide output data on the specified output port.

## Software Setup

To set up the software environment for this project, you will need the following:

1. **Xilinx Vivado:** This project is intended to be used with Xilinx Vivado, a popular FPGA development tool. Ensure that you have Vivado installed on your system.

2. **FPGA Hardware:** You will need access to FPGA hardware that is compatible with Vivado. Please refer to the documentation of your specific FPGA board for any additional setup requirements.

3. **Verilog Files:** Download or clone this repository to your local machine to obtain the Verilog files.

## Running the Program

Follow these steps to run the program on Xilinx Vivado:

1. **Open Vivado:** Launch Xilinx Vivado on your computer.

2. **Create a New Project:**
   - Click on "File" > "New" > "Project."
   - Follow the New Project Wizard to set up your project. You can choose a project name and location as per your preference.

3. **Add Verilog Files:**
   - In the Vivado Project Navigator, right-click on "Design Sources" and select "Add Sources."
   - Browse to the directory where you have cloned or downloaded this repository and add the Verilog files (`very_simple_switch.v`, `very_simple_switch_tb.v`, and `fifo.v`) to your project.

4. **Simulate the Design (Optional):** You can simulate the design by creating a simulation configuration and running a behavioral simulation. This step helps verify the functionality of your design before synthesis and implementation.

5. **Synthesize and Implement:**
   - Once you are satisfied with the simulation results, proceed to synthesis and implementation.
   - Click on "Flow" > "Run Synthesis," and then "Run Implementation" in Vivado to generate the bitstream.

6. **Generate Bitstream:**
   - After successful implementation, generate the bitstream file that you will use to program your FPGA.

7. **Program the FPGA:**
   - Use the generated bitstream file to program your FPGA. Refer to your FPGA board's documentation for specific instructions on how to do this.

8. **Test on Hardware:**
   - Connect input and output devices to your FPGA as required by your Verilog design.
   - Test the functionality of the very_simple_switch module on your FPGA hardware.

## Notes

- Make sure to adapt the Verilog module parameters (`DATA_WIDTH`, `INPUT_QTY`, `OUTPUT_QTY`, etc.) according to your project requirements.

- Always refer to the official Xilinx Vivado documentation for detailed instructions and troubleshooting.

- Remember to respect academic integrity and avoid plagiarism while using this code for reference in your own projects. Follow the Academic Integrity Statement provided in this README.


# Academic Integrity Statement

Please note that all work included in this project is the original work of the author, and any external sources or references have been properly cited and credited. It is strictly prohibited to copy, reproduce, or use any part of this work without permission from the author.

If you choose to use any part of this work as a reference or resource, you are responsible for ensuring that you do not plagiarize or violate any academic integrity policies or guidelines. The author of this work cannot be held liable for any legal or academic consequences resulting from the misuse or misappropriation of this work.

Any unauthorized copying or use of this work may result in serious consequences, including but not limited to academic penalties, legal action, and damage to personal and professional reputation. Therefore, please use this work only as a reference and always ensure that you properly cite and attribute any sources or references used.
