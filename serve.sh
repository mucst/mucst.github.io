#!/bin/sh

# builds and serves the jekyll site at 0.0.0.0 (this address must be used to make it visible outside the VM)
bundle exec jekyll serve --watch --force_polling --host 0.0.0.0