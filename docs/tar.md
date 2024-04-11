<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Adapt from rules_pkg `pkg_tar` API to aspect_bazel_lib `tar` rule.


<a id="pkg_tar"></a>

## pkg_tar

<pre>
pkg_tar(<a href="#pkg_tar-name">name</a>, <a href="#pkg_tar-srcs">srcs</a>, <a href="#pkg_tar-out">out</a>, <a href="#pkg_tar-package_dir">package_dir</a>, <a href="#pkg_tar-strip_prefix">strip_prefix</a>, <a href="#pkg_tar-owner">owner</a>, <a href="#pkg_tar-ownername">ownername</a>, <a href="#pkg_tar-mtime">mtime</a>, <a href="#pkg_tar-kwargs">kwargs</a>)
</pre>

Adapter macro to call `tar` with an API mimicking rules_pkg

In practice it is just an AWK script to modify the mtree manifest file.


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="pkg_tar-name"></a>name |  name of the resulting <code>tar</code> rule   |  none |
| <a id="pkg_tar-srcs"></a>srcs |  files to include in the tarball   |  <code>[]</code> |
| <a id="pkg_tar-out"></a>out |  name of output file. By default, outputs <code>[name].tar</code>   |  <code>None</code> |
| <a id="pkg_tar-package_dir"></a>package_dir |  Prefix to be prepend to all paths written.   |  <code>None</code> |
| <a id="pkg_tar-strip_prefix"></a>strip_prefix |  Prefix to be removed from all paths written.   |  <code>None</code> |
| <a id="pkg_tar-owner"></a>owner |  Default numeric owner.group to apply to files.   |  <code>None</code> |
| <a id="pkg_tar-ownername"></a>ownername |  Default owner username to apply to files.   |  <code>None</code> |
| <a id="pkg_tar-mtime"></a>mtime |  Modification time to apply to all files.   |  <code>None</code> |
| <a id="pkg_tar-kwargs"></a>kwargs |  additional named attributes to the <code>tar</code> rule.   |  none |


