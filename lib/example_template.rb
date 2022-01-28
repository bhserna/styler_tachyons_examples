class ExampleTemplate
  TEMPLATES_PATH = "source/example_templates/"

  def self.dir_path
    File.join(TEMPLATES_PATH, "**", "*")
  end

  def self.all
    Dir.glob(dir_path).map { |path| new(path) }.select(&:file?)
  end

  def initialize(path)
    @path = path
  end

  def file?
    File.file? @path
  end

  def path_parts
    @path.dup.gsub(TEMPLATES_PATH, "").split("/")
  end
end
