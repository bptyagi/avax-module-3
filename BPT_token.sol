// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Burnable.sol";

contract MyToken is ERC20("Bipin", "BPR"), ERC20Burnable {
    
    address owner;

    constructor(address initOwner) 
    {
        _mint(msg.sender,1 * 10 ** decimals());
        owner = initOwner;
    }

    function mint(address addr, uint256 amt ) public  {
        require(msg.sender==owner,"only owner can execute mint function");
        _mint(addr,amt);
    }

    function burn(address addr,uint256 amt ) public {
        require(msg.sender==owner,"only owner can execute mint function");
        _burn(addr,amt);
    }
}
