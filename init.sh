curl --fail --remote-name --location --continue-at - https://github.com/esniper/first_setup/archive/refs/heads/master.zip
tar -xvf master.zip
mv first_setup-master first_setup
cd first_setup
./setup.sh
