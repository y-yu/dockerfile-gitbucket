GitBucket Dockerfile
====================

Dockerfile for GitBucket with some useful plugins

# Notes
* `GITBUCKET_HOME` is set to `/var/gitbucket`, and mount to the same path. Create the directory in the host.
* Expose 8080 for the Web UI, and 29418 for SSH.

# Links
* GitBucket: https://github.com/gitbucket/gitbucket
* Gist plugin: https://github.com/gitbucket/gitbucket-gist-plugin
* H2 Backup plugin: https://github.com/gitbucket-plugins/gitbucket-h2-backup-plugin

# License
This dockerfile is provided under the The MIT License. See `LICENSE`.
