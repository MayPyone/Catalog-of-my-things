require 'json'
def write(data, file)
  File.new(file, 'w') unless File.exist?(file)
  File.open(file, 'a') do |f|
    f.puts(data.to_json)
  end
end
