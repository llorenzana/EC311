The project will be completed as groups of two. Please pick a partner, a project topic, and a
demo day, and fill the sheet provided to you.

Deliverables:
  - Submit your Verilog code, testbenches, and project contribution text file, describing the division of work between group members
  - Complete a demo of your project. Both group members must be present for the demo.
  - Prepare a 5-minute presentation of the functionality of your project, to be presented during lecture. Both group members must participate in the presentation.

2- Countdown timer
You will implement a countdown timer on the FPGA device. The timer—once it is reset— accepts a 6-bit number as input and starts counting down after pressing the start button. The timer should display the countdown of seconds as BCD on the 7-segment display. Once it times out, an LED should blink every second until the system is reset. You will need to use a decoder for the SSD and a clock divider to get 1 Hz frequency.

The timer should have the following inputs:

  - A “reset” button: Clears out the output and starts the system from the initial state
  - A “start/continue” button: Starts the counting or continues if it was paused
  - A “pause” button: Pauses the timer. The output should still be visible on the SSD
  - A “restart” button: Restarts counting from the value entered the last time.
  - The number to count down from (use 6 switches to define the number)
