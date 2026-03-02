// scripts/deploy.js
const hre = require("hardhat");

async function main() {
  // Compila os contratos antes do deploy
  await hre.run("compile");

  // Obtém o contrato
  const Contract = await hre.ethers.getContractFactory("MyContract");

  // Faz o deploy
  const contract = await Contract.deploy();

  await contract.deployed();

  console.log("Contrato deployado em:", contract.address);
}

// Executa o script com tratamento de erros
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
`
cancel-timeout-minutes: 
    concurrency: name: Cache^
  uses: actions/cache@v5.0.3
  with:
    # A list of files, directories, and wildcard patterns to cache and restore
    path: 
    # An explicit key for restoring and saving the cache
    key: 
    # An ordered multiline string listing the prefix-matched keys, that are used for restoring stale cache if no cache hit occurred for key. Note `cache-hit` returns false in this case.
    restore-keys: # optional
    # The chunk size used to split up large files during upload, in bytes
    upload-chunk-size: # optional
    # An optional boolean when enabled, allows windows runners to save or restore caches that can be restored or saved respectively on other platforms
    enableCrossOsArchive: # optional, default is false
    # Fail the workflow if cache entry is not found
    fail-on-cache-miss: # optional, default is false
    # Check if a cache entry exists for the given input(s) (key, restore-keys) without downloading the cache
    lookup-only: # optional, default is false
    # Run the post step to save the cache even if another step before fails
    save-always: # optional, default is false
