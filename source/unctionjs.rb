require "oj"
require "json"
require "slop"
require "concurrent"
require "memoist"
require "pry"
require "slop"
require "highline"

module Unctionjs
  require_relative "unctionjs/package"
  require_relative "unctionjs/context"

  def self.interface
    @interface ||= HighLine.new
  end

  def self.options
    @options
  end

  def self.command(description = "", &configuration)
    @options ||= Slop.parse do |let|
      let.banner = if description
        ["description: #{description}", let.banner.gsub("bin/unctionjs-", "unctionjs ")].compact.join("\n")
      else
        let.banner.gsub("bin/unctionjs-", "unctionjs ")
      end
      instance_exec(let, &configuration) if block_given?
      let.on "--help" do
        puts let
        exit
      end
    end
  end
end
