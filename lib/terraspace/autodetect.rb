module Terraspace
  class Autodetect
    def plugin
      plugins = Terraspace::Plugin.meta.keys
      if plugins.size == 1
        plugins.first
      else
        precedence = %w[aws azurerm google]
        precedence.find do |p|
          plugins.include?(p)
        end
      end
    end
  end
end
