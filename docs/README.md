<div align="center">

# Dotfiles&nbsp;&nbsp;[![Built with Nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)</div>

<small>
<table align="right">
<td>

**Readme**</td>
<td>

[Installation](/docs/README.md)</td>
<td>

[Setup](#)</td>

</table>
</small>
<img src="https://img.shields.io/badge/Nix-222.svg?logo=nixos" alt="Nix">&nbsp;<img src="https://img.shields.io/badge/Go-222.svg?logo=go" alt="Go">&nbsp;<img src="https://img.shields.io/badge/Docker-222.svg?logo=docker" alt="Docker">&nbsp;


### Install Nix
I recommend the [Determinate Nix installer](https://determinate.systems/posts/determinate-nix-installer), 
which also enables Flake support for you:

```shell
curl --proto "=https" --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

<!-- Todo: Flakelight features, devShell integration, `.envrc` file. -->

[^1]: https://nix.dev/concepts/flakes.html
[^2]: https://github.com/nix-community/nix-direnv#creating-a-new-flake-native-project
[^3]: https://nix.dev/manual/nix/2.18/command-ref/new-cli/nix3-flake-new