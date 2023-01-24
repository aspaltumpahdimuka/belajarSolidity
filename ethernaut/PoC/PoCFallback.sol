// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


interface IFallback {
    function contribute() external;
    function getContribution() external view returns (uint);
    function withdraw() external;
}
contract PoCFallback {
    function Icontribute(address _target) public {
        IFallback(_target).contribute();
    }
 
}