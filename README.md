# Alpine Linux 3.6 Vagrant Mirror

This Vagrant box will create an Alpine Linux 3.6 mirror for you to use on your
local machine or network.

Just point your other Vagrant boxes (or physical machines) to your host machine's
IP address on port 8090 and you should be good to go!

All data is visible on the host (your) machine so if you want to free your storage
back up, simply delete the alpine directory and you'll be all set.

Note: This machine will update hourly and the initial load will take awhile
and consume about 30 GB of storage on your hard drive.
