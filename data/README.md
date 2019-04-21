# unction.js

unction.js is a collection of many functions. THese functions are bound by a set of three principles that are detailed below.


## Raison d'exister

There are a few similar libraries out there and they all have good standing with the community, so why make unctionjs? Well the original package started off as ramda-extra, a set of functions in a package that ramda seemed to never want to implement (like at the time mapKeys). Then eventually I got to the point where I wanted to have functions be curried for clarity and found that many ramda functions don't fully support only currying. While ramda is amazing and I still use it to this day I knew I had to fork off and write my own path.

Here's a list of (I believe) fair reasons why I don't use these popular and *really good libraries*:

  - *ramda*: Ramda has all functions in a single package, it relies on internal private functions to ensure compatibility, does not have real type checking, prefers "autocurrying" which can lead to issues with curried functions, and finally as described above ramda has an interest in retaining a small surface layer.
  - *lodash*: Lodash only does curried as a second class citizen, doesn't have type checking, prefers "autocurrying" when it has support for it, and doesn't have a very clear picture about what some of the functions are polymorphic.

That said every unctionjs function will work with every ramda and lodash function where currying is allowed.


## Using unction libraries

You can install a package individually:

```
npm install --save @unction/treeify
```

``` javascript
import treeify from "@unction/treeify"
```

Or you can install the **complete** package:

``` bash
npm install --save @unction/complete
```

and import the function from package:

``` javascript
import {treeify} from "@unction/complete"
```


## Principle 1

**All functions are curried**. Due to the nature of functional programming it's exceedingly valuable to have functions that are, by default, curried. Here's an erxample:


``` javascript
// asStateTree.js
import treeify from "@unction/treeify"
import get from "@unction/get"
import dig from "@unction/dig"
import indexBy from "@unction/indexby"
import groupBy from "@unction/groupby"

export default treeify(
  [
    // Group by type
    groupBy(get("type")),
    // Index by id
    indexBy(get("id")),
  ]
)
```

We can use this function like so:

``` javascript
// resources.js
import asStateTree from "./asStateTree"

// Take resources from the HTTP API, turn it into a state tree
pipe([fetchResources, asStateTree])
```


## Principle 2

**All functions know how to deal with a finite set of primitives**. When using a unctionjs function you can be sure that we'll be able to handle all 6 enumerable types:

  - Array
  - Object
  - Set
  - Map
  - String
  - Stream (see: most.js)


## Principle 3

**All functions are pure by default**. No function will ever have any side-effects (unless otherwise noted with a `I` suffix like `shuffleI()`) and are referentially transparent.


## Principle 4

**All functions are immutable by default**. These functions do not mutate (unless otherwise noted with a `M` suffix like `appendM()`) the original values.


## Functions
