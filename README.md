# GitHub Release Automation

Automating the process to releases in the GitHub context:
- providing release note templating
- automatic version extraction examples
- using `make` to control the process

## Quick Start

```
make release release_version=1.0.0
```

## Workflow
### Create release notes

```
make release-notes release_version=v1.0.0
```

Using a [template](_docs/changelogs/CHANGELOG.template.md) using [consul-template](https://github.com/hashicorp/consul-template).


### Update the relase notes

You can provide more context with editing [CHANGELOG.v1.0.0.md](_docs/changelogs/CHANGELOG.v1.0.0.md) with the changes you want to mention.

### Login to Github

```
make gh-login token_github=<your_personal_github_token>
```

### Make the current stage of the repository a release

```
make release release_version=1.0.0
```

This will create a release branch (for GoCD) and create a draft for a github release.

### Publish the release draft

On [GitHub](https://github.com/MatthiasScholz/demo_github_release/releases) you will now find a draft of your release which you can then publish.

NOTE: If you would like to publish your release directly just remove `--draft` and `--prerelease` from the make target [release-github](Makefile).


## Setup

### Install prerequisites

```
make setup
```

### Uninstall prerequisites

```
make uninstall
```

## References

- [Create Github Releases using the CLI](https://cli.github.com/manual/gh_release_create)
- [Makefile Magic](https://makefiletutorial.com/#getting-started)
- [Bash Magic](https://linuxhint.com/remove_characters_string_bash/)
