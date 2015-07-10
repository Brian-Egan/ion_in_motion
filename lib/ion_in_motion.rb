unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require 'motion-cocoapods'

load 'setup/setup.rb'
# require 'ionicons'
# require 'ion'

Motion::Project::App.setup do |app|


  app.pods do
    pod "ionicons"
  end

  if Dir.exists?("vendor/Pods/ionicons")
    unless File.exists?("vendor/Pods/ionicons/ionicons/README.md")
      readme_text = Object.const_defined?('SetupIon') ? SetupIon.readme_text : "readme"
      File.open("vendor/Pods/ionicons/ionicons/README.md", 'w') {|f| f.write(readme_text)}
      # File.open("vendor/Pods/ionicons/ionicons/README.md", 'w') {|f| f.write(SetupIon.readme_text)}
    end
  end

  app.fonts = ["ionicons.ttf"]

  Dir.glob(File.join(File.dirname(__FILE__), 'ion/*.rb')).each do |file|
    app.files.unshift(file)

  end


   app.resources_dirs << File.join(File.dirname(__FILE__), 'resources')




end