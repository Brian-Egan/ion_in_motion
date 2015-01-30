unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require 'motion-cocoapods'

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'atm/*.rb')).each do |file|
    app.files.unshift(file)

  end

  Dir.glob(File.join(File.dirname(__FILE__), 'ion/*.rb')).each do |file|
    app.files.unshift(file)

  end

  app.pods do
    pod "ionicons"
  end

end