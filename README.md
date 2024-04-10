Ready to get started? Copy this repo, then

1. if you don't need to fetch platform-dependent tools, then remove anything toolchain-related.
1. (optional) install the [Renovate app](https://github.com/apps/renovate) to get auto-PRs to keep the dependencies up-to-date.
1. delete this section of the README (everything up to the SNIP).

---- SNIP ----

# Bazel rules for pkg

## Installation

From the release you wish to use:
<https://github.com/alexeagle/rules_pkg/releases>
copy the WORKSPACE snippet into your `WORKSPACE` file.

To use a commit rather than a release, you can point at any SHA of the repo.

For example to use commit `abc123`:

1. Replace `url = "https://github.com/alexeagle/rules_pkg/releases/download/v0.1.0/rules_pkg-v0.1.0.tar.gz"` with a GitHub-provided source archive like `url = "https://github.com/alexeagle/rules_pkg/archive/abc123.tar.gz"`
1. Replace `strip_prefix = "rules_pkg-0.1.0"` with `strip_prefix = "rules_pkg-abc123"`
1. Update the `sha256`. The easiest way to do this is to comment out the line, then Bazel will
   print a message with the correct value. Note that GitHub source archives don't have a strong
   guarantee on the sha256 stability, see
   <https://github.blog/2023-02-21-update-on-the-future-stability-of-source-code-archives-and-hashes/>
