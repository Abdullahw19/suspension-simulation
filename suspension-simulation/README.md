# Suspension System Simulation (MATLAB)

A MATLAB-based simulation tool for analysing the dynamic response of a quarter-car suspension model. The project models displacement, velocity, and acceleration using ODE solvers, evaluates ride comfort using RMS acceleration, and visualises system behaviour through plots and animations.

## Features
- ODE-based suspension modelling using `ode45`
- Modular functions for simulation, acceleration computation, and RMS evaluation
- Animated visualisation of suspension movement
- Parameter sweep to analyse damping effects
- Optimisation routine to identify the damping coefficient that minimises RMS acceleration

## Tech Stack
- MATLAB (ODE45, vectorisation, function handles)
- Numerical methods
- Data visualisation

## How to Run
1. Clone the repository
2. Open MATLAB
3. Run:
   ```matlab
   main
