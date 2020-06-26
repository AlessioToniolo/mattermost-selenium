#!/bin/sh
# Copyright 2013 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
set -e
if [ "$(uname -s)" = "Darwin" ]; then
  if [ "$(whoami)" = "root" ]; then
    TARGET_DIR="/Library/Application Support/Mozilla/NativeMessagingHosts"
  else
    TARGET_DIR="$HOME/Library/Application Support/Mozilla/NativeMessagingHosts"
  fi
else
  if [ "$(whoami)" = "root" ]; then
    TARGET_DIR="/usr/lib/mozilla/native-messaging-hosts"
  else
    TARGET_DIR="$HOME/.mozilla/native-messaging-hosts"
  fi
fi
HOST_NAME=com.a9t9.kantu.file_access
rm "$TARGET_DIR/$HOST_NAME.json"
echo "Native messaging host $HOST_NAME has been uninstalled."