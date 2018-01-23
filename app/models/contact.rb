class Contact < ApplicationRecord
  # Direct associations

  has_many   :programs,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
