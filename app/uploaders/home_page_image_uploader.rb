class HomePageImageUploader < Chronicler::ImageUploader

  version :show do
    process :resize_to_fit => [650,650]
  end

end
