// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/base/RouterImmutables.sol';

contract DeployRollux is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0xA4f6261a5F45928b79d2d5ED22373e4D4d637C47,
            weth9: 0x4200000000000000000000000000000000000006,
            seaportV1_5: UNSUPPORTED_PROTOCOL,
            seaportV1_4: UNSUPPORTED_PROTOCOL,
            openseaConduit: UNSUPPORTED_PROTOCOL,
            nftxZap: UNSUPPORTED_PROTOCOL,
            x2y2: UNSUPPORTED_PROTOCOL,
            foundation: UNSUPPORTED_PROTOCOL,
            sudoswap: UNSUPPORTED_PROTOCOL,
            elementMarket: UNSUPPORTED_PROTOCOL,
            nft20Zap: UNSUPPORTED_PROTOCOL,
            cryptopunks: UNSUPPORTED_PROTOCOL,
            looksRareV2: UNSUPPORTED_PROTOCOL,
            routerRewardsDistributor: UNSUPPORTED_PROTOCOL,
            looksRareRewardsDistributor: UNSUPPORTED_PROTOCOL,
            looksRareToken: UNSUPPORTED_PROTOCOL,
            v1Factory: UNSUPPORTED_PROTOCOL,
            v2Factory: 0x84dfc5dCE8F4Fa28B6A67C79373e8650854b7B16,
            pairInitCodeHash: BYTES32_ZERO,
            poolInitCodeHash: 0x8e96f21651a78ab0d329ff44bdd6d00fac90998fc170340ad5301cb752dab5d2
        });

        unsupported = 0xb5c5c8904b38E9A2b721DCF0935A631E01b1E429;
    }
}
