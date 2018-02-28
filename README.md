# jerrychain
A private blockchain to test your smart contracts on the Ethereum blockchain platform

Pre-requisites:

OS X operating system
Install and update Homebrew - https://brew.sh/

Steps:

1) Execute the brew_ethereum.sh file

**sh brew_ethereum.sh**

This step will install the geth client on your machine

2) Execute the tom.sh file

**sh tom.sh**

This step will initialize the geth client and start a private blockchain network

3) Open a new terminal and execute the below command:

**geth attach <IPC_endpoint_url>**

The IPC_endpoint_url can be obtained from the terminal where the geth client was started. This step will create a javascript console for the geth client that was initialized in the previous step.

4) Create a new account by executing the below command in the javascript console:

**personal.NewAccount()**

You will be prompted for a passphrase. Enter the passphrase and do not forget the passphrase. If you forget it, there is no way that you can access that account. 

This step will create a new account in coinbase and a unique address is generated. Store this address and passphrase for future use.

The account keys are stored under <DATADIR>/keystore

5) To check your default account, execute the below command:

**eth.coinbase**

If this address is the same as the one from step 4, skip the rest of step 5.

To set your default account, first check the accounts that you have:

**web3.eth.accounts**

Since you have created only one account, you will only have one account number in the list. To set that account as a default account, execute the below command:

**miner.setEtherbase(web3.eth.accounts[0])**

6) Start mining

Check your balance with 

**eth.getBalance(eth.coinbase)**

Run  **miner.start()**

Look at the other terminal window, you should see some mining action in the logs. Check your balance again and it should be higher.

To end mining 

Run   **miner.stop()**

This is virtual ether and can be used only for testing your smart contracts in your private blockchain network.


