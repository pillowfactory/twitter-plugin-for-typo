require 'fileutils'

spinner_src = File.join(File.dirname(__FILE__), 'assets', 'spinner.gif')
css_src = File.join(File.dirname(__FILE__), 'assets')

def copy_asset(file_name, dest_dir)
    FileUtils.copy( File.join(File.dirname(__FILE__), 'assets', file_name), (dest = File.join(dest_dir, file_name)))
    puts "  copied #{file_name} to #{dest}"
end

puts "\nCopying Assets..."
copy_asset('twitter-spinner.gif', File.join(RAILS_ROOT, 'public', 'images'))
copy_asset('twitter-sidebar.css', File.join(RAILS_ROOT, 'public', 'stylesheets'))
copy_asset('twitter-1.11.1.min.js', File.join(RAILS_ROOT, 'public', 'javascripts'))
puts

puts IO.read(File.join(File.dirname(__FILE__), 'README'))