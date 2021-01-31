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
        
        function driver_deposit(uint256 memory _driver_deposit) public view {
            require(block.timestamp < expiration);
            require(msg.sender == driver);
            require(msg.value == DriverDeposit);
            require(now < t_deadline)
            Balance = Balance + _driver_deposit;
        }

        function Proof_Of_Arrival(string memory _pi, string memory _omega) public {
            require(msg.sender == driver);
            require(now == t_0_r);
            if(ZKMS.Verifier(_pi)){
                b_iri.pick_up_rep[msg.sender] = b_iri.pick_up_rep[msg.sender] + 1;
                transfer(balance,driver);
            }
        }
        
        function Fine_driver() public {
            require(block.timestamp > expiration);
            require(msg.sender == rider);
            transfer(balance,rider);
        }
    
}

//////////////////
contract PaymentContract{
    address payable rider; // Rider address
    address payable driver; // driver address 

    uint public TripDist;
    
    constructor(address _driver,uint _TripDist, string _t_d_r) {
        driver = _driver;
        TripDist = _TripDist;
    }
    
    function Proof_of_distance(uint memory _elapsed_distance) public {
        require(msg.sender == rider)
        while(TripDist <= _elapsed_distance){
            transfer(balance * _elapsed_distance, pk_d)
            TripDist = TripDist - _elapsed_distance;
            if(TripDist == 0){
                b-iri.completed_trip_rep[driver] = b-iri.completed_trip_rep[driver] + 1;    
            }
        }
    }
}
}