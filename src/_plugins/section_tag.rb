module Jekyll
  class SectionTag < Liquid::Block
    include Liquid::StandardFilters

    def initialize(tag_name, opts, tokens)
      super
      options = /id=\"(.+)\" title=\"(.+)\"/.match opts
      @id = options[1]
      @text = options[2]
      # @text = text
    end

    def render(context)
      text = super
      site = context.registers[:site]
      converter = site.getConverterImpl(Jekyll::Converters::Markdown)
      "<div class='document-content-section'><div class='bs-docs-section'><div id='#{@id}' class='page-header'><h1>#{@text}</h1></div>#{converter.convert(text)}</div></div>"
    end
  end
end

Liquid::Template.register_tag('section', Jekyll::SectionTag)