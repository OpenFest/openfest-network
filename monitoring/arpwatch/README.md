# ArpWatch
Monitor stations on network

# Prerequisites
vlans
arpwatch

# Notes
* Ignore main interface on which vlans are set

# Configuration
* Add alias to drop the emails that are being sent
* add filter to syslog (rsyslog) to direct messages to special file
* fix arpwatch.conf to start daemon per interface (look at notes above)
* go
