
The ports to Predix Database as a Service, Predix Cache, and Predix Blobstore
are blocked by a firewall except for traffic originating from the Predix Cloud.
That means you cannot use helpful cmdline tools like `redis-cli`, `psql`, and
`awscli` from your own laptop.

This repository has a few utilties for setting up and running GoTTY in the
Predix Cloud and making a connection with the cmdline tools mentioned.

You can find out more about GoTTY here:
https://github.com/yudai/gotty

You can find more instructions about what each file does from this blog post:
https://medium.com/@j12y/go-inside-the-container-34760e0bec1e
