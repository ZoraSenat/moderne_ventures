class Contact < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :source,
             :required => false

  belongs_to :company,
             :required => false

  has_many   :programs,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
