# How to run Codes

## Smart Contracs

- truffle-config.js에서 infura project ID 바꾸기
    
    ropsten
    
    provider: () => new HDWalletProvider(mnemonic, `[https://ropsten.infura.io/v3/[Project_ID]`])
    
- in source directory make .secret file and save your wallet secret key

## script commands

truffle compile
truffle migrate --network ropsten
truffle console --network ropsten

## command line 
let instance = await ERC721.deployed()
instance.safeMint()
