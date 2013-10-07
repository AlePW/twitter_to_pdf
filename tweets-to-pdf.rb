#! /usr/bin/env ruby

require "date"
require "erb"
require "faker"

require_relative "config/initializers/pdfkit"


title = "Tweets from RubyConf Argentina #{Date.today.year}"
tweets = (1..10).map { Faker::Lorem.sentence }

template = ERB.new(File.read("views/tweets.erb"))
html = template.result(binding)
# File.open("tweets.html", "w") { |f| f.write(html) }

kit = PDFKit.new(html, header_html: "views/header.html")
kit.stylesheets << "assets/stylesheets/foundation.min.css"

File.open("tweets.pdf", "w") { |f| f.write(kit.to_pdf) }
