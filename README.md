# HACKERS: The Spot Claim Story

This is a proof of concept daemon.  It purpose is to poll the instance so it knows when a termination notice has been issued.  It uses the 2 minute termination window to slowly explain the plot behind the movie HACKERS but in reference to our spot claim story.

## Build

```bash
git clone https://github.com/webbrandon/hackers-the-spot-claim-story.git
cd hackers-the-spot-claim-story
cargo build --release
```

## Install

Use prebuilt binary.

```bash
curl https://webbrandon.github.io/hackers-the-spot-claim-story/install.sh -sS | bash -s
```
