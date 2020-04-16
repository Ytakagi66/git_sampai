if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AKIATUVAVRMJ75R4N3FK'],
      aws_secret_access_key: ENV['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'],
      region: 'ap-northeast-1'
    }
    config.fog_directory  = 'sanpaitool'
  end
end