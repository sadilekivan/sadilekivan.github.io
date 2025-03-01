---
date: 2021-06-27T08:42:00Z
draft: false
title: Switching Regulator
tags:
  - projects
  - Custom Device
  - Custom PCB
  - PlatformIO
  - Arduino
  - ATmega328P
  - C++
cover:
  image: switching_regulator/board.png
  caption: Switching Regulator Board
---

A current loop driven regulator. Regulates a arbitrary device with two relays. Both either connect or disconnect grid power. A deadtime between these two states ensure the regulator never activates both relays.

The customer scenario included a [contactor](https://en.wikipedia.org/wiki/Contactor) driving a industrial pipe valve in a variable manner. After a setup for the limit mapping of the valve positions to the range of a current loop `(Fully closed - Fully open) => (4mA - 20mA)` the regulator manages the valve and ensures a correct position accoring to the `setpoint` input value at all times.