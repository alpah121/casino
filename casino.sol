pragma solidity ^0.4.4;

contract  Casino {
    uint bank =0;
    address owner;
    
    createPossibleBet("1st12", 1, 12, 3);
    createPossibleBet("2nd12", 13, 24, 3);
    createPossibleBet("3rd12", 25, 36, 3);
    createPossibleBet("19-36", 19, 36, 2);
    createPossibleBet("1-18", 1, 18, 2);

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
    
    function createPossibleBet(string _text, uint _start, uint _end, uint _multiplier) internal {
        var currentBet = possibleBets[_text];

        currentBet.start = _start;
        currentBet.end = _end;
        currentBet.multiplier = _multiplier;
    }
    
    function didWin(string section,uint try,uint winner) internal
    {
    //check for two length numbers
    if (section == "numbers" && try.length == 2 && try == winner)
        {
        return true;
        }
    //otherwise check for odd or even and black or red
    else if ( (section == "red" || section == "odd") && winner % 3 == 0)
        {
        return true;
        }
    else if ( (section == "black" || section == "even") && winner % 2 == 0)
        {
        return true;
        }
    //if all else fails check the possible bet array
    else if (possibleBets[section].multiplier != 0 && winner >= possibleBets[section].start && winner <= possibleBets[section].end)
        {
        return true;
        }
    else
        {
        return false;
        }
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
    
    
