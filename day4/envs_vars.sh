#!/bin/env bash
# Day 4 - Linux Essentials: Environment Variables and Shell Configs
set -e

echo "Setting environment variables and Shell configurations."

read -p "Enter your name: " NAME

# sets environment variables temporary
export MY_NAME=${NAME: -Chinenye}

read -p "Enter your DevOps level: " DEVOPS_LEVEL
# Persist variables
echo "export DEVOPS_LEVEL=$DEVOPS_LEVEL" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/bin" >> ~/.bashrc

# Reloads shell to apply changes
source ~/.bashrc


cat <<EOF > greet.sh
#!/bin/bash
echo "Hello, \$MY_NAME! Welcome to Day 4 of my DevOps learning series; Linux Essentials"
echo "You're currently learning at the \$DEVOPS_LEVEL level!"
EOF

chmod +x greet.sh
./greet.sh

echo "Environment variables  setup complete!"




