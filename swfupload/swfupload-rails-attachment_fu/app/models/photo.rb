class Photo < ActiveRecord::Base
  has_attachment :content_type => :image,
                 :storage => :file_system,
                 :processor => :image_science,
                 :size => 500..3.megabytes,
                 :resize_to => '800x800>',
                 :thumbnails => { :medium => '600x600>', :thumb => '100x100>' }

  validates_as_attachment
end
