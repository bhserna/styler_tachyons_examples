class Example
  attr_reader :entry

  delegate :path_parts, to: :entry

  def self.all
    ExampleTemplate.all.map { |entry| new(entry) }
  end

  def initialize(entry)
    @entry = entry
  end

  def file_name
    path_parts[1]
  end

  def name
    if file_name.start_with?("_")
      file_name.sub("_", "").split(".").first
    else
      file_name.split(".").first
    end
  end

  def category_name
    path_parts.first
  end

  def path
    "examples/#{category_name}/#{name}.html"
  end

  def template_path
    "example_templates/#{category_name}/#{name}"
  end

  def code
    File.read("#{__dir__}/../source/example_templates/#{category_name}/_#{name}.html.erb")
  end
end
