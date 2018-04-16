# Introduction

Just to set the record straight, this book is available under a Creative
Commons 4.0 Attribution ShareAlike license. Therefore, feel free to copy this
book, share it with friends, or extend it with additional code examples.

We will explain some basics of the Bioclipse Scripting Language (bsl)
idea, and then the following chapters will
describe functionality available in this language. Each chapter is
written around a particular area. But before we get to scripting let's look at
how to get Bioclipse running!

## Downloading, installing and updating Bioclipse

This section gives a short introduction for how to get started with Bioclipse
and is mainly cut from the *Getting started with Bioclipse 2.6* folder. 

TO BE COPIED

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

``js
man man
``

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

| IMolecule | a chemical structure |
| IProtein | a protein sequence |
| IProteinCrystal | a protein crystal structure |

Furthermore, a further set of more general objects are defined:

IRDFStore | a triple store
