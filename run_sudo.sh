#! /bin/bash

# Display KARMA ASCII art
echo -e "\033[1;36m"
cat << "EOF"
   o         o/          o           o__ __o         o          o           o                   o__ __o          o__ __o    
  <|>       /v          <|>         <|     v\       <|\        /|>         <|>                 /v     v\        /v     v\   
  / >      />           / \         / \     <\      / \\o    o// \         / \                />       <\      />       <\  
  \o__ __o/           o/   \o       \o/     o/      \o/ v\  /v \o/       o/   \o            o/           \o   _\o____       
   |__ __|           <|__ __|>       |__  _<|        |   <\/>   |       <|__ __|>          <|             |>       \_\__o__ 
   |      \          /       \       |       \      / \        / \      /       \           \\           //              \  
  <o>      \o      o/         \o    <o>       \o    \o/        \o/    o/         \o           \         /      \         /  
   |        v\    /v           v\    |         v\    |          |    /v           v\           o       o        o       o   
  / \        <\  />             <\  / \         <\  / \        / \  />             <\          <\__ __/>        <\__ __/>   
                                                                                                                           
                                                                                                                           
                                                                                                                           
EOF
echo -e "\033[0m"

# Reminder to remember the password
echo -e "\033[1;33mRemember to keep the password secure, as it will be shown once.\033[0m"

# Display username and password
echo -e "\033[1;33mUSERNAME: IEM\033[0m"
echo -e "\033[1;33mPassword: 789\033[0m"

# Prompt the user if they have remembered the username and password
read -p "Have you remembered the username and password? (y/n): " choice
if [[ $choice == "no" || $choice == "n" ]]; then
    echo -e "\033[1;31mPlease remember the username and password before proceeding further.\033[0m"
    exit 0
elif [[ $choice != "yes" && $choice != "y" && $choice != "" ]]; then
    echo -e "\033[1;31mInvalid choice. Please enter 'yes/y' or 'no/n'.\033[0m"
    exit 1
fi

# Extract the tar.gz file
tar -xzf karma9.tar.gz 
cd karma9

# Install dependencies and setup.py
echo -e "\033[1;32mInstalling dependencies and setting up Karma...\033[0m"
pip install setuptools
sudo python3 setup.py install

# Prompt the user to run the karma9 command
echo -e "\033[1;32mInstallation completed successfully.\033[0m"
echo -e "\033[1;32mYou can now run the 'karma9' command to start the application.\033[0m"

# Clean up (optional)
# rm -rf karma9  # Uncomment this line to remove the extracted folder after installation

exit 0

