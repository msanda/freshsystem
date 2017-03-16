Set-ExecutionPolicy Unrestricted

# Chocolatey
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

# sync what has already been installed with choclatey
choco list -lo
# install applications

# Install the latest stable ChefDK
invoke-restmethod 'https://omnitruck.chef.io/install.ps1' | iex
install-project chefdk -verbose

choco install conemu --force --force-dependencies -y
choco install winmerge --force --force-dependencies -y
choco install vagrant --force --force-dependencies -y
choco install autohotkey --force --force-dependencies -y

# Get a basic setup recipe
invoke-restmethod 'https://gist.githubusercontent.com/smurawski/da67107b5efd00876af7bb0c8cfe8453/raw' | out-file -encoding ascii -filepath c:/basic.rb

# Use Chef Apply to setup 
chef-apply c:/basic.rb