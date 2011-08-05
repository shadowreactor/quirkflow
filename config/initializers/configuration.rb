begin
  CONFIG = YAML::load(File.open(Rails.root.join('config','app.yml'))).to_hash
rescue
  raise 'Unable to load application configuration (config/app.yml)'
end

Payday::Config.default.invoice_logo    = CONFIG['invoice_logo']
Payday::Config.default.company_name    = CONFIG['company_name']
Payday::Config.default.company_details = CONFIG['company_details']