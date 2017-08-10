
# from = File.join(ENV["HOME"], "Code", "krainboltgreene", "unction.js", "package")
# to = File.join(ENV["HOME"], "Code", "unctionjs")
#
# Dir.glob(File.join(to, "*")).
#   each do |path|
#     folder = path.split("/").last
#     old_readme = File.read(File.join(from, folder, "README.md"))
#     old_package = JSON.parse(File.read(File.join(from, folder, "package.json")))
#     template_package = JSON.parse(File.read(File.join(to, "_tempLate", "package.json")))
#
#     new_package = {
#       "name" => old_package["name"],
#       "version" => old_package["version"],
#       "description" => old_package["description"],
#       "keywords" => template_package["keywords"],
#       "contributors" => template_package["contributors"],
#       "license" => template_package["license"],
#       "homepage" => template_package["homepage"],
#       "repository" => template_package["repository"],
#       "bugs" => template_package["bugs"],
#       "main" => template_package["main"],
#       "scripts" => template_package["scripts"],
#       "devDependencies" => (template_package["devDependencies"] || {}).merge(old_package["devDependencies"] || {}),
#       "dependencies" => old_package["dependencies"],
#     }
#     new_readme = old_readme.gsub("krainboltgreene/unction.js", "unctionjs/#{folder}")
#
#     File.write(File.join(to, folder, "package.json"), JSON.pretty_generate(new_package) + "\n")
#     File.write(File.join(to, folder, "README.md"), new_readme)
#   end

#!/usr/bin/env fish
#
# cd allObjectP; git remote set-url origin git@github.com:unctionjs/allObjectP; git push origin core; cd -;
# cd allP; git remote set-url origin git@github.com:unctionjs/allP; git push origin core; cd -;
# cd always; git remote set-url origin git@github.com:unctionjs/always; git push origin core; cd -;
# cd append; git remote set-url origin git@github.com:unctionjs/append; git push origin core; cd -;
# cd appendM; git remote set-url origin git@github.com:unctionjs/appendM; git push origin core; cd -;
# cd applicator; git remote set-url origin git@github.com:unctionjs/applicator; git push origin core; cd -;
# cd applicators; git remote set-url origin git@github.com:unctionjs/applicators; git push origin core; cd -;
# cd arrayify; git remote set-url origin git@github.com:unctionjs/arrayify; git push origin core; cd -;
# cd aside; git remote set-url origin git@github.com:unctionjs/aside; git push origin core; cd -;
# cd attach; git remote set-url origin git@github.com:unctionjs/attach; git push origin core; cd -;
# cd cascadingKeyChain; git remote set-url origin git@github.com:unctionjs/cascadingKeyChain; git push origin core; cd -;
# cd catchP; git remote set-url origin git@github.com:unctionjs/catchP; git push origin core; cd -;
# cd compact; git remote set-url origin git@github.com:unctionjs/compact; git push origin core; cd -;
# cd complete; git remote set-url origin git@github.com:unctionjs/complete; git push origin core; cd -;
# cd computedProp; git remote set-url origin git@github.com:unctionjs/computedProp; git push origin core; cd -;
# cd couple; git remote set-url origin git@github.com:unctionjs/couple; git push origin core; cd -;
# cd domEvents; git remote set-url origin git@github.com:unctionjs/domEvents; git push origin core; cd -;
# cd domEventsMany; git remote set-url origin git@github.com:unctionjs/domEventsMany; git push origin core; cd -;
# cd endsWith; git remote set-url origin git@github.com:unctionjs/endsWith; git push origin core; cd -;
# cd everyP; git remote set-url origin git@github.com:unctionjs/everyP; git push origin core; cd -;
# cd flattenTree; git remote set-url origin git@github.com:unctionjs/flattenTree; git push origin core; cd -;
# cd flip; git remote set-url origin git@github.com:unctionjs/flip; git push origin core; cd -;
# cd forEach; git remote set-url origin git@github.com:unctionjs/forEach; git push origin core; cd -;
# cd fresh; git remote set-url origin git@github.com:unctionjs/fresh; git push origin core; cd -;
# cd hammer; git remote set-url origin git@github.com:unctionjs/hammer; git push origin core; cd -;
# cd ifThenElse; git remote set-url origin git@github.com:unctionjs/ifThenElse; git push origin core; cd -;
# cd isArray; git remote set-url origin git@github.com:unctionjs/isArray; git push origin core; cd -;
# cd isIterable; git remote set-url origin git@github.com:unctionjs/isIterable; git push origin core; cd -;
# cd isNil; git remote set-url origin git@github.com:unctionjs/isNil; git push origin core; cd -;
# cd isObject; git remote set-url origin git@github.com:unctionjs/isObject; git push origin core; cd -;
# cd isPopulated; git remote set-url origin git@github.com:unctionjs/isPopulated; git push origin core; cd -;
# cd isPresent; git remote set-url origin git@github.com:unctionjs/isPresent; git push origin core; cd -;
# cd isType; git remote set-url origin git@github.com:unctionjs/isType; git push origin core; cd -;
# cd itself; git remote set-url origin git@github.com:unctionjs/itself; git push origin core; cd -;
# cd key; git remote set-url origin git@github.com:unctionjs/key; git push origin core; cd -;
# cd keyChain; git remote set-url origin git@github.com:unctionjs/keyChain; git push origin core; cd -;
# cd lacksText; git remote set-url origin git@github.com:unctionjs/lacksText; git push origin core; cd -;
# cd mapKeys; git remote set-url origin git@github.com:unctionjs/mapKeys; git push origin core; cd -;
# cd mapKeysWithValueKey; git remote set-url origin git@github.com:unctionjs/mapKeysWithValueKey; git push origin core; cd -;
# cd mapValues; git remote set-url origin git@github.com:unctionjs/mapValues; git push origin core; cd -;
# cd mapValuesWithValueKey; git remote set-url origin git@github.com:unctionjs/mapValuesWithValueKey; git push origin core; cd -;
# cd mergeAllLeft; git remote set-url origin git@github.com:unctionjs/mergeAllLeft; git push origin core; cd -;
# cd mergeAllRight; git remote set-url origin git@github.com:unctionjs/mergeAllRight; git push origin core; cd -;
# cd mergeDeepLeft; git remote set-url origin git@github.com:unctionjs/mergeDeepLeft; git push origin core; cd -;
# cd mergeDeepRight; git remote set-url origin git@github.com:unctionjs/mergeDeepRight; git push origin core; cd -;
# cd mergeLeft; git remote set-url origin git@github.com:unctionjs/mergeLeft; git push origin core; cd -;
# cd mergeRight; git remote set-url origin git@github.com:unctionjs/mergeRight; git push origin core; cd -;
# cd mergeWith; git remote set-url origin git@github.com:unctionjs/mergeWith; git push origin core; cd -;
# cd mergeWithKey; git remote set-url origin git@github.com:unctionjs/mergeWithKey; git push origin core; cd -;
# cd nestedApply; git remote set-url origin git@github.com:unctionjs/nestedApply; git push origin core; cd -;
# cd optimisticP; git remote set-url origin git@github.com:unctionjs/optimisticP; git push origin core; cd -;
# cd pairsKeys; git remote set-url origin git@github.com:unctionjs/pairsKeys; git push origin core; cd -;
# cd pairsValues; git remote set-url origin git@github.com:unctionjs/pairsValues; git push origin core; cd -;
# cd partition; git remote set-url origin git@github.com:unctionjs/partition; git push origin core; cd -;
# cd pluck; git remote set-url origin git@github.com:unctionjs/pluck; git push origin core; cd -;
# cd plucks; git remote set-url origin git@github.com:unctionjs/plucks; git push origin core; cd -;
# cd prepend; git remote set-url origin git@github.com:unctionjs/prepend; git push origin core; cd -;
# cd recordFrom; git remote set-url origin git@github.com:unctionjs/recordFrom; git push origin core; cd -;
# cd reduceValues; git remote set-url origin git@github.com:unctionjs/reduceValues; git push origin core; cd -;
# cd reduceWithValueKey; git remote set-url origin git@github.com:unctionjs/reduceWithValueKey; git push origin core; cd -;
# cd rejectP; git remote set-url origin git@github.com:unctionjs/rejectP; git push origin core; cd -;
# cd replaceWhen; git remote set-url origin git@github.com:unctionjs/replaceWhen; git push origin core; cd -;
# cd resolveP; git remote set-url origin git@github.com:unctionjs/resolveP; git push origin core; cd -;
# cd sample; git remote set-url origin git@github.com:unctionjs/sample; git push origin core; cd -;
# cd sampleSize; git remote set-url origin git@github.com:unctionjs/sampleSize; git push origin core; cd -;
# cd shuffle; git remote set-url origin git@github.com:unctionjs/shuffle; git push origin core; cd -;
# cd splat; git remote set-url origin git@github.com:unctionjs/splat; git push origin core; cd -;
# cd startsWith; git remote set-url origin git@github.com:unctionjs/startsWith; git push origin core; cd -;
# cd thenCatchP; git remote set-url origin git@github.com:unctionjs/thenCatchP; git push origin core; cd -;
# cd thenP; git remote set-url origin git@github.com:unctionjs/thenP; git push origin core; cd -;
# cd thrush; git remote set-url origin git@github.com:unctionjs/thrush; git push origin core; cd -;
# cd treeify; git remote set-url origin git@github.com:unctionjs/treeify; git push origin core; cd -;
# cd type; git remote set-url origin git@github.com:unctionjs/type; git push origin core; cd -;
# cd upTo; git remote set-url origin git@github.com:unctionjs/upTo; git push origin core; cd -;
# cd withoutKeyRecursive; git remote set-url origin git@github.com:unctionjs/withoutKeyRecursive; git push origin core; cd -;
# cd zip; git remote set-url origin git@github.com:unctionjs/zip; git push origin core; cd -;

#!/usr/bin/env fish

# cp ~/Code/krainboltgreene/unction.js/package/allObjectP/index.js allObjectP/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/allP/index.js allP/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/always/index.js always/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/append/index.js append/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/appendM/index.js appendM/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/applicator/index.js applicator/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/applicators/index.js applicators/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/arrayify/index.js arrayify/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/aside/index.js aside/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/attach/index.js attach/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/cascadingKeyChain/index.js cascadingKeyChain/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/catchP/index.js catchP/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/compact/index.js compact/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/complete/index.js complete/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/computedProp/index.js computedProp/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/couple/index.js couple/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/domEvents/index.js domEvents/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/domEventsMany/index.js domEventsMany/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/endsWith/index.js endsWith/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/everyP/index.js everyP/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/flattenTree/index.js flattenTree/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/flip/index.js flip/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/forEach/index.js forEach/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/fresh/index.js fresh/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/hammer/index.js hammer/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/ifThenElse/index.js ifThenElse/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/isArray/index.js isArray/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/isIterable/index.js isIterable/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/isNil/index.js isNil/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/isObject/index.js isObject/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/isPopulated/index.js isPopulated/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/isPresent/index.js isPresent/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/isType/index.js isType/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/itself/index.js itself/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/key/index.js key/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/keyChain/index.js keyChain/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/lacksText/index.js lacksText/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mapKeys/index.js mapKeys/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mapKeysWithValueKey/index.js mapKeysWithValueKey/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mapValues/index.js mapValues/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mapValuesWithValueKey/index.js mapValuesWithValueKey/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeAllLeft/index.js mergeAllLeft/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeAllRight/index.js mergeAllRight/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeDeepLeft/index.js mergeDeepLeft/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeDeepRight/index.js mergeDeepRight/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeLeft/index.js mergeLeft/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeRight/index.js mergeRight/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeWith/index.js mergeWith/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeWithKey/index.js mergeWithKey/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/nestedApply/index.js nestedApply/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/optimisticP/index.js optimisticP/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/pairsKeys/index.js pairsKeys/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/pairsValues/index.js pairsValues/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/partition/index.js partition/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/pluck/index.js pluck/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/plucks/index.js plucks/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/prepend/index.js prepend/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/recordFrom/index.js recordFrom/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/reduceValues/index.js reduceValues/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/reduceWithValueKey/index.js reduceWithValueKey/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/rejectP/index.js rejectP/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/replaceWhen/index.js replaceWhen/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/resolveP/index.js resolveP/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/sample/index.js sample/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/sampleSize/index.js sampleSize/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/shuffle/index.js shuffle/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/splat/index.js splat/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/startsWith/index.js startsWith/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/thenCatchP/index.js thenCatchP/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/thenP/index.js thenP/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/thrush/index.js thrush/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/treeify/index.js treeify/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/type/index.js type/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/upTo/index.js upTo/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/withoutKeyRecursive/index.js withoutKeyRecursive/source.js;
# cp ~/Code/krainboltgreene/unction.js/package/zip/index.js zip/source.js
# cp ~/Code/krainboltgreene/unction.js/package/allObjectP/test.js allObjectP/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/allP/test.js allP/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/always/test.js always/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/append/test.js append/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/appendM/test.js appendM/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/applicator/test.js applicator/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/applicators/test.js applicators/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/arrayify/test.js arrayify/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/aside/test.js aside/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/attach/test.js attach/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/cascadingKeyChain/test.js cascadingKeyChain/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/catchP/test.js catchP/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/compact/test.js compact/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/complete/test.js complete/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/computedProp/test.js computedProp/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/couple/test.js couple/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/domEvents/test.js domEvents/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/domEventsMany/test.js domEventsMany/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/endsWith/test.js endsWith/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/everyP/test.js everyP/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/flattenTree/test.js flattenTree/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/flip/test.js flip/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/forEach/test.js forEach/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/fresh/test.js fresh/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/hammer/test.js hammer/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/ifThenElse/test.js ifThenElse/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/isArray/test.js isArray/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/isIterable/test.js isIterable/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/isNil/test.js isNil/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/isObject/test.js isObject/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/isPopulated/test.js isPopulated/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/isPresent/test.js isPresent/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/isType/test.js isType/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/itself/test.js itself/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/key/test.js key/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/keyChain/test.js keyChain/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/lacksText/test.js lacksText/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mapKeys/test.js mapKeys/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mapKeysWithValueKey/test.js mapKeysWithValueKey/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mapValues/test.js mapValues/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mapValuesWithValueKey/test.js mapValuesWithValueKey/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeAllLeft/test.js mergeAllLeft/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeAllRight/test.js mergeAllRight/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeDeepLeft/test.js mergeDeepLeft/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeDeepRight/test.js mergeDeepRight/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeLeft/test.js mergeLeft/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeRight/test.js mergeRight/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeWith/test.js mergeWith/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/mergeWithKey/test.js mergeWithKey/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/nestedApply/test.js nestedApply/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/optimisticP/test.js optimisticP/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/pairsKeys/test.js pairsKeys/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/pairsValues/test.js pairsValues/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/partition/test.js partition/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/pluck/test.js pluck/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/plucks/test.js plucks/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/prepend/test.js prepend/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/recordFrom/test.js recordFrom/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/reduceValues/test.js reduceValues/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/reduceWithValueKey/test.js reduceWithValueKey/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/rejectP/test.js rejectP/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/replaceWhen/test.js replaceWhen/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/resolveP/test.js resolveP/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/sample/test.js sample/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/sampleSize/test.js sampleSize/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/shuffle/test.js shuffle/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/splat/test.js splat/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/startsWith/test.js startsWith/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/thenCatchP/test.js thenCatchP/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/thenP/test.js thenP/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/thrush/test.js thrush/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/treeify/test.js treeify/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/type/test.js type/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/upTo/test.js upTo/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/withoutKeyRecursive/test.js withoutKeyRecursive/test.js;
# cp ~/Code/krainboltgreene/unction.js/package/zip/test.js zip/test.js
