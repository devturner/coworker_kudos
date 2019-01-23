class Kudo < ApplicationRecord
  belongs_to    :sender, 
                class_name: "User"

  belongs_to    :receiver, 
                class_name: "User"

  validates :message, presence: true

end
