require_relative './metadata'

READMES = []
COMPLETE_README = <<README
# @unction/complete

![Tests](https://img.shields.io/travis/unctionjs/complete.svg?maxAge=2592000&style=flat-square)
![Stability](https://img.shields.io/badge/stability-strong-green.svg?maxAge=2592000&style=flat-square)
![Dependencies](https://img.shields.io/david/unctionjs/complete.svg?maxAge=2592000&style=flat-square)

The complete package of unction functions. See below for documentation.

## Usage

You can use each of these packages individually:

``` javascript
import {hammer} from "@unction/complete"

hammer()
```
README


each_package do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, "README.md")
  READMES << File.read(location)
end

complete = COMPLETE_README + "\n" + READMES.join("\n").gsub(/^# @unction\//, "## @unction/") + "\n"

File.write(File.join(ENV["HOME"], "Code", "unctionjs", "complete", "README.md"), complete)
