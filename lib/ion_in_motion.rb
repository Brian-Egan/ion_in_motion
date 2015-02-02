unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require 'motion-cocoapods'
# require 'ion'

Motion::Project::App.setup do |app|

  if Dir.exists?("vendor/Pods/ionicons")
    unless File.exists?("vendor/Pods/ionicons/ionicons/README.md")
      File.open("vendor/Pods/ionicons/ionicons/README.md", 'w') {|f| f.write(SetupIon.readme_text)}
    end
  end

  Dir.glob(File.join(File.dirname(__FILE__), 'ion/*.rb')).each do |file|
    app.files.unshift(file)

  end


  app.pods do
    pod "ionicons"
  end

end