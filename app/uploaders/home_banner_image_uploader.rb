class HomeBannerImageUploader < Chronicler::ImageUploader

  version :show do
    process :resize_to_fill => [1020,340]
  end

end
