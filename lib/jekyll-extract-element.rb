# frozen_string_literal: true

require "nokogiri"

module JekyllExtract
  def self.run(html, element)
    entries = []
    @doc = Nokogiri::HTML::DocumentFragment.parse(html)

    @doc.css(element).each do |node|
      entries << {
        "text"      => node.text,
        "node_name" => node.name,
        "id"        => node.attr("id"),
      }
    end

    entries
  end
end

module JekyllExtractTag
  def extract_element(html, element)
    JekyllExtract.run(html, element)
  end
end

Liquid::Template.register_filter(JekyllExtractTag) unless ENV["RAKE_ENV"] == "test"
