"Adapter macro from rules_pkg pkg_tar rule to aspect_bazel_lib tar rule"

load("@aspect_bazel_lib//lib:tar.bzl", "mtree_spec", "tar")
load("//pkg/private:utils.bzl", "mtree_mutate")

def pkg_tar(name, srcs = [], out = None, package_dir = None, strip_prefix = None, owner = None, ownername = None, mtime = None, **kwargs):
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
