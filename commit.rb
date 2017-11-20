require_relative "./metadata"
require "slop"

options = Slop.parse do |let|
  let.string "--message", "the commit message"
  let.bool "--amend", "if this is rewriting a previous commit"
end

if options["message"]
  message = options["message"]
else
  puts "Message: "
  message = gets
end

if options["amend"]
  amend = options["amend"]
# else
#   puts "Amend? "
#   amend = gets.chomp == "yes"
end

each_package do |name|
  if amend
    system "cd ../#{name}; git commit --amend -m \"#{message}\""
  else
    system "cd ../#{name}; git commit -m \"#{message}\"" unless `git diff`.chomp == ""
  end
end
