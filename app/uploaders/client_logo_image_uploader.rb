class ClientLogoImageUploader < Chronicler::ImageUploader

  version :index do
    process :resize_and_pad => [200,100]
  end
  
end
