module Jekyll
  class PageHeaderTag < Liquid::Tag
    include Liquid::StandardFilters

    def initialize(tag_name, opts, tokens)
      super
      options = /id=\"(.+)\" title=\"(.+)\"/.match opts
      @id = options[1]
      @text = options[2]
    end

    def render(context)
      "<div class='bs-docs-section'><div id='#{@id}' class='page-header'><h1>#{@text}</h1></div></div>"
    end
  end
end

Liquid::Template.register_tag('page_header', Jekyll::PageHeaderTag)