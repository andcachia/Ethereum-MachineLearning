pragma solidity >=0.4.22 <0.6.0;
contract MLFunction {
    
    address owner;
    string encoded_parameters;
    
    //Modifier to restrict access for certain functions
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    
    constructor() public {
        owner = msg.sender;
    }
    
    function setModelParameters(string memory _encoded_parameters) public onlyOwner {
        encoded_parameters = _encoded_parameters;
    }
    
    function getModelParameters() public view returns (string memory _encoded_parameters){
        _encoded_parameters = encoded_parameters;
    }
}