// SPDX-License-Identifier: UNLICENSED
pragma solidity^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";
contract sharerRewards is Ownable{

mapping (uint => uint) public amountPerBlock;
uint256 blockTaxIncome;
uint256 blockQuantity;
uint256 refBlock;
uint256 period;
uint256 eAmount;
uint256 periodAmount;
uint256 userShares;
uint256 totalShares;
uint256 mintAmount;

constructor (){

}


function getBlockAmount(uint256 x, uint256 y) virtual internal {
    x = block.number;
    y = blockTaxIncome;
amountPerBlock[x] = y ;
}


function _period () virtual internal {

    period = (block.number - refBlock) % blockQuantity;

}


function eligibleAmount() virtual internal {

eAmount = (userShares/totalShares)*(periodAmount);

}

}
