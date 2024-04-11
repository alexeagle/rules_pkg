"""Adapt from rules_pkg `pkg_tar` API to aspect_bazel_lib `tar` rule.
"""

load("@aspect_bazel_lib//lib:tar.bzl", "mtree_spec", "tar")
load("//pkg/private:utils.bzl", "mtree_mutate")

def pkg_tar(name, srcs = [], out = None, package_dir = None, strip_prefix = None, owner = None, ownername = None, mtime = None, **kwargs):
    """Adapter macro to call `tar` with an API mimicking rules_pkg

    In practice it is just an AWK script to modify the mtree manifest file.

    Args:
        name: name of the resulting `tar` rule
        srcs: files to include in the tarball
        out: name of output file. By default, outputs `[name].tar`
        package_dir: Prefix to be prepend to all paths written.
        strip_prefix: Prefix to be removed from all paths written.
        owner: Default numeric owner.group to apply to files.
        ownername: Default owner username to apply to files.
        mtime: Modification time to apply to all files.
        **kwargs: additional named attributes to the `tar` rule.
    """

    out = out or name + ".tar"
    mtree_spec(
        name = "_{}.mtree".format(name),
        srcs = srcs,
    )
    mtree_mutate(
        name = "_{}.mutate".format(name),
        mtree = "_{}.mtree".format(name),
        strip_prefix = strip_prefix,
        package_dir = package_dir,
        mtime = mtime,
        owner = owner,
        ownername = ownername,
    )
    tar(
        name = name,
        mtree = "_{}.mutate".format(name),
        srcs = srcs,
        out = out,
        **kwargs
    )
