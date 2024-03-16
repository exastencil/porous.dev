# frozen_string_literal: true

# Porous Core
require 'porous'

# Serve static files
require 'porous/extension/static'
puts 'Serving static files from `static`…' if Porous::Extension.loaded? 'Static'

# Load application-specific code (once)
Dir.glob File.join(__dir__, '{components,pages}', '**', '*.rb'), &method(:require)

# Server-side rendering
run Porous::Application.new
