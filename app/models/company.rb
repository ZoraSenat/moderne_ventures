class Company < ApplicationRecord
  # Direct associations

  has_many   :contacts,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
