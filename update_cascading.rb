`ruby update.rb --scope=match --match=@unction/.+ && ruby add.rb --paths="package.json package-lock.json" && ruby commit.rb --message="Cascading upgrade" && ruby version.rb --bump=minor && ruby publish.rb`
