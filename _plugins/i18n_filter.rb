require 'i18n'

# Create folder "_locales" and put some locale file from https://github.com/svenfuchs/rails-i18n/tree/master/rails/locale
module Jekyll
  module I18nFilter
    # Example:
    #   {{ post.date | localize: "%d.%m.%Y" }}
    #   {{ post.date | localize: ":short" }}
    def localize(input, format=nil)
      I18n.load_path += Dir[File.join(File.dirname(__FILE__),'../_locales/*.yml')]
      I18n.locale = @context.registers[:site].config['locale']
      format = (format =~ /^:(\w+)/) ? $1.to_sym : format
      I18n.l input, :format => format
    rescue
      "error"
    end

    def translate(input)
        I18n.load_path += Dir[File.join(File.dirname(__FILE__),'../_locales/*.yml')]
        I18n.locale = @context.registers[:site].config['locale']
        I18n.t input
    end
  end
end

Liquid::Template.register_filter(Jekyll::I18nFilter)
