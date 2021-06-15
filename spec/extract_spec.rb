# frozen_string_literal: true

require_relative "./test_helper"

describe JekyllExtract do
  it "should extract headers" do
    input_html = <<~HTML.chomp
      <h1>Title</h1>
      <h2>Subtitle</h2>
      <p>Content</p>
      <h2 id="two">Second subtitle</h2>
    HTML
    expected_output = [
      {
        "text"      => "Subtitle",
        "node_name" => "h2",
        "id"        => nil,
      },
      {
        "text"      => "Second subtitle",
        "node_name" => "h2",
        "id"        => "two",
      },
    ]

    actual_output = JekyllExtract.run(input_html, "h2")
    diff = Hashdiff.diff(expected_output, actual_output)
    expect(diff).must_equal []
  end

  make_my_diffs_pretty!
end
