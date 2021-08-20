// SPDX-License-Identifier: GPL-3.0-only

// Code generated by protoc-gen-sol. DO NOT EDIT.
// source: contracts/libraries/proto/bridge.proto
pragma solidity >=0.5.0;
import "./Pb.sol";

library PbBridge {
    using Pb for Pb.Buffer; // so we can call Pb funcs on Buffer obj

    struct Relay {
        address sender; // tag: 1
        address receiver; // tag: 2
        address token; // tag: 3
        uint256 amount; // tag: 4
        uint64 srcChainId; // tag: 5
        uint64 dstChainId; // tag: 6
        uint64 nonce; // tag: 7
        bytes32 srcTransferId; // tag: 8
    } // end struct Relay

    function decRelay(bytes memory raw) internal pure returns (Relay memory m) {
        Pb.Buffer memory buf = Pb.fromBytes(raw);

        uint256 tag;
        Pb.WireType wire;
        while (buf.hasMore()) {
            (tag, wire) = buf.decKey();
            if (false) {}
            // solidity has no switch/case
            else if (tag == 1) {
                m.sender = Pb._address(buf.decBytes());
            } else if (tag == 2) {
                m.receiver = Pb._address(buf.decBytes());
            } else if (tag == 3) {
                m.token = Pb._address(buf.decBytes());
            } else if (tag == 4) {
                m.amount = Pb._uint256(buf.decBytes());
            } else if (tag == 5) {
                m.srcChainId = uint64(buf.decVarint());
            } else if (tag == 6) {
                m.dstChainId = uint64(buf.decVarint());
            } else if (tag == 7) {
                m.nonce = uint64(buf.decVarint());
            } else if (tag == 8) {
                m.srcTransferId = Pb._bytes32(buf.decBytes());
            } else {
                buf.skipValue(wire);
            } // skip value of unknown tag
        }
    } // end decoder Relay
}
