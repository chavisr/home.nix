#!/bin/sh

set -euo | pipefial

home-manager switch --flake .#chavi -b backup
