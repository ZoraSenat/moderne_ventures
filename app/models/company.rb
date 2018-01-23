class Company < ApplicationRecord
  # Direct associations

  belongs_to :industry,
             :required => false

  has_many   :contacts,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
