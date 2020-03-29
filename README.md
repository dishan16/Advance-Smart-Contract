## Merkel-Airdrop-Contract
Merkle airdrop contract is an example of usage of simple and very efficient method for executing arbitrary action on very large set of Ethereum addresses.

Name: Dishan Gohel
I.D: 101254621

## Overview
This contract helps stop Spamming when there a lot of transactions needs to be processed. The contract can save gas when the owner sends the tokens.

## Installation
Install package
`npm install`

Test with truffle
`npm test`

## Description
A list of address is stored with many entries, Owner reads the list and creates a merkel tree structure and notes down the `merkel root` .Owner creates contract and places calculated Merkle root into it.
Users may provide their `proof, positions, and the amount` to receive. When their input is validated, the amount specified will be transferred to their address.

## Off-Chain
Inside the off-chain, user addresses are stored and only the amount they must receive. The user's address is hashed by keccak256 which provides the proof.

## Importance of Merkel-Tree 
You might wonder, how is this approach more efficient than the previous hash chaining one? What advantage does a tree of hashes give to us? The root hash is used for content-based addressing. The merkle tree-like organization allows us to perform the following tasks in a very storage- and computation-efficient way.

## Data Verification
We download some chunk of data from the untrusted network.
We ask the server to provide the proof that this chunk is in the tree.
The server returns the appropriate hashes.
Using this information, you compute the root hash and verify it against the root hash with which you accessed the file.

## Consistency Verfication 
Consistency verification is desired in systems maintaining immutable (and hence append-only) log of data. It is used to verify that the entire log is untampered, which means verifying that the newer version at any time frame includes all the data of the older version and in the same order, i.e. no data at any stage has been into the history of the log.

## Data Synchronization 
Merkle trees can be used in synchronizing data across multiple nodes (peers)in a distributed system. With merkle trees, we don't need to compare the entire data to figure out what changed — we can just do a hash comparison of the trees. Once we figure out which leaves have been changed, the corresponding data chunk can be sent over the network and synced across all the nodes.
