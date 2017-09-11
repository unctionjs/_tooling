require_relative './metadata'

READMES = []
COMPLETE_README = <<README
# ƒ

![Tests](https://img.shields.io/travis/unctionjs/complete.svg?maxAge=2592000&style=flat-square)
![Stability](https://img.shields.io/badge/stability-strong-green.svg?maxAge=2592000&style=flat-square)
![Dependencies](https://img.shields.io/david/unctionjs/complete.svg?maxAge=2592000&style=flat-square)

The package containing all #{PACKAGES.length} individual @unctionjs packages as a single package.


**Raison d'exister**

There are a few similar libraries out there and they all have good standing with the community, so why make unction.js? Well it started off as ramda-extra, a set of functions in a package that ramda seemed to never want to implement (like at the time mapKeys). Then eventually I got to the point where I wanted to have functions be curried for clarity and found that many ramda functions don't fully support only currying. While ramda is amazing and I still use it to this day I knew I had to fork off and write my own path. No code was coppied from ramda, but it was the foundation of quite a few functions.

Here's a list of (I believe) fair reasons why you should use unction over these popular and really good libraries:

  - *ramda*: Ramda has all functions in a single package, it relies on internal private functions to ensure compatability, does not have real type checking, prefers "autocurrying" which can lead to issues with curried functions, and finally as described above ramda has an interest in retaining a small surface layer
  - *lodash*: Lodash only does curried as a second class citizen, doesn't have type checking, prefers autocurrying when it has support for it, and doesn't have a very clear picture about what some of the functions should work on


**Using**

All functions are bound by these principles:


  - All functions will have a description and an example.
  - All functions will have a test for each type they support.
  - All functions will have type annotations (and be automatically checked for their type safety).
  - All functions will only take a single argument (via currying).
  - All inner functions will be named based on the outer function and it's argument name, to improve debugging readability.
  - Functions that deal with types have a common standard format (see: `type()`)
  - Functions that mutate the original value, though rare, will have a suffix of M.
  - Functions that take or return promises will have a suffix of P.
  - Functions that can work on one type of Functor (value that can be mapped) can work on another type, including:
    - List (Array, Set)
    - Record (Object, Map)
    - Text (String, Buffer)
    - Stream (xstream)


You can use each of these packages individually:

``` javascript
import {hammer} from "@unction/complete"
```

See below for each function's documentation or their individual github readmes.
README

each_package(complete: false, template: false) do |name|
  readme_location = File.join(ENV["HOME"], "Code", "unctionjs", name, "README.md")
  package_location = File.join(ENV["HOME"], "Code", "unctionjs", name, "package.json")
  package = JSON.parse(File.read(package_location))
  version = package["version"]
  READMES << File.read(readme_location).
    gsub(/^# @unction.+$/, "## [#{name}()](https://github.com/unctionjs/#{name}#readme) [#{version}]").
    gsub(/^> (.+)/, "```\n\\1\n```")
end

complete = COMPLETE_README + "\n" + READMES.join("\n") + "\n"

File.write(File.join(ENV["HOME"], "Code", "unctionjs", "complete", "README.md"), complete)
File.write(File.join(ENV["HOME"], "Code", "unctionjs", "unctionjs.github.io", "index.md"), "---\nlayout: default\n---\n" + complete)
