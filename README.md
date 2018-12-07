extension_template
==================

A set of template files from which to create an extension.

This extension can be built as-is, but will only result in the
installation of a single, useless function.


Renaming the extension
----------------------

You'll probably want to rename the extension to something more useful;
use the supplied script thusly:

    ./rename.sh new_extension_name

This will convert occurrences of the original extension name in the relevant
source files, then rename the files appropriately. No checks are performed
on the validity of the name.


Useful links:
-------------

* https://www.postgresql.org/docs/current/extend-extensions.html
* https://www.postgresql.org/docs/current/extend-pgxs.html
