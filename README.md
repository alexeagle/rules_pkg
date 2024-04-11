# Alternative packaging rules for Bazel

Aspect's bazel-lib provides a bare-bones [`tar` rule](https://docs.aspect.build/rulesets/aspect_bazel_lib/docs/tar/)

This ruleset provides a thin shim to allow users of https://github.com/bazelbuild/rules_pkg to adopt `tar`
without having to change much of their BUILD files.

Perhaps this will be upstreamed to bazel-lib at some point.

## Installation

Copy the snippet from the release you wish to use:
<https://github.com/alexeagle/rules_pkg/releases>

## API Docs

[pkg_tar](./docs/tar.md)
