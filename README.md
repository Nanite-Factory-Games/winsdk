# winsdk extractor
As it turns out, getting the windows sdk is very annoying on linux.
You can use mingw64 to install some of the headers, but that is mainly for x86_64 and doesn't support ARM.

This repository uses a windows docker image and vs build tools to install the winsdk components.
Then the lib files and header files are coppied and zipped, and finally released.

I used this guide as a reference:
https://learn.microsoft.com/en-us/visualstudio/install/build-tools-container?view=vs-2019