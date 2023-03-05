# Simple Stream

Simple Stream is a token streaming contract that allows users to deposit and withdraw tokens from the contract. It also allows users to stream tokens to other users.

This contract is modified from Llamapay for use in Scroll's Alpha Testnet (https://github.com/LlamaPay/llamapay)

## Instructions to run

This is built with Foundry. Refer to https://book.getfoundry.sh/ for instructions. To deploy:

```
forge create --rpc-url https://alpha-rpc.scroll.io/l2 --constructor-args <token_address> --private-key <privateKey> src/Stream.sol:Stream
```

## Deployment

Payment Stream Contract: 
0x3aCB7893827C33927d00a423fF547D2457D98Aa8
https://blockscout.scroll.io/address/0x3aCB7893827C33927d00a423fF547D2457D98Aa8

FakeUSD: 
0x9CA41fE61f3Bdf3E089922806f6F2583e6e199E7 
https://blockscout.scroll.io/address/0x9CA41fE61f3Bdf3E089922806f6F2583e6e199E7