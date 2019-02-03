# Machine Learning with Blockchain Technology

A smart contract was created that would allow the owner to uploaded an encoded json string that contains the parameters of a trained Logistic Regression model. The model should be trained off-chain to keep the data private, and simply upload the model parameters.

The contract also has functionality to retrieve the aforemetioned parameters, to allow a model to be built using those parameters. This will allow a client to create a model that generate predictions on unseen data, without ever needing access to the training data.

The contract was created using Remix. 

A Ganache client was initiated, to create a local blockchain network as well as a number of test accounts which come loaded with ether.

![Alt text](Images/Ganache.png?raw=true "Ganache")

To communicate with the Ganache blockchain network, MetaMask was used.

![Alt text](Images/MetaMask.png?raw=true "MetaMask")

This then allowed the Remix console to communicate with the Ganache blockchain network. From here, the contract could then be compiled and deployed to the network. The user that was selected when performing this operation would be the owner of the contract.

![Alt text](Images/Remix.png?raw=true "Remix")

The ABI and contract address details where taken from here, and inserted into the configuration section within the python project.

Once the python project was configured and set up, it could communicate with the smart contract to store and retrieve the encoded parameters of the model. More details in the iPython notebook.