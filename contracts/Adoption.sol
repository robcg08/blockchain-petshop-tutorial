pragma solidity ^ 4.0.17;



contract Adoption {
    address[16] public adopters;

    //Adopting pets 

    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId; 
    }


    // Retrieving adopters

    function getAdopters() public view returns (address[16]){
        return adopters;
    }
}