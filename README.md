# Poker Odds Simulation

This project is a MATLAB script that simulates the probabilities of various poker hands using a Monte Carlo method. The simulation involves drawing a hand of 5 cards from a shuffled deck of 52 cards and calculating the probability of getting specific poker hands over a large number of trials.

## Overview

The script performs 100,000 simulations (defined by the variable `repeat`), where each simulation:
- Shuffles a standard deck of 52 playing cards.
- Draws 5 cards randomly from the shuffled deck.
- Checks whether the drawn hand is one of the following poker hands:
  - **Four of a Kind**
  - **Full House**
  - **Three of a Kind**
  - **Two Pair**
  - **One Pair**

The script then calculates and displays the probability of each hand occurring, based on the number of successful outcomes divided by the total number of simulations.

## Features

- **Deck Setup:** The script uses a deck of 52 cards with 13 ranks and 4 suits (Hearts, Spades, Diamonds, and Clubs).
- **Monte Carlo Simulation:** It runs 100,000 simulations to estimate the probability of various poker hands.
- **Poker Hand Detection:** The script checks for the following poker hands:
  - **Four of a Kind**
  - **Full House**
  - **Three of a Kind**
  - **Two Pair**
  - **One Pair**
  
## Instructions
1. Copy the script into a MATLAB file (e.g., `poker_hand_simulation.m`).
2. Run the script in MATLAB/Octave.
3. The script will output the number of times each hand occurred and the estimated probability for each hand type.
