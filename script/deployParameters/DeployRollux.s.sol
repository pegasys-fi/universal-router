// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/base/RouterImmutables.sol';

contract DeployRollux is DeployUniversalRouter {
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
            v1Factory: 0x302518cc2C03A8f4fD1C2c8AC1Ff4C195A1236Ca,
            v3Factory: 0xeAa20BEA58979386A7d37BAeb4C1522892c74640,
            pairInitCodeHash: 0xfe8c050f5785aee7df9239afdcf2fea2b5e2705fd28d6db4827364f1e02ec751,
            poolInitCodeHash: 0x4a995152ad4a45ce61f15e514146bc642453130f5c3ef14b85098e9c6266c43d
        });

        unsupported = address(0);
    }
}
