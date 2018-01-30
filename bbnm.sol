pragma solidity ^0.4.19;

import "solidity-stringutils/strings.sol";

contract BBNM {
  using strings for *;

  mapping (string => string) masters;

  function BBNM() public {
    masters["mambo"] = "samba";
    masters["ole"] = "flamenco";
  }

  function mambo() public returns (string res) {
    return hurt("mambo");
  }

  function ole() public returns (string res) {
    return hurt("ole");
  }

  function hurt(string memory message) private returns (string res) {
    // 'Your casual "' + message + '" hurt a ' + masters[message] + ' master.'

    string memory tmp1 = 'Your casual "'.toSlice().concat(message.toSlice());
    string memory tmp2 = tmp1.toSlice().concat('" hurt a '.toSlice());
    string memory tmp3 = tmp2.toSlice().concat(masters[message].toSlice());

    return tmp3.toSlice().concat(' master.'.toSlice());
  }
}

