-include .env

# deps
update:; forge update
build  :; forge build
size  :; forge build --sizes

# storage inspection
inspect :; forge inspect ${contract} storage-layout --pretty

FORK_URL := ${ETH_RPC_URL} 

# local tests without fork
test  :; forge test -vv --fork-url ${FORK_URL} --evm-version cancun
trace  :; forge test -vvv --fork-url ${FORK_URL} --evm-version cancun
gas  :; forge test --fork-url ${FORK_URL} --gas-report --evm-version cancun
test-contract  :; forge test -vv --match-contract $(contract) --fork-url ${FORK_URL} --evm-version cancun
test-contract-gas  :; forge test --gas-report --match-contract ${contract} --fork-url ${FORK_URL} --evm-version cancun
trace-contract  :; forge test -vvv --match-contract $(contract) --fork-url ${FORK_URL} --evm-version cancun
test-test  :; forge test -vv --match-test $(test) --fork-url ${FORK_URL} --evm-version cancun
trace-test  :; forge test -vvv --match-test $(test) --fork-url ${FORK_URL} --evm-version cancun
snapshot :; forge snapshot -vv --fork-url ${FORK_URL} --evm-version cancun
snapshot-diff :; forge snapshot --diff -vv --fork-url ${FORK_URL} --evm-version cancun


clean  :; forge clean
