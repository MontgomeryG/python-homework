# PyChain Ledger

We are creating a Streamlit application that replicates the way a block chain is structured, by creating a ledger that stores hypothetical monetary transactions.

This application takes in 3 inputs: string "sender", string "reciever", and float "amount".

![alt text](Images/Inputs.png)

Our application stores the input information into our blockchain as a new block.

Each newly created block contains the unique hash of the previous block, and that previous block's hash represents encrypted data for all of the blocks before it going back to the genisus of the chain. So, each step of the chain will introduce a new encryption.

![alt text](Images/ledger_test.png)