require './app'
# Compass Configuration

require 'bootstrap-sass'

# Configuration to use when running within Sinatra
project_path = Sinatra::Application.root    

# HTTP paths
http_path = '/'
http_stylesheets_path = '/stylesheets'
http_images_path = '/images'
http_java_scripts_path = '/javascripts'

# File system locations
css_dir = File.join 'public', 'stylesheets'
sass_dir = File.join 'precompiled-assets', 'sass'
images_dir = File.join 'public', 'images'
javascripts_dir = File.join 'public', 'javascripts'

# You can select your preferred output style here (can be overridden via the command line):
output_style = :expanded 

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = false

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
preferred_syntax = :sass
