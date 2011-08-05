begin
  CONFIG = YAML::load(File.open(Rails.root.join('config','app.yml'))).to_hash
rescue
  raise 'Unable to load application configuration (config/app.yml)'
end