module RedmineMarkdownFormatter
  module Helper
    unloadable

    def wikitoolbar_for(field_id)
      heads_for_wiki_formatter

      url = Redmine::Utils.relative_url_root + 
            Engines::RailsExtensions::AssetHelpers.plugin_asset_path('redmine_markdown_formatter', 'help', 'markdown_syntax.html')

      help_link = l(:setting_text_formatting) + ': ' +
                  link_to(l(:label_help), url,
                  :onclick => "window.open(\"#{url}\", \"\", \"resizable=yes, location=no, width=300, height=640, menubar=no, status=no, scrollbars=yes\"); return false;")

      javascript_tag("var wikiToolbar = new jsToolBar($('#{field_id}')); wikiToolbar.setHelpLink('#{escape_javascript help_link}'); wikiToolbar.draw();")
    end


    def initial_page_content(page)
      "#{page.pretty_title}\n#{'='*page.pretty_title.length}"
    end

    def heads_for_wiki_formatter
      unless @heads_for_wiki_formatter_included
        content_for :header_tags do
          javascript_include_tag('jstoolbar/jstoolbar') +
          javascript_include_tag('markdown', :plugin => 'redmine_markdown_formatter') +
          # javascript_include_tag("lang/markdown-#{current_language}", :plugin => 'redmine_markdown_formatter') +
          javascript_include_tag("jstoolbar/lang/jstoolbar-#{current_language.to_s.downcase}") +
          stylesheet_link_tag('jstoolbar')
        end
        @heads_for_wiki_formatter_included = true
      end
    end
  end
end
