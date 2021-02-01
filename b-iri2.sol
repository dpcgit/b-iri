// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;


contract b_iri {
    
    // Struct for ride
    
    struct Ride {
        address rider;
        string pick_up; //cloaked coordinates
        string drop_off; //cloaked coordinates
        uint256 pick_up_time; //seconds, timestap
        uint256 expiry_time; //seconds
        uint max_num_req;
    }
    
    // Array of rides;
    
    Ride[] public rides;
    
    function make_ride_request(string memory _pick_up, string memory _drop_off, uint256 _pick_up_time, uint _max_num_req, uint256 _expiry_time) public {
        Ride memory ride;
        ride.rider = msg.sender;
        ride.pick_up = _pick_up;
        ride.drop_off = _drop_off;
        ride.pick_up_time = _pick_up_time;
        ride.max_num_req = _max_num_req;
        ride.expiry_time = _expiry_time;
        
        rides.push(ride);
    }
    
    
    //mapping (address => uint) public pick_up_rep;
    //mapping (address => uint) public completed_trip_rep;

}

contract TimeLockedDeposti {
    uint public balance // Balance to withhold driver and rider deposits
    address payable rider // Rider address
    address payable driver // driver address     
    uint public rider_reposit // RiderDeposit     
    uint public driver_deposit // DriverDeposit     
    //address [] Set // set of obfuscated locations     
    //address [] A_i // Signatures of elements in the set

    //constructor(address _driver, address _Set, address _A_i, uint _rider_deposit) {
      constructor(uint _rider_deposit) payable {
            //driver = _driver;
            rider = msg.sender;
            balance = _rider_deposit;
      //      Set = _Set;
        //    A_i = _A_i;
        }

}