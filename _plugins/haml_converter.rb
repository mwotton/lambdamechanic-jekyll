module Jekyll
  require 'haml'
  class HamlConverter < Converter
    safe false
    priority :low

    def matches(ext)
      ext =~ /haml/i
    end

    def output_ext(ext)
      ".html"
    end

    def initialize(data)
      raise data.inspect
    end
    
    def convert(content)
      raise @data.inspect
      engine = Haml::Engine.new(content)
      engine.render
    end
  end
end
