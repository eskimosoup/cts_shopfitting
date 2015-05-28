class HomeFeatureImageUploader < Chronicler::ImageUploader

  version :show do
    process :resize_to_fill => [350,430]
  end

end
