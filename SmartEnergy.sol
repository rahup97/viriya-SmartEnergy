pragma solidity ^0.4.17;

contract SmartEnergy {
    uint grid_balance = 0;
    mapping (address => uint) balance;
    mapping (address => uint) coins;
    event energyGenerated(address generated_by);
    event energyMoved(address generated_by, uint energy_value);

    function pushEnergy(address pusher, uint energy_pushed) returns (bool check){
      energyGenerated(pusher); // not sure about this event - should be called by pi based on node values only maybe
      balance[pusher] += energy_pushed;
      grid_balance += energy_pushed;
      coins[pusher] = energy_pushed / 4;
      energyMoved(pusher, balance[pusher]);
      return true;
    }

    function requestEnergy(address requestor, uint energy_requested) returns (bool check){
        uint final_balance;
        if(energy_requested > grid_balance)
          throw;
        final_balance = balance[requestor] - energy_requested;
        if (final_balance >= 0){
          grid_balance -= energy_requested;
          coins[requestor] -= energy_requested / 4;
          balance[requestor] -= energy_requested;
        }

        else if(final_balance < 0){
            final_balance = 0 - final_balance;
            if(final_balance < energy_requested)
              grid_balance -= energy_requested;
              coins[requestor] -= final_balance / 2;
              coins[requestor] -= balance[requestor] / 4;
              balance[requestor] = 0;

        }
        energyMoved(requestor, balance[requestor]);
        return true;
    }

    function getBalance(address user) constant returns (uint val) {
      return balance[user];
    }

    function getCoins(address user) constant returns (uint val){
      return coins[user];
    }
}
