module Jekyll
  class NoteTag < Liquid::Block
    include Liquid::StandardFilters

    def initialize(tag_name, opts, tokens)
      super
      options = opts.split(',')
      @type = options[0]
      @title = options[1]
      # @text = text
    end

    def render(context)
      text = super
      site = context.registers[:site]
      converter = site.getConverterImpl(Jekyll::Converters::Markdown)

      "<div class='bs-callout bs-callout-#{@type}' id='jquery-required'><h4>#{@title}</h4><p>#{converter.convert(text)}</p></div>"
    end
  end
end

Liquid::Template.register_tag('note', Jekyll::NoteTag)