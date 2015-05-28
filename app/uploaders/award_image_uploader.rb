class AwardImageUploader < Chronicler::ImageUploader

  version :show do
    process :resize_and_pad => [200,200]
  end
  
  version :footer do
    process :resize_to_fit => [200, 80]
  end

end
