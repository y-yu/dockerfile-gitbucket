GitBucket Dockerfile
====================

Dockerfile for GitBucket

[![](https://badge.imagelayers.io/mayth/gitbucket:latest.svg)](https://imagelayers.io/?images=mayth/gitbucket:latest 'Get your own badge on imagelayers.io')

# Notes
* `GITBUCKET_HOME` is set to `/var/gitbucket`, and mount to the same path. Create the directory in the host.
* Expose 8080 for the Web UI, and 29418 for SSH.

# Links
* GitBucket: https://github.com/gitbucket/gitbucket

# License
This dockerfile is provided under the The MIT License. See `LICENSE`.
