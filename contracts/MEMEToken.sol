// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MEMEToken is ERC20, Ownable {
    constructor() ERC20("Meme Token", "MEMER") {
        _mint(msg.sender, 696969696969696 * 10 ** decimals());
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function renounceOwnership() public override onlyOwner {
        super.renounceOwnership();
    }
}
