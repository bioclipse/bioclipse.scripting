# Core functionality

The core functionality of Bioclipse is provided by a set of managers which are part
of the default Bioclipse distribution. This includes the `bioclipse`,
`js`, `ui`, and `gist` managers.

## The `bioclipse` manager

One core manager is the `bioclipse` manager. 

### Project and file management

The `bioclipse` manager has, for example,
functionality to convert Eclipse-style paths, based on projects to full
operating system-style paths, which you may need in the scripting language. For
example, given a project in Bioclipse called ``WikiPathways`` with a folder
called ``data'', I can get the full path with:

```javascript
fullPath = bioclipse.fullPath(
  "/WikiPathways/data/" + species + "/"
)
```

This full path I can then use with, for example, the Java
`File` class from JavaScript and Groovy. For example,
I am using Groovy in this set up:

```groovy
dataMap = bioclipse.fullPath(
  "/WikiPathways/data/" + species + "/"
);
gpmlFiles = new File(dataMap).listFiles()
```

### Runtime environment

Furthermore, the bioclipse manager has functionality to get some information
about the running Bioclipse. You can get the version with:

```js
bioclipse.version()
```

And get the location of where the log file is found:

```js
bioclipse.logfileLocation()
```

And provide the locations of a few Bioclipse websites:

```js
bioclipse.wiki()
bioclipse.planet()
bioclipse.bugTracker()
```

It can be used to test if there is an Internet connection:

```js
bioclipse.isOnline()
```

But it can also fail if Bioclipse does not have active Internet
access:

```js
bioclipse.assumeOnline()
```

The manager can be used to validate some of these assumptions. For example, it
can be used to test which Bioclipse version we are running, or make an
assertion on the minimally required version:

```js
bioclipse.requireVersion("2.6.1")
```

The `bioclipse` manager is also the place to look if you would like to download a
web page, such as the front page of the Dutch newspaper "De Volkskrant":

```js
bioclipse.download("http://www.vk.nl/")
```

## The `gist` manager

The `gist` manager is used for downloading gists. A gist is a simple way to share
small texts on GitHub, such as Bioclipse scripts and get verson
control on them. For more information see https://gist.github.com/ .

Originally, a gist was a single file, but that is past history. The manager
followed this change and will now download all files from a
gist:

```js
gist.download(6282642)
```

## The `js` manager

The `js` manager is one specific for the JavaScript environment. It has a few
commands that allow you to interact with the console, for example. To clear the
content and write something in the JavaScript console you can use:

```js
js.clear()
js.say("Hello world!")
```

## The `ui` manager

Another core manager is the `ui` manager. It has user interface related
functionality. For example, we can use it to test if a file is available from
the Bioclipse workspace:

```js
knowledgebase = "/WikiPathways/chebi.owl";
if (ui.fileExists(knowledgebase)) {
}
```

If we combine this with three further commands, we have a means to modify the
content of files:

```js
outFilename = "/eNanoMapper/affinity.ttl"
if (ui.fileExists(outFilename)) {
  ui.remove(outFilename)
  ui.newFile(outFilename)
}
ui.append(outFilename, rdf.asTurtle(store))
```

### An Interactive User Interface

Importantly, this manager also takes care of interaction with the Bioclipse
user interface itself. For example, we can use it to open editors for
particular blobs of data:

```js
ui.open(cdk.fromSMILES("c1=cc=cc=c1"))
```

And it can show a particular file in the Bioclipse Navigator:

```js
ui.revealAndSelect("/eNanoMapper/affinity.ttl")
```

## The `xml` manager

There is also an `xml` manager to work with XML files. For example, we can test if the
file is well-formed:

```js
xml.isWellFormed("/Google/solubility.rdf")
```

And list all the XML namespaces in that file:

```js
xml.listNamespaces("/Google/solubility.rdf")
```

Validation is also possible, using the information in the XML file itself:

```js
xml.validate("/Google/solubility.rdf")
```

This has the disadvantages that this information must be provided and that you likely
need internet access. However, you can also validate against a file you provide:

```js
xml.validateAgainstRelaxNG(
  "/Google/solubility.rdf", relaxNGSchemaFile
)
xml.validateAgainstSchematron(
  "/Google/solubility.rdf", schematronFile
)
xml.validateAgainstXMLSchema(
  "/Google/solubility.rdf", xmlSchemaFile
)
```
