# Introduction

Just to set the record straight, this book is available under a Creative
Commons 4.0 Attribution ShareAlike license. Therefore, feel free to copy this
book, share it with friends, or extend it with additional code examples.

We will explain some basics of the Bioclipse Scripting Language (bsl)
idea (doi:[10.1186/1471-2105-10-397](https://doi.org/10.1186/1471-2105-10-397)), and then the following chapters will
describe functionality available in this language. Each chapter is
written around a particular area. But before we get to scripting let's look at
how to get [Bioclipse](http://bioclipse.net/) running!

## Downloading, installing and updating Bioclipse

This section gives a short introduction for how to get started with Bioclipse
and is mainly cut from the *Getting started with Bioclipse 2.6* folder. 

### Downloading

Bioclipse for Windows comes in a couple of different packages. Either as a
`.zip` file or as an installation program and either as 32 or 64 bit. To
find out if you have 32 or 64 bit in Windows&nbsp;XP  and Windows&nbsp;7 right click the
icon named `My computer` and choose `properties`. On
Windows~8 you need to go to `System and Security` and
then `view basic information about your computer`.  Normally, the installation program should be
the obvious choice but if, for whatever reason, that does not work you can use
the zip file. The Linux version is packaged as a tar.gz file and the Mac
version comes as a .dmg file. These packages are available from https://sourceforge.net/projects/bioclipse/files/bioclipse2/bioclipse2.6.1/ .

### Installing
The installation procedure differs between the operating systems. Bioclipse
needs a Java installation to be present on the computer. To install Java, visit
[www.java.com](http://www.java.com) and follow the instructions. If you are not sure whether or
not you have Java, you can also check that on [www.java.com](http://www.java.com).

#### Windows XP, 7 and 8
If you downloaded Bioclipse as a `.zip` file you need to unzip it to a
location where you want it and then start it from the `Bioclipse.exe`
file. If you downloaded the installation program simply double click the file
to start the installation program which will install Bioclipse on your machine
and add it to the Start menu (on Windows&nbsp;XP, and Windows&nbsp;7).

#### Mac OS X
The installation on Mac consists of dragging the `.app` file to the
Applications folder. You then start Bioclipse from the Applications folder just
like any other program. 

#### Ubuntu Linux
There is nothing special about the Linux distribution Ubuntu with regards to
Bioclipse and it should work fine with other distributions as well. However we
have tested Ubuntu and show how to get it running on Ubuntu. Hopefully you can
adapt the instructions to your local distribution.
The Linux version of Bioclipse comes packed in a `tar.gz` file. All you need to
do is to unpack the file to some suitable location and start from there.
Bioclipse uses Java and has been tested with OpenJDK on Ubuntu Linux and Debian
GNU/Linux. 

OpenJDK can be found by searching for `Java` at the Ubuntu software center.
When you have found OpenJDK there, Java can be installed by just a simple
click. The way to install OpenJDK can differ in other distributions of Linux,
but as soon as you have installed OpenJDK Bioclipse should be runnable. When
Java has been properly installed, Bioclipse can be started by double clicking
the file named `bioclipse`.

### Starting Bioclipse for the first time
When you start Bioclipse for the first time a Welcome page is shown.

Spend some time looking at the various sub pages. Make sure to import the
sample data if you want some data to play with. Just the empty workspace makes
it difficult to test the different parts of Bioclipse.

The arrow in the upper corner brings you to the workbench. If you didn't try
the `Introductory Bioclipse tutorial` from the Welcome
page it is also reachable from the `Help` menu by choosing `Cheat Sheets`
and then selecting the `Using the Bioclipse Workbench` cheat
sheet. It might be a good idea to spend some time following the instructions in
this cheat sheet before you start exploring Bioclipse on your own.

### Updating and installing new features
Bioclipse is a highly customizable piece of software. New features and new
versions of features can be installed as needed in your Bioclipse
installation.

When Bioclipse starts, it checks the update site for new versions of what is
already installed. If new versions are found, you are given the option to
download them. If you choose to do so, the new versions will be downloaded.
Once this is done, Bioclipse must be restarted to allow the new features to be
used.

Bioclipse ships with, among other things, components for handling molecules but
more advanced things like, for example, OpenTox support must be installed
separately. To do this click `Install` in the top menu and then choose
`New ...` This brings up a dialog showing all
features available for installation. By clicking the check box named
`Show installed` you can also see what features are already
installed in your workbench.

Select what you want to install, accept the licenses and wait while Bioclipse
restarts with the new features.

## Scripting Languages

Bioclipse supports scripting in three programming languages:
JavaScript, Groovy, and Python.
Support for other programming languages is possible, but needs some additional
funding for development. All these languages are enriched with domain
extensions, but it should be noted that the JavaScript support is the
longest existing and the best developed.

## Extensions

Extensions of the scripting language are called *managers*.
These managers introduce domain specific functionality, for
example, in the field of cheminformatics.

Besides managers, Bioclipse also extends the scripting language with a few
basic, helpful commands. For example, to get documentation you can use the
`man` command, for example, for itself:

```js
man man
```

BTW, help is a synonym:

```js
help man
```

Another interesting command is the doi command which opens a web page with a
paper describing the (tool behind the) functionality of a manager. For example,
to get help for the cdk manager, you type:

```js
doi cdk
```

## Domain Objects

Script extensions are not enough to do bio- and cheminformatics. If extension
cannot exchange data with each other, it will not really be useful. Embedding
of the extensions in the same scripting language is the first step, but
these extensions also need a common data model. This is what the domain objects are
for.

For example, Bioclipse knows the following domain objects used in the sciences:

| Domain Object | Purpose |
|---------------|---------|
| IMolecule | a chemical structure |
| IProtein | a protein sequence |
| IProteinCrystal | a protein crystal structure |

Furthermore, a further set of more general objects are defined:

| Domain Object | Purpose |
|---------------|---------|
| IRDFStore | a triple store |
