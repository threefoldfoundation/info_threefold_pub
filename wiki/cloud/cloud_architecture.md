# ThreeFold P2P Cloud architecture explained

## Introduction

Using public clouds today became a threat to data privacy and security. On the other hand, running your own nodes can be complicated, especially when getting started and wanting to scale fast. Many independent people and organizations connect compute and storage capacity in the form of hardware/servers called 3Nodes to the ThreeFold P2P Grid, the backbone of ThreeFold P2P Cloud.

All 3Nodes connected to the ThreeFold Grid are registered in a database called the TF Directory, that displays the capacity available on the TF Grid Explorer. We call this proof-of-capacity.

Users can find the capacity they need on the TF Grid Explorer and reserve it via their 3Bot - a virtual system administrator that executes the commands and functions (reservation of capacity, editing workloads, etc.) directly on the operating system level via a smart contract for IT.

This enables users to see the available capacity on the TF Grid Explorer and reserve Cloud Units on the 3Nodes of their choice without any intermediaries needed in the model. All reservation of capacity is done in the means of TFT.

## The currency: TFT

TFT is the official currency of ThreeFold P2P Cloud. It is a decentralized digital currency that represents a unit of reservation of capacity (compute, storage, network).

Learn more about TFT [here](tokens_home).

## The operating system: Zero-OS

Zero-OS was built from scratch on a Linux Kernel to remove all the unnecessary complexity found on contemporary OS’s. Zero-OS supports a small number of primitives, and performs low-level functions natively.

It delivers 3 primitive functions:

- Storage capacity compatible to any file system and format;
- Compute capacity in the form of highly-optimized containers;
- Network capacity to run the network services.

There is no shell, local nor remote attached to Zero-OS. It does not allow for inbound network connections to happen. Also, given its shell-less nature, the people and organizations that run 3Nodes cannot issue any commands nor access its features. In that sense, Zero-OS enables a “zero people” (autonomous) Internet, meaning hackers cannot get in, while also eliminating human error from the paradigm.

The compute, storage and network primitives can only be accessed via a 'Smart Contract for IT'.

Learn more about Zero-OS [here](zos).

## The servers: 3Nodes

The ThreeFold Grid is the first autonomous cloud grid in the world and is completely self-driving and self-healing. It provides you with the ability to select your compute and storage anywhere on the network and to access your developing environments with your private key. Different nodes give access to mainnet and testnet. 

All 3Nodes connected to the ThreeFold Grid are booted with the Zero-OS operating system. The 3Nodes will register themselves autonomously to the blockchain database called the TF Directory. Once registered in the TF Directory, the capacity of the 3Nodes will become available on the TF Grid Explorer. We call this proof-of-capacity. This brings a major benefit to users as compared to many blockchain protocols that run on public cloud providers.

You can have your own dedicated node, while others use load balancers to distribute activity across nodes. Almost all compute (eVDC) and storage (zstor) services are extremely easy to work with, making it easy to switch 3Nodes or even to switch between your compute and storage dedicated 3Nodes.

It's important to note that 3Nodes do not store private information such as private keys. All these remains available only to your virtual system administrator - 3bot.

Learn more about 3Nodes [here](part1_the_3node).

## Smart Contract for IT

The purpose of the smart contract for IT is to create and enable autonomous IT. Autonomous self-driving IT is possible when we adhere to two principles from start:

1. Information technology architectures are configured and installed by bots (a ‘smart contract agent’), not people.
2. Human beings cannot have access to these architectures and change things.

While sticking to these principles, it provides the basis to consider and describe everything in a contract type format and to deploy any self-driving and self-healing application on the ThreeFold Grid.

Everything from the reservation of storage and compute to the management of your development environment is handled by the Smart Contract for IT. The smart contract creates and registers the IT requirements in the blockchain database. Zero-OS nodes then cooperate with the smart contract execution code. 

Learn more about smart contract for IT [here](smartcontract_it).

## The virtual system administrator: 3Bot
3Bot is a virtual system administrator that manages the user’s IT workloads. It can manage millions of objects and remains fully private to its owner as every 3Bot is equipped of a private key. This ensures an immutable record of any workload as well as a self-healing functionality to restore these workloads if/when needed.

The 3Bot has a number of built-in capabilities which allows you to create and operate large scale architectures on the ThreeFold P2P Cloud.3Bots develop, deploy and manage your IT workloads on the ThreeFold Grid. This brings infinite possibilities to create, build and scale architectures and IT workloads. 

All 3Bot IDs are registered on a modern type of phone book that uses blockchain technology. This phone book, also referred to as the Threefold Grid Blockchain, allows all 3Bots to find each other, connect and exchange information or resources in a fully end-to-end encrypted way. Here as well, there are “zero people involved, as 3Bots operate autonomously in the network, and only under the user’s commands. 

While using ThreeFold P2P Cloud, you deploy your own private environment. This means that with 3Bot technology, you are able to organize your environment and collaboration limitlessly. From creating, splitting and connecting containers to sharing part or all of your development environment.

3Bot is equipped with a cryptographic 2-factor authentication mechanism. You can log in to your 3Bot via the ThreeFold Connect app on your device which contains your private key. 

Learn more about 3Bot [here](part4_3bot_digital_avatar_digital_self).

## How Mature is the TF Grid today?

- Our Zero-OS is beta quality and is at its 2nd major release.
- The workloads can be registered using json format for our Smart Contract for IT layer.
- Experts can use any development language on the grid.
- We need more developers and copywriters to help expand the technology and knowledge base.

## TF Grid for tech experts

- 3Bot serves as your virtual system administrator, see [SDK](!manual:manual3_home_new).
- It's a very powerful tool that allows you to automate & manage thousands of virtual workloads.
- Python language can be used to extend this tool and make it your own.
- This software is beta quality but usable for production. Be reminded that the workload itself is running on Zero-OS and the Smart Contract for IT layer, which is production quality.

*Note: This was last updated March 2021.*
