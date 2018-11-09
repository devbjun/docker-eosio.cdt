# **Docker for eosio.cdt** #
Image with eosio.cdt for building eosio contracts.

How to build: `docker build -t eosio.cdt .`  
Make directory before running: `cd ./contracts; mkdir ./build`  
Example of running: `docker run -v REAL_CONTRACTS_ABSOLUTE_PATH/contracts:/contracts -w /contracts -i devbjune/eosio.cdt:latest eosio-cpp -abigen ./hello.cpp -o ./build/hello.wasm`