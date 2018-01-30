# bbnm(ボブネミミッミ)

THE NEW CORNER. :shit:

## Quickstart

* Prepare `geth` and `solc`.
* Run a geth dev network.

```
$ mkdir datadir
$ geth --dev --datadir datadir/
```

* Attach the network.

```
$ geth attach datadir/geth.ipc
```

* Build BBNM and get bin and abi.

```
$ solc --bin --abi bbnm.sol
```

* Deploy them to the network from attached geth session.

```
> bin = "<bin code>"
> abi = <abi json>
> contract = eth.contract(abi)
> BBNM = contract.new({ from: eth.accounts[0], data: bin, gas: 1000000 })
```

* Hurt your masters.

```
> BBNM.mambo.call()
"Your casual \"mambo\" hurt a samba master."
> BBNM.ole.call()
"Your casual \"ole\" hurt a flamenco master."
```

## Reference

- [THE AWESOME ANIME.](http://hoshiiro.jp/)
