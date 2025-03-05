- **Coding question**  
  - Many Solana validators submit metrics to an InfluxDB database. We often want to  
    query that data looking only at the highly staked nodes.  

    Write a script that:  
    - Gets a list of the top 100 staked nodes on testnet  
    - Uses that list to generate an InfluxDB query predicate that will limit queries  
      to only those nodes  

    **Notes:**  
    - You may use the Solana CLI. Installation instructions are available [here](https://docs.anza.xyz/cli/install).  

---

### Commands  
- **Run:** [`install_solana.sh`](install_solana.sh)  
- **Run:** [`python top_x_validator_by_stake.py`](top_x_validator_by_stake.py)  

### Output  
- **Generated Filter:** [`identity_pubkey_filter.flux`](identity_pubkey_filter.flux)  
- **Example Usage:** Example of using the Flux `filter()` predicate  
