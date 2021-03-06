CarrierWave.configure do |config|
  
  # require 'carrierwave/orm/activerecord'
  
  config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV["aws_access_key_id"],        # required
      aws_secret_access_key: ENV["aws_secret_access_key"],        # required
      aws_region:            ENV["aws_region"]
    }
    config.fog_directory  = ENV["aws_bucket"]              # required
  end