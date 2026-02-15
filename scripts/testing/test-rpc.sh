#!/bin/bash
# Test ABR RPC commands

echo "🇦🇫 Testing ABR RPC"
echo "=================="

cd ../../abr-core

# Check if daemon is running
if ! pgrep -x "abrd" > /dev/null; then
    echo "Starting ABR daemon..."
    ./src/abrd -daemon
    sleep 3
fi

# Test commands
echo -e "\n📊 Testing getinfo:"
./src/abr-cli getinfo

echo -e "\n⛓️  Testing getblockchain:"
./src/abr-cli getblockchain

echo -e "\n🌟 Testing getgenesis:"
./src/abr-cli getgenesis

# Stop daemon
echo -e "\n🛑 Stopping daemon..."
./src/abr-cli stop

echo -e "\n✅ Tests complete!"
