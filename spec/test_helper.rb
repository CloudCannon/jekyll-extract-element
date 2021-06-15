# frozen_string_literal: true

ENV["RAKE_ENV"] = "test"

require_relative "../lib/jekyll-extract-element"
require "minitest/spec"
require "minitest/autorun"
require "json"
require "hashdiff"
require "minitest/reporters"
Minitest::Reporters.use!
