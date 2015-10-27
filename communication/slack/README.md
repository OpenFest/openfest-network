# Slack sync to IRC
Bot that will do sync between slack and certain slack channnels

# Prerequisites
nodejs (tested with 0.12)

npm install -g slack-irc

# Files
openfest-slack-to-irc-sync.json - config with sensitive information removed
We are using ssl to connect

slack-irc@.service systemd templated unit so you can run multiple instances
Running multiple slack-irc instances has not been tested
