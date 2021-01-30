// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;


contract b_iri {
    mapping (address => uint) public pick_up_rep;
    mapping (address => uint) public completed_trip_rep;
}

/////////////
contract BiddingSelectionContract {
        function make_ride_request(string memory c_0_r, string memory c_d_r, string memory t_0_r) public view returns (string memory) {
            return "made ride request";
        }
        function make_ride_offer(string memory c_d_i, string memory b_d_i) public view returns (string memory) {
            return "made ride offer";
        }
}

////////////////
contract TimeLockedDeposit{
        string public hello = "Hello TimeLockedDeposit!";
        
        uint public Balance // Balance to withhold driver and rider deposits
        address payable rider // Rider address
        address payable driver // driver address     
        uint public RiderDeposit // RiderDeposit     
        uint public DriverDeposit // DriverDeposit     
        address [] Set // set of obfuscated locations     
        address [] A_i // Signatures of elements in the set
        
        //Constructor
        constructor(address _driver, address _Set, address _A_i, uint _RiderDeposit) {
            driver = _driver;
            Balance = _RiderDeposit;
            Set = _Set;
            A_i = _A_i;
        }
}

//////////////////
contract PaymentContract{
        string public hello = "Hello PaymentContract!";
}