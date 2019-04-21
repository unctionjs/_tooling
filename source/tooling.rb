require "oj"
require "json"
require "slop"
require "concurrent"
require "memoist"
require "pry"
require "slop"
require "highline"

module Tooling
  require_relative "tooling/context"
  require_relative "tooling/package"

  def self.interface
    @interface ||= HighLine.new
  end

  def self.logger(text)
    STDOUT.puts(text)
  end

  def self.options
    @options
  end

  def self.command(description = nil, &configuration)
    @options ||= Slop.parse do |let|
      let.banner = if description
        ["description: #{description}", let.banner.gsub("bin/tooling-", "tooling ")].compact.join("\n")
      else
        let.banner.gsub("bin/tooling-", "tooling ")
      end
      instance_exec(let, &configuration) if block_given?
      let.on "--help" do
        puts let
        exit
      end
    end
  end
end
