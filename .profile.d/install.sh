#!/bin/bash
curl -s -L -o "$HOME/linux_amd64.tar.gz" "https://github.com/yudai/gotty/releases/download/v0.0.11/linux_amd64.tar.gz"
tar zxf "$HOME/linux_amd64.tar.gz"
chmod 755 "$HOME/gotty"
