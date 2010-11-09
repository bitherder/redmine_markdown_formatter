Redmine Markdown Formatter
==========================

This is a redmine plugin for supporting Markdown as a wiki format.

What is redmine?
----------------

Redmine is a flexible project management web application.
See [the official site](http://www.redmine.org) for more details.


What is Markdown?
-----------------

Markdown is a text-to-HTML conversion tool for web writers. Markdown allows
you to write using an easy-to-read, easy-to-write plain text format, then
convert it to structurally valid XHTML (or HTML).

See [the article on John Gruber's blog](http://daringfireball.net/projects/markdown/)
for more details.


Plugin installation
-------------------

### Prerequisites

* Redmine and its prerequisites
*  [rdiscount](http://tomayko.com/writings/ruby-markdown-libraries-real-cheap-for-you-two-for-price-of-one) gem

### Installation

1. Copy the plugin directory into the vendor/plugins directory
2. Start Redmine

Installed plugins are listed on 'Admin -> Information' screen.

Don't forget to change "Text formatting" option under
Administration -> Settings -> General tab.

### Credits
* [Yuki Sonoda](http://github.com/yugui) did the real work by creating the
  redmine_rd_formatter
* Jean-Philippe Lang for making the change to Redmine (based on Yuki's patch) to
  allow pluggable formatters

### Future Plans
* make the blockquote and unblockquote work for list items to indent
  and un-indent.  Current behavior is kind of confusing.
