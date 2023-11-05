require 'json'

def read_file(file)
  return [] if !File.exist?(file) || File.empty?(file)

  file_data = File.read(file)
  lines = file_data.split("\n")

  result = []
  lines.each do |line|
    parsed_object = JSON.parse(line)
    result << parsed_object if parsed_object.is_a?(Hash)
  end

  result
end
