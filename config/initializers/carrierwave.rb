require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage :fog
  config.fog_provider = 'fog/aws'
  config.fog_directory  = 'sanpaitool2'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: ENV['AWS_DEFAULT_REGION'],
    path_style: true
  }
end

CarrierWave.configure do |config|
  if Rails.env.production?
          config.storage = :fog # キャッシュにS3を指定
      config.fog_credentials = {
          :provider              => 'AWS',
          :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
          :aws_secret_access_key => ENV['S3_SECRET_KEY'],
          :region                => ENV['S3_REGION'],
      }

      config.fog_directory = ENV['sanpaitool2']
      config.asset_host = "https://s3.amazonaws.com/#{ENV['sanpaitool2']}"


  else
      config.storage = :file
      config.fog_directory  = ENV['sanpaitool2']
      config.asset_host = "https://s3.amazonaws.com/#{ENV['sanpaitool2']}"
  end
end