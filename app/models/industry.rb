class Industry < ApplicationRecord
  # Direct associations

  has_many   :companies,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
