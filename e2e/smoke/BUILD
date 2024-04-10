"""Provides a simple way to test your rules as an external workspace.
Add a basic smoke-test target below.
"""

load("@alexeagle_rules_pkg//pkg:tar.bzl", "pkg_tar")
load("@bazel_skylib//rules:build_test.bzl", "build_test")

pkg_tar(name = "empty")

build_test(
    name = "smoke_test",
    targets = [
        # targets you add above
        ":empty",
    ],
)
