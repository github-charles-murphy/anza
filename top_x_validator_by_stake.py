import subprocess
import json

from flux import create_flux_filter_script_verbose

X = 100

# Step 1: Get list of all validators (json format)
cmd = ["solana", "validators", "--url", "testnet", "--output", "json"]
process = subprocess.run(cmd, capture_output=True, text=True)
result = json.loads(process.stdout)
validators = result["validators"]

# Step 2: Sort by stake (highest first) and get top X validators
top_X_staked_validators = sorted(validators, key=lambda v: v["activatedStake"], reverse=True)[:X]

# Step 3: Generate flux script for query predicate
create_flux_filter_script_verbose(
    "identityPubkey", 
    map(lambda v: v["identityPubkey"], top_X_staked_validators)
)
