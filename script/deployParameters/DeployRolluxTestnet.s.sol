// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/base/RouterImmutables.sol';

contract DeployRolluxTestnet is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0x000000000022D473030F116dDEE9F6B43aC78BA3,
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
            v1Factory: 0xD7b7B9585C3A4B2a2f7B11D548A3d7B8D1884B6d,
            v3Factory: 0xeAa20BEA58979386A7d37BAeb4C1522892c74640,
            pairInitCodeHash: 0x85c9b07c539b322c33da730d88df8396983c35a411da73d3d6c2278474890833,
            poolInitCodeHash: 0x4a995152ad4a45ce61f15e514146bc642453130f5c3ef14b85098e9c6266c43d
        });

        unsupported = address(0);
    }
}
