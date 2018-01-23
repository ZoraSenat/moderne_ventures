class Contact < ApplicationRecord
  # Direct associations

  belongs_to :company,
             :required => false

  has_many   :programs,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
