Add package.json:

  "jest": {
    "setupFilesAfterEnv": ["jest-extended"]
  }

Remove package.json

  "nyc": {
    ...
  }

setup @babel/plugin-syntax-dynamic-import

Import eslint-plugin-jest rules

---


bin/tooling-remove --paths .flowconfig
bin/tooling-rewrite
bin/tooling-add --files .babelrc,.eslintrc.js,.gitignore,.tool-versions,package.json
bin/tooling-each --command "npm install --save-dev @babel/plugin-transform-flow-strip-types"
bin/tooling-each --command "npx babel --no-babelrc --plugins @babel/plugin-transform-flow-strip-types --out-file index.js index.js"
bin/tooling-each --concurrent --command "npx eslint --fix"

bin/tooling-rewrite
bin/tooling-each --concurrent --command "npm uninstall --save-dev eslint-plugin-jsx-a11y eslint-plugin-react"
bin/tooling-install
bin/tooling-add --files .babelrc,.eslintrc.js,.gitignore,.tool-versions,package.json



bin/tooling-codemod --concurrent --file test.js --pattern "flowtype\/require-parameter-type, " --replacement ""
bin/tooling-codemod --concurrent --file test.js --pattern "flowtype\/require-return-type, " --replacement ""


bin/tooling-each --concurrent --command "npm audit fix"


bin/tooling-add --files .eslintrc.js && MESSAGE="Removing unused lint plugin and lint rule" bin/tooling-commit
bin/tooling-add --files package-lock.json && MESSAGE="Running audit" bin/tooling-commit
bin/tooling-rewrite
bin/tooling-add --files package.json && MESSAGE="Removing unused paths" bin/tooling-commit
bin/tooling-each --concurrent --command "npx eslint --fix index.js test.js"
bin/tooling-add --files index.js,test.js && MESSAGE="Autolinting" bin/tooling-commit
# LATEST
bin/tooling-install --type devDependencies --packages "@babel/cli@7.4.3 @babel/core@ 7.4.3 @babel/plugin-proposal-object-rest-spread@7.4.3 @babel/preset-env@7.4.3 babel-jest@24.5.0 jest@24.5.0"

```
Inside allObjectP...
Inside allP...
Inside always...
Inside append...
Inside appendM...
Inside applicator...
Inside applicators...
Inside arrayify...
Inside aside...
Inside attach...
Inside catchP...
Inside compact...
Inside complete...
Inside computedProp...
Inside couple...
Inside dig...
/Users/krainboltgreene/Code/unctionjs/dig/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/dig/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/dig@1.0.1 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/dig@1.0.1 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_04_42_990Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/dig@1.0.1 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/dig@1.0.1 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_04_43_034Z-debug.log
Inside domEvents...
Inside domEventsMany...
Inside dropFirst...
Inside dropLast...
Inside endsWith...
Inside equals...
Inside everyP...
Inside first...
Inside flatten...
Inside flattenTree...
Inside flip...
Inside forEach...
Inside fresh...
Inside fromArrayToObject...
Inside fromFunctorToPairs...
Inside fromIteratorToArray...
Inside get...
Inside getMany...
/Users/krainboltgreene/Code/unctionjs/getMany/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/getMany/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/getmany@1.0.0 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/getmany@1.0.0 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_06_53_243Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/getmany@1.0.0 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/getmany@1.0.0 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_06_53_354Z-debug.log
Inside greaterThan...
Inside groupBy...
Inside hammer...
/Users/krainboltgreene/Code/unctionjs/hammer/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/hammer/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/hammer@15.0.1 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/hammer@15.0.1 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_07_14_918Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/hammer@15.0.1 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/hammer@15.0.1 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_07_14_955Z-debug.log
Inside ifThenElse...
Inside indexBy...
Inside inflateTree...
Inside initial...
Inside isArray...
Inside isEnumerable...
Inside isNil...
Inside isObject...
Inside isPopulated...
Inside isPresent...
Inside isType...
Inside itself...
Inside keyChainTree...
/Users/krainboltgreene/Code/unctionjs/keyChainTree/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/keyChainTree/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for branches (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/keychaintree@1.0.1 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/keychaintree@1.0.1 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_08_49_969Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/keychaintree@1.0.1 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/keychaintree@1.0.1 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_08_50_008Z-debug.log
Inside lacksText...
Inside last...
Inside length...
Inside lessThan...
Inside mapKeys...
Inside mapKeysWithValueKey...
Inside mapValues...
Inside mapValuesWithValueKey...
Inside mergeAllLeft...
Inside mergeAllRight...
Inside mergeDeepLeft...
Inside mergeDeepRight...
Inside mergeLeft...
Inside mergeRight...
Inside mergeWith...
Inside mergeWithKey...
Inside nestedApply...
/Users/krainboltgreene/Code/unctionjs/nestedApply/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/nestedApply/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/nestedapply@12.0.1 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/nestedapply@12.0.1 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_10_57_084Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/nestedapply@12.0.1 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/nestedapply@12.0.1 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_10_57_155Z-debug.log
Inside objectFrom...
/Users/krainboltgreene/Code/unctionjs/objectFrom/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/objectFrom/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/objectfrom@1.0.0 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/objectfrom@1.0.0 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_11_03_709Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/objectfrom@1.0.0 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/objectfrom@1.0.0 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_11_03_795Z-debug.log
Inside of...
Inside optimisticP...
Inside pairsKeys...
Inside pairsValues...
Inside partition...
Inside pipe...
Inside pluck...
/Users/krainboltgreene/Code/unctionjs/pluck/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/pluck/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/pluck@10.0.1 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/pluck@10.0.1 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_11_55_284Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/pluck@10.0.1 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/pluck@10.0.1 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_11_55_318Z-debug.log
Inside plucks...
/Users/krainboltgreene/Code/unctionjs/plucks/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/plucks/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/plucks@10.0.1 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/plucks@10.0.1 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_12_03_736Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/plucks@10.0.1 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/plucks@10.0.1 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_12_03_795Z-debug.log
Inside prepend...
Inside range...
Inside reduceKeys...
Inside reduceValues...
Inside reduceWithValueKey...
Inside rejectByValue...
/Users/krainboltgreene/Code/unctionjs/rejectByValue/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/rejectByValue/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for branches (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/rejectbyvalue@1.0.0 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/rejectbyvalue@1.0.0 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_12_45_000Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/rejectbyvalue@1.0.0 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/rejectbyvalue@1.0.0 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_12_45_035Z-debug.log
Inside rejectP...
Inside remaining...
Inside replaceWhen...
Inside resolveP...
Inside reversal...
/Users/krainboltgreene/Code/unctionjs/reversal/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/reversal/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/reversal@1.0.0 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/reversal@1.0.0 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_13_18_041Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/reversal@1.0.0 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/reversal@1.0.0 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_13_18_120Z-debug.log
Inside reverse...
Inside sample...
Inside sampleSize...
Inside selectByValue...
/Users/krainboltgreene/Code/unctionjs/selectByValue/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/selectByValue/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for branches (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/selectbyvalue@1.0.0 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/selectbyvalue@1.0.0 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_13_47_241Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/selectbyvalue@1.0.0 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/selectbyvalue@1.0.0 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_13_47_273Z-debug.log
Inside sequence...
Inside shuffle...
Inside splat...
Inside split...
Inside startsWith...
Inside streamSatisfies...
Inside supertype...
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/supertype@4.0.0 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/supertype@4.0.0 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_14_39_040Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/supertype@4.0.0 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/supertype@4.0.0 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_14_39_071Z-debug.log
Inside takeFirst...
Inside takeLast...
Inside thenCatchP...
Inside thenP...
Inside thrush...
Inside treeify...
Inside type...
Inside upTo...
Inside values...
Inside where...
/Users/krainboltgreene/Code/unctionjs/where/test.js:1
ReferenceError: test is not defined
    at Object.<anonymous> (/Users/krainboltgreene/Code/unctionjs/where/test.js:1)
    at Generator.next (<anonymous>)
ERROR: Coverage for lines (0%) does not meet global threshold (100%)
ERROR: Coverage for functions (0%) does not meet global threshold (100%)
ERROR: Coverage for branches (0%) does not meet global threshold (100%)
ERROR: Coverage for statements (0%) does not meet global threshold (100%)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/where@9.0.1 test: `NODE_ENV=test tap --100 './test.js'`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/where@9.0.1 test script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_15_48_272Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @unction/where@9.0.1 ci: `npm run test`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @unction/where@9.0.1 ci script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/krainboltgreene/.npm/_logs/2019-04-14T04_15_48_310Z-debug.log
Inside withoutKeyRecursive...
Inside zip...
```


bin/tooling-each --concurrent --command "cd types/ && git pull origin core"
bin/tooling-each --concurrent --command "npm install --save-dev @babel/preset-typescript typescript"
bin/tooling-each --command "git mv index.js index.ts"
bin/tooling-rewrite
