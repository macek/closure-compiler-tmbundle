require 'net/http'
require 'uri'
require 'json'

def compile
  # get data
  data = JSON::parse(
    Net::HTTP.post_form(
      URI.parse("http://closure-compiler.appspot.com/compile"),
      {
        :js_code => STDIN.read,
        :compilation_level => ENV['TM_CLOSURE_COMPILATION_LEVEL'] || 'SIMPLE_OPTIMIZATIONS',
        :output_info => ["compiled_code","statistics"],
        :output_format => "json"
      }
    )
    .body
  )
  
  # tooltip
  stats = data['statistics']
  %x{ "$DIALOG" tooltip --text "Input: #{stats['originalSize']} bytes\nOutput: #{stats['compressedSize']} bytes\nCompression: #{"%0.2f%%" % (stats['compressedSize']*100.0/stats['originalSize'])}" }
  
  # return
  data["compiledCode"]
end
