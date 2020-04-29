#!/bin/bash
VERSION=0.1.1

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  echo "Downloading debian client."
  curl -LO https://github.com/webbrandon/hackers-the-spot-claim-story/releases/download/${VERSION}/debian
  echo "Installing hackers-the-spot-claim-story ${VERSION}"
  chmod +x debian
  mv debian /usr/local/bin/hackers-the-spot-claim-story
elif [[ "$OSTYPE" == "cygwin" ]]; then
  echo "Downloading debian client."
  curl -LO https://github.com/webbrandon/hackers-the-spot-claim-story/releases/download/${VERSION}/debian
  echo "Installing hackers-the-spot-claim-story ${VERSION}"
  chmod +x debian
  mv debian /usr/local/bin/hackers-the-spot-claim-story
elif [[ "$OSTYPE" == "debian"* ]]; then
  echo "Downloading debian client."
  curl -LO https://github.com/webbrandon/hackers-the-spot-claim-story/releases/download/${VERSION}/debian
  echo "Installing hackers-the-spot-claim-story ${VERSION}"
  chmod +x debian
  mv debian /usr/local/bin/hackers-the-spot-claim-story
elif [[ "$OSTYPE" == "msys" ]]; then
  echo "Downloading debian client."
  curl -LO https://github.com/webbrandon/hackers-the-spot-claim-story/releases/download/${VERSION}/debian
  echo "Installing hackers-the-spot-claim-story ${VERSION}"
  chmod +x debian
  mv debian /usr/local/bin/hackers-the-spot-claim-story
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  echo "Downloading debian client."
  curl -LO https://github.com/webbrandon/hackers-the-spot-claim-story/releases/download/${VERSION}/debian
  echo "Installing hackers-the-spot-claim-story ${VERSION}"
  chmod +x debian
  mv debian /usr/local/bin/hackers-the-spot-claim-story
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Downloading darwin client."
  curl -LO https://github.com/webbrandon/hackers-the-spot-claim-story/releases/download/${VERSION}/darwin
  echo "Installing hackers-the-spot-claim-story ${VERSION}"
  chmod +x darwin
  mv darwin /usr/local/bin/hackers-the-spot-claim-story
else
  printf "System not supported. Attempting to build from source. You must have rust installed."
  curl -LO https://github.com/webbrandon/hackers-the-spot-claim-story/archive/${VERSION}.tar.gz
  tar -xvzf ${VERSION}.tar.gz
  cd ${VERSION}
  cargo build --release
  chmod +x target/release/hackers-the-spot-claim-story
  mv target/release/hackers-the-spot-claim-story /usr/local/bin/hackers-the-spot-claim-story
  cd ..
  rm -rf hackers-the-spot-claim-story-${VERSION}
fi

exit 0
