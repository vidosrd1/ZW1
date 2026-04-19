require_relative "config/application"

# Define assets:precompile task before loading Rails tasks
require 'fileutils'

namespace :assets do
  desc "Precompile assets"
  task :precompile => :environment do
    # Create the builds directory if it doesn't exist
    FileUtils.mkdir_p(Rails.root.join("app/assets/builds"))

    # Run npm build to ensure CSS is built
    puts "Building CSS assets..."
    system("npm run build:css") || raise("Failed to build CSS assets")

    puts "Asset precompilation completed."
  end

  desc "Clean compiled assets"
  task :clean => :environment do
    puts "Cleaning assets..."
    FileUtils.rm_rf(Rails.root.join("app/assets/builds"))
    puts "Assets cleaned."
  end

  # Define a clobber task to fully remove all compiled assets
  desc "Remove compiled assets"
  task :clobber => :clean
end

# frozen_string_literal: true

desc "Run the app"
task :run do
  ruby "bin/run"
end

desc "Default task"
task default: :run

# Load standard Rails tasks
Rails.application.load_tasks
