require_relative './metadata'

READMES = []
COMPLETE_README = <<README
# ƒ

![Tests](https://img.shields.io/travis/unctionjs/complete.svg?maxAge=2592000&style=flat-square)
![Stability](https://img.shields.io/badge/stability-strong-green.svg?maxAge=2592000&style=flat-square)
![Dependencies](https://img.shields.io/david/unctionjs/complete.svg?maxAge=2592000&style=flat-square)

The complete package containing all #{PACKAGES.length} very useful functions. These functions are bound by these principles:

You can use each of these packages individually:

``` javascript
import {hammer} from "@unction/complete"
```

A set of  function.

  - All functions will have type annotations (and be automatically checked for their type safety).
  - All functions will only take a single argument (via currying).
  - All inner functions will be named based on the outer function and it's argument name, to improve debugging readability.
  - Functions that deal with types will a common standard format (see: `type()`)
  - Functions that mutate the original value, though rare, will have a suffix of M.
  - Functions that take or return promises will have a suffix of P.
  - Functions that can work on one type of Functor (value that can be mapped) can work on another type, including:
    - List (Array, Set)
    - Record (Object, Map)
    - Text (String, Buffer)
    - Stream (xstream)

See below for each function's documentation or their individual github readmes.
README


each_package do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, "README.md")
  READMES << File.read(location)
end

complete = COMPLETE_README + "\n" + READMES.join("\n").gsub(/^# @unction\/(.+)/, "## [\\1()](https://github.com/unctionjs/\\1#readme)").gsub(/^> (.+)/, "```\n\\1\n```") + "\n"

File.write(File.join(ENV["HOME"], "Code", "unctionjs", "complete", "README.md"), complete)
File.write(File.join(ENV["HOME"], "Code", "unctionjs", "unctionjs.github.io", "index.md"), complete)
