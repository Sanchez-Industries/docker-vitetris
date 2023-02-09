#!/bin/bash
cd /tmp/ && git clone https://github.com/vicgeralds/vitetris.git
cd /tmp/vitetris && ./configure && make && sudo make install && sudo make install-hiscores
cd ~ && rm -rf /tmp/vitetris/

