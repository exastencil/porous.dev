# frozen_string_literal: true

require 'rubygems'
require 'bundler'
Bundler.setup
Bundler.require

# Serve static files
require 'rack/static'

# Load application-specific code
Dir.glob File.join(__dir__, '{components,pages}', '**', '*.rb'), &method(:require)

# Server-side rendering
run Porous::Application.new
