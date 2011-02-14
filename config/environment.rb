# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Myworld::Application.initialize!

Sass::Plugin.options[:template_location] = './apps/sass'