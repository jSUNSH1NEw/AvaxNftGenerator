// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/IAggregatorV3.sol";

// This is a mock implementation of the IAggregatorV3 interface.
// It is used to test the IAggregatorV3 interface.

abstract contract MockAggregatorV3 is IAggregatorV3 {
  uint8 immutable id;

  constructor(uint8 id_) {
    id = id_;
  }

  event ValidateCalled(
    uint8 id,
    uint256 previousRoundId,
    int256 previousAnswer,
    uint256 currentRoundId,
    int256 currentAnswer
  );

  //return true if the validation is successful
  //return false if the validation is not successful

  function validate(
    uint256 previousRoundId,
    int256 previousAnswer,
    uint256 currentRoundId,
    int256 currentAnswer
  ) 

//function for emit the validate called event

  external returns (bool) {
    emit ValidateCalled(
      id,
      previousRoundId,
      previousAnswer,
      currentRoundId,
      currentAnswer
    );
    return true;
  }

}