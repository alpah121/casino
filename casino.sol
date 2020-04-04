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
    
    struct possibleBet {
    uint start;
    uint end;
    uint multiplier;
    }
    
    mapping (string => possibleBet) possibleBets;
    
    function setInstructor(address _address, uint _age, string _fName, string _lName) public {
        var instructor = instructors[_address];

        instructor.age = _age;
        instructor.fName = _fName;
        instructor.lName = _lName;
        
        instructorAccts.push(_address) -1;

    }
    
    function didWin(section, try, winner) internal
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
    
    
