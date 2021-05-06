// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "openzeppelin-contracts/token/ERC20/ERC20.sol";

contract METoken is ERC20 {
    event LogNewAlert(string description, address indexed _from, uint256 _n);
    constructor () public ERC20("METoken", "MET") {
        _mint(block.coinbase, 2000);
    }
    function _reward() public {
        _mint(block.coinbase, 20);
        emit LogNewAlert('_rewarded', block.coinbase, block.number);
    }
}