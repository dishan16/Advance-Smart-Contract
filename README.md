## Merkel-Airdrop-Contract

Merkle airdrop contract is an example of usage of simple and very efficient method for executing arbitrary action on very large set of Ethereum addresses.

## Overview

This contract helps stop Spamming when there a lot of transactions needs to be processed. The contract can save gas when the owner sends the tokens.

## Description

A list of address is stored with many entries, Owner reads the list and creates a merkel tree structure and notes down the `merkel root` .Owner creates contract and places calculated Merkle root into it.
Users may provide their `proof, positions, and the amount` to receive. When their input is validated, the amount specified will be transferred to their address.

## Off-Chain

Inside the off-chain, user addresses are stored and only the amount they must receive. The user's address is hashed by keccak256 which provides the proof.
