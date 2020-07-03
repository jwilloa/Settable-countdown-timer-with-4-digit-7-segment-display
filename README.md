# Assignment 1: Settable countdown timer with 4-digit 7-segment display

## Objectives
First experience using VHDL in conjunction with with Xilinx software studio and the Basys3 design board.

The aim is to implement a settable countdown timer showing the  remaining time on the
4-digit 7-segment display of the Basys3 board. The timer has two modes of operation: “SET”
and “GO”. The central button on the board toggles between the two. In “SET” mode, the user
is allowed to set the initial time in minutes (the seconds will always be 00). The up and down
buttons can be used to increment or decrement the minutes in a range from 0 to 60. If the current
value of the seconds is different from zero, pushing the up button moves to the next integer number
of minutes (rounds up) while pushing the down button moves to the previous integer number of minutes (rounds down). 
In “GO” mode, the timer should count down from the current value towards zero at a rate of approximately 1 second.

## Modular coding
1. 7-segment decoder: the user should be able to use the rightmost four switches, SW3–SW0, to
input a BCD (0–9) digit that is then displayed (duplicated) on all four digits of the Basys3
display;

2. manually-multiplexed 4-digit 7-segment decoder: the user should be able to use the sixteen
switches, SW15–SW0, to input four BCD (0–9) digits that are then displayed, in turn, on
each one of the four digits of the Basys3 display; the user manually simulates the multiplexing
clock by pressing the central button;

3. settable countdown timer with 4-digit 7-segment display: complete final design as described at
the beginning of this section.

# Assignment 2: “Basketball” video game 
## Objectives
Develop initial knowledge used in first assignment and improve the knowledge of the VHDL language.

The task for this assignment is to implement a simplified “Basketball” video game.
The basic layout should include a basket, a ball, and a player. The ball flies, following a
parabolic trajectory, towards the basket. If the ball enters the basket a point is awarded.
By using the controls available on the Basys3 board, the user determines the direction and
intensity of the throw. In “debug mode”, the 4 leftmost switches encode the initial horizontal speed of the ball, 
the next 4 switches encode its vertical speed, and the central button is used to throw
the ball. In “play mode”, it is left to the student to decide the details of the user interface and how
to make the game more challenging.
