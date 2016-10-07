# The Builder

This script builds the documentation from [this repo](https://github.com/chandocs/schemas) to put on [this site](https://github.com/chandocs/chandocs.github.io/).

### Why does your [`.gitignore`](https://github.com/chandocs/builder/blob/master/.gitignore) include [Node.js](https://nodejs.org/en/) stuff?

Currently we're using Bash (to control [raml2html](https://github.com/raml2html/raml2html)) for scripting [Travis](https://docs.travis-ci.com/), but we will eventually use Node.js (with [raml2obj](https://github.com/raml2html/raml2obj)) to allow us to have some more freedom in how we generate/design the documentation.
