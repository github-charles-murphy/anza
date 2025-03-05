● Coding question
○ Many Solana validators submit metrics to an InfluxDB database. We often want to
query that data looking only at the highly staked nodes. Write a script that gets a
list of the top 100 staked nodes on testnet and uses it to generate an InfluxDB
query predicate that will limit queries to only those nodes.
■ You may use the solana CLI. Installation instructions are available here:
https://docs.anza.xyz/cli/install

--------------------------------------------------------------------------------------------

Run: install_solana.sh
Run: python top_x_validator_by_stake.py

Output: identity_pubkey_filter.flux
Output: example usage of flux filter() predicate
