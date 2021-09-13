pragma solidity 0.6.12;

import "./BEP20.sol";

// MtnToken with Governance.
contract SatoshiSWPToken is BEP20('Satoshi Sweepstake', 'SATOSHISWP') {
    /// @notice Creates `_amount` token to `_to`. Must only be called by the owner (MasterChef).
    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }
}