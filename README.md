# Simulation and analysis of Petri Net through CTL (Computation Tree Logic)
## Computer Engineering - Formal Methods 

### Intro

To run the following Petri Net and in order to verify its properties through CTL, I've downloaded the simulator GreatSPN. You can find more info about it here: https://github.com/greatspn/SOURCES

I've studied Petri Nets and CTL through my graduation's subject Formal Methods. In order to understand the operators and CTL's grammar, as well as the Petri net own structure, you need to study about it.

### A resourche sharing case problem

The following figure shows a multi-processor system in which there are three CPUs wanting to communicate between them as well as with the outside world with the assistance of two communication channels.

![alt text](https://github.com/danielaczarref/Petri-Net-CTL/blob/master/MultiProcessorSystem.png?raw=true)


The communication channel is the bottle neck of this problem, since there are three CPUs and each may compete for a channel when only two are available.

The "a" is the signal from CPUs to bus master to request a channel; the "g" is the signal from bus master to CPUs about grant of a channel; and the "r" is the signal from CPUs to bus master about release of a channel.

- Modeling of Petri Net:

![alt text](https://github.com/danielaczarref/Petri-Net-CTL/blob/master/PetriNET.png?raw=true)

The Petri net structure has to satisfy two properties:

1) Conversation of tokens: total number of tokens represented has to be constant at any time (equals to 2 channels);
2) Semafor: use of a channel (resource) has to be guarded so that only one CPU can use it at a time;


To satisfy the first property, the `P0` is included with two tokens to represent the two communication channels. And the semafor is represented through `P1`, `P2` and `P3`.

The `P4`, `P5` and `P6` represent the three CPUs meanwhile `P13` is the abstraction of a processor to prevent infinite loop.


All measures from the Petri net structure are shown in the following figure through Computer Tree Logic (CTL) in order to verify its properties.

![alt text](https://github.com/danielaczarref/Petri-Net-CTL/blob/master/Measures.png?raw=true)


- The system can't have a deadlock;
- All semafors have to be available with one token each;
- All three CPUs cannot posess one communication channel simultaneously;
- At some point, two CPUs will have one communication channel opened simultaneously;
- The `P4` can't always have one communication channel, for example;
- The `P4` can't have more than one communication channel;
- `P0` will have more than one communication channel;
- `P8` will have more than two tokens to exchange communcation between channel and bus master;
- We can't have all semafors and the `P4` CPU with token for liberation






