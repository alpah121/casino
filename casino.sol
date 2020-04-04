pragma solidity ^0.4.4;

contract  Casino {
    uint bank =0;
    address owner;
    
    
    constructor() public
    {
    owner = msg.sender;
    }
    
    function addToBank() public payable{
        bank += msg.value;
    }
    function didWin() internal
    {
    
    }
   
    function multiplier() internal
    {
    
    }
    
    function bet()
    {
        
    }
    
    function clearBets()
    {
        
    }
    
    function spin()
    {
        
    }
    
    
