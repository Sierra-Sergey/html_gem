def create_html(content, bypass_html = false, file_name = 'index.html')
  content.gsub!(/[<>]/, '') if bypass_html == false

  File.open("#{Dir.pwd}/#{file_name}", 'w') do |file|
    file.write(content)
  end
end

def open
  system("xdg-open #{Dir.pwd}/#{file_name}")
end
