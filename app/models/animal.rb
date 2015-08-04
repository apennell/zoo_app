class Animal < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: "100x100#", small: "200x200#", med: "500x500#", large: "800x800#" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :exhibit
end
