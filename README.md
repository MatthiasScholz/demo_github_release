# GitHub Release Automation

Automating the process to releases in the GitHub context.

## Quick Start

1. Install prerequisites.

```
make setup
```

1. Create release notes from a [template](_docs/changelogs/CHANGELOG.template.md) using [consul-template](https://github.com/hashicorp/consul-template).

```
make release-notes release_version=v1.0.0
```

1. Update the relase notes in [CHANGELOG.v1.0.0.md](_docs/changelogs/CHANGELOG.v1.0.0.md) with the changes you want to mention.

1. Login to Github (if not already done)

```
make gh-login token_github=<your_personal_github_token>
```

1. Make the current stage of the repository a relaese. This will create a release branch (for GoCD) and create a draft for a github release.

```
make relaese release_version=1.0.0
```

1. Check the draft release on [GitHub](https://github.com/MatthiasScholz/demo_github_release/releases) and publish it. 

NOTE: If you would like to publish your release directly just remove `--draft` and `--prerelease` from the make target [release-github](Makefile).

1. Uninstall prerequisites.

```
make uninstall
```

## References

- [Create Github Releases using the CLI](https://cli.github.com/manual/gh_release_create)
- [Makefile Magic](https://makefiletutorial.com/#getting-started)
- [Bash Magic](https://linuxhint.com/remove_characters_string_bash/)
