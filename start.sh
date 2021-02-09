#!/usr/bin/env bash
#/data/heco/geth-linux-amd64 \
#--config /data/heco/config.toml  \
#--logpath /data/heco/logs \
#--syncmode full \
#--gcmode archive \
#--verbosity 3  >> /data/heco/logs/systemd_chain_console.out 2>&1



#docker run -d \
#    -- name dockertest \
#    - v `pwd`:/root/hecotestnet \


docker run -d --name hecotestnet1.1 \
           -v `pwd`:/root/hecotestnet \
           -p 8545:8545 \
           -p 30303:30303 \
           -p 8546:8546 \
           hecofans/geth:1.1 \
           geth-linux-amd64 --config /root/hecotestnet/config.toml  \
                --logpath /root/hecotestnet/data/logs \
                --testnet \
                --syncmode full \
                --gcmode archive \
                --verbosity 3
