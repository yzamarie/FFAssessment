// Import ethers.js library
const { ethers } = require("ethers");

// Initialize provider (like MetaMask or Infura)
const provider = new ethers.providers.JsonRpcProvider("http://localhost:8545");

// Address of the deployed contract
const contractAddress = "0x123...";

// ABI (Application Binary Interface) of the contract
const abi = [
    "function getNumber() public view returns (uint256)",
    "function setNumber(uint256 _number) public"
];

// Connect to the contract
const contract = new ethers.Contract(contractAddress, abi, provider);

// Get the current number
async function getCurrentNumber() {
    const currentNumber = await contract.getNumber();
    console.log("Current number:", currentNumber.toString());
}

// Set a new number
async function setNewNumber(newNumber) {
    await contract.setNumber(newNumber);
    console.log("Number set to:", newNumber);
}

// Call functions
getCurrentNumber();
setNewNumber(42);
getCurrentNumber();
