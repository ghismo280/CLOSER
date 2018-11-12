class ImgmessageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
