// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/base/RouterImmutables.sol';

contract DeployRolluxTestnet is DeployUniversalRouter {
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
            v1Factory: 0xD7b7B9585C3A4B2a2f7B11D548A3d7B8D1884B6d,
            v2Factory: 0x84dfc5dCE8F4Fa28B6A67C79373e8650854b7B16,
            pairInitCodeHash: 0x85c9b07c539b322c33da730d88df8396983c35a411da73d3d6c2278474890833,
            poolInitCodeHash: 0x8e96f21651a78ab0d329ff44bdd6d00fac90998fc170340ad5301cb752dab5d2
        });

        unsupported = 0xa258062461AB612df65d37844Bd76FD1439BdCa8;
    }
}
