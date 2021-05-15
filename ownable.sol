pragma solidity ^0.6.0;

contract Ownable {
    address private _owner;
    
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
        );
        
    // sets the original owner of the contract to the sender account
    constructor() internal {
        _owner = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
    }
    
    // returns the address of the owner
    function owner() public view returns(address) {
        return _owner;
    }
    
    // throws if called by any account other than the owner
    modifier onlyOwner() {
        require(isOwner());
        _;
    }
    
    // @return true if msg.sender is the owner of the contract
    function isOwner() public view returns(bool) {
        return msg.sender == _owner;
    }
    
    //allows the owner to relinguish control of the contract
    // renouncing to ownership will leave the contract without an owner
    // it will no more be possible to call the functions with onlyOwner modifier
    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }
    
    // allows the control of the contract to be transferred from current owner to the new owner
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }
    
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0));
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}
