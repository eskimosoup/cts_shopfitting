class PageImageUploader < Chronicler::ImageUploader

  version :show do
    process :resize_to_fit => [600, 2000]
  end

end
