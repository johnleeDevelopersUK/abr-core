#!/bin/bash
# Deploy ABR using Docker

echo "🇦🇫 Deploying ABR with Docker"
echo "============================="

cd ../../docker

# Create config from template
cp ../config/mainnet/abr.conf.template abr.conf

echo "Please edit abr.conf with your settings"
echo "Then run: docker-compose up -d"
