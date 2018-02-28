# jerrychain
A private blockchain to test your smart contracts on the Ethereum blockchain platform

Pre-requisites:

1) OS X operating system

2) Install and update Homebrew - https://brew.sh/

3) Clone or download this repository

Steps:

1) Execute the brew_ethereum.sh file

**sh brew_ethereum.sh**

This step will install the geth client on your machine

2) Execute the tom.sh file

**sh tom.sh <data_dir> <network_id> <port_number>**

**data_dir** - the location where your local private blockchain data will be stored

**network_id** - a unique id that you will assign to your private network

**port_number** - a port number which will be used for any communication to this node

This step will initialize the geth client and start a private blockchain network

3) Open a new terminal and execute the below command:

**geth attach <IPC_endpoint_url>**

The IPC_endpoint_url can be obtained from the terminal where the geth client was started. This step will create a javascript console for the geth client that was initialized in the previous step.

4) Create a new account by executing the below command in the javascript console:

**personal.NewAccount()**

You will be prompted for a passphrase. Enter the passphrase and do not forget the passphrase. If you forget it, there is no way that you can access that account. 

This step will create a new account in coinbase and a unique address is generated. Store this address and passphrase for future use.

The account keys are stored under **data_dir/keystore**

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

Look at the other terminal, you should see some mining action in the logs. Check your balance again and it should be higher.

To end mining 

Run   **miner.stop()**

The balance that is showing up in your account is virtual ether and can be used only for testing your smart contracts in your private blockchain network.

A single node private Ethereum blockchain network is ready!



**To create a nulti-node Ethereum block chain cluster:**

Repeat the steps 2 through 6, with a **different port_number** each time, for as many times as the number of nodes you need in the network.

After repeating the steps, the open terminal will be 2 times (one where the geth client is running and an other where the javascript console for that client is running) the number of nodes.

7) On the javascript console of the created nodes, check if you have any peers:

**net.peerCount** - This will give you the peers count

**admin.peers** - This will you give you the peer information, if they exist

To add peers to a network, 

admin.addPeer("enode_url")

**enode_url** - This is obtained from the 'self' variable, which is present in the terminal where the geth client was initialized for the node.

Replace the IP address at the end of the enode with 127.0.0.1 (this is the local host ip address)

**Example:** admin.addPeer("enode://c2fda93223174a6b4acab60d62fe480df69f0dbdf85f674d44bb27b396b4aa8756a1e0c67670ba116c120ad44f8d85c66cd83fa745113880c41bc991d4a7210a@127.0.0.1:30300")


Check for the peer count to ensure that the node(s) have joined the network.



**Smart Contracts:**

COMING SOON!!