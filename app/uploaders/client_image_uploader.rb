class ClientImageUploader < Chronicler::ImageUploader

  version :index do
    process :resize_to_fill => [600,400]
  end
  
  version :thumbnail do
    process :resize_to_fill => [160,160]
  end
  
  version :lightbox do
    process :resize_to_fit => [800,600]
  end

end
