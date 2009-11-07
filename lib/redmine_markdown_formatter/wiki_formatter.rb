require 'rdiscount'

module RedmineMarkdownFormatter
  class WikiFormatter
    def initialize(text)
      @text = text
    end

    def to_html(&block)
      html = RDiscount.new(@text, :smart).to_html
      html.gsub(/<a\s/, "<a class='external'") # Add the `external` class to every link
    rescue => e
      return("<pre>problem parsing wiki text: #{e.message}\n"+
             "original text: \n"+
             @text+
             "</pre>")
    end
  end
end
