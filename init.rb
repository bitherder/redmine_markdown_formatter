# Redmine Markdown formatter
require 'redmine'

RAILS_DEFAULT_LOGGER.info 'Starting Markdown formatter for RedMine'

Redmine::Plugin.register :redmine_markdown_formatter do
  name 'Markdown formatter'
  author 'Larry Baltz'
  description 'This provides Markdown as a wiki format'
  version '0.0.1'

  wiki_format_provider 'markdown', RedmineMarkdownFormatter::WikiFormatter, RedmineMarkdownFormatter::Helper
end
