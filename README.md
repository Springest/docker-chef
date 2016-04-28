This project is **no longer maintained**.

If you're interested in taking it over, we'd love to hear from you.
Email [developers@springest.com](mailto:developers@springest.com), or check out
one of its maintained forks.

*****

# Docker Cookbook

![](http://img.springe.st/2014_03_30_15_31_50_ndx9x.jpg)

A simple cookbook to install [Docker](http://docker.io "Docker")
on Ubuntu / Debian.

# Requirements

Tested on Ubuntu 13.10, but should work on any modern
Ubuntu or Debian release.

# Usage

Just add `"recipe[docker]"` to your node/role's runlist.

# Attributes

- None yet

# Recipes

```ruby
recipe "docker",           "Includes recipes for a default install/configuration."
recipe "docker::install",  "Installs Docker through an apt package."
```

# Contributors

- Wouter de Vos – Springest (developers@springest.com)

