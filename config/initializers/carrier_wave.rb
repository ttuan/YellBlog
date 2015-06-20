if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
        # Configuration for Amazon S3
        :provider              => 'AWS',
        :aws_access_key_id     => 'AKIAIZIETY2PRS4TYXWQ',
        :aws_secret_access_key => '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',
        :region                => 'ap-southeast-1',
        :path_style            => true
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end