class ArticleImageUploader < Chronicler::ImageUploader

  version :index do
    process :resize_and_pad => [200,200]
  end
  
  version :show do
    process :resize_to_fit => [600,600]
  end

  version :home do
    process :resize_to_fill => [350,430]
  end

end
