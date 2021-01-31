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
