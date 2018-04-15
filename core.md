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
