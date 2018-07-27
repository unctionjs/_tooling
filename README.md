# tooling tooling

This is a list of all the tools available for managing all tooling packages. The only repository that blurs the line is `_tempLate`, which is a metapackage that we also want to maintain the same way.


## add

```

description: adds files to git
usage: tooling add [options]
    --files  the list of files (filea,fileb)
    --help   

```

## ci

```

usage: tooling ci [options]
    --help  

```

## clone

```

usage: tooling clone [options]
    --help  

```

## commit

```

usage: tooling commit [options]
    --help  

```

## complete

```

usage: tooling complete [options]
    --help  

```

## create

```

usage: tooling create [options]
    --name  the name of the package
    --help  

```

## diff

```

usage: tooling diff [options]
    --help  

```

## discard

```

usage: tooling discard [options]
    --paths  the list of files
    --help   

```

## document

```

usage: tooling document [options]
    --help  

```

## each

```

description: runs a command over each repository
usage: tooling each [options]
    --command     the command you want to run
    --concurrent  if you want it to be concurrent
    --help        

```

## graph

```

usage: tooling graph [options]
    --help  

```

## indexed

```

usage: tooling indexed [options]
    --help  

```

## install

```

usage: tooling install [options]
    --packages  the package names
    --type      the type of dependency: dependencies, devDependencies, etc
    --help      

```

## move

```

usage: tooling move [options]
    --from  The origin
    --to    The destination
    --help  

```

## publish

```

usage: tooling publish [options]
    --help  

```

## publish-backfill

```

usage: tooling publish-backfill [options]
    --help  

```

## pull

```

usage: tooling pull [options]
    --help  

```

## pull-submodule

```

usage: tooling pull-submodule [options]
    --help  

```

## push

```

usage: tooling push [options]
    --help  

```

## remove

```

usage: tooling remove [options]
    --paths  the list of files
    --help   

```

## rename

```

description: renames packages
usage: tooling rename [options]
    --old   the old package
    --new   the new package
    --help  

```

## reset

```

usage: tooling reset [options]
    --paths  the list of files
    --help   

```

## rewrite

```

usage: tooling rewrite [options]
    --help  

```

## stash-list

```

usage: tooling stash-list [options]
    --help  

```

## test

```

usage: tooling test [options]
    --help  

```

## unfinished

```

description: finds unfinished changes
usage: tooling unfinished [options]
    --help  

```

## uninstall

```

usage: tooling uninstall [options]
    --packages  the package names
    --type      the type of dependency: dependencies, devDependencies, etc
    --help      

```

## update

```

usage: tooling update [options]
    --name    the name or pattern of a dependency
    --single  Use to completely force a single update
    --type    dependencies, devDependencies, peerDependencies, etc
    --help    

```

## update-cascading

```

usage: tooling update-cascading [options]
    --root  the root package you want to start with
    --help  

```

## version

```

usage: tooling version [options]
    --bump  the version bump type
    --help  

```

