# unctionjs tooling

This is a list of all the tools available for managing all unctionjs packages. There are two types of repository:

  - Metapackage, which are random things like the type repository and this repository
  - Package, which is a npm package

The only repository that blurs the line is `_tempLate`, which is a metapackage that we also want to maintain the same way.


## add

```

description: adds files to git
usage: unctionjs add [options]
    --files  the list of files (filea,fileb)
    --help   

```

## ci

```

usage: unctionjs ci [options]
    --help  

```

## clone

```

usage: unctionjs clone [options]
    --help  

```

## commit

```

usage: unctionjs commit [options]
    --message  the commit message
    --help     

```

## complete

```

usage: unctionjs complete [options]
    --help  

```

## create

```

usage: unctionjs create [options]
    --name  the name of the package
    --help  

```

## diff

```

usage: unctionjs diff [options]
    --help  

```

## discard

```

usage: unctionjs discard [options]
    --paths  the list of files
    --help   

```

## document

```

usage: unctionjs document [options]
    --help  

```

## each

```

description: runs a command over each of a specific type of repository
usage: unctionjs each [options]
    --scope       the scope of the packages you care about
    --command     the command you want to run
    --concurrent  if you want it to be concurrent
    --help        

```

## graph

```

usage: unctionjs graph [options]
    --help  

```

## indexed

```

usage: unctionjs indexed [options]
    --help  

```

## install

```

usage: unctionjs install [options]
    --packages  the package names
    --type      the type of dependency: dependencies, devDependencies, etc
    --help      

```

## move

```

usage: unctionjs move [options]
    --from  The origin
    --to    The destination
    --help  

```

## publish

```

usage: unctionjs publish [options]
    --help  

```

## publish-backfill

```

usage: unctionjs publish-backfill [options]
    --help  

```

## pull

```

usage: unctionjs pull [options]
    --help  

```

## pull-submodule

```

usage: unctionjs pull-submodule [options]
    --help  

```

## push

```

usage: unctionjs push [options]
    --help  

```

## remove

```

usage: unctionjs remove [options]
    --paths  the list of files
    --help   

```

## reset

```

usage: unctionjs reset [options]
    --paths  the list of files
    --help   

```

## rewrite

```

usage: unctionjs rewrite [options]
    --help  

```

## stash-list

```

usage: unctionjs stash-list [options]
    --help  

```

## test

```

usage: unctionjs test [options]
    --help  

```

## update

```

usage: unctionjs update [options]
    --name    the name or pattern of a dependency
    --single  Use to completely force a single update
    --type    dependencies, devDependencies, peerDependencies, etc
    --help    

```

## update-cascading

```

usage: unctionjs update-cascading [options]
    --root  the root package you want to start with
    --help  

```

## version

```

usage: unctionjs version [options]
    --bump  the version bump type
    --help  

```

