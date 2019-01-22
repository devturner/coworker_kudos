class User < ApplicationRecord
  has_many  :sender, 
            class_name: 'Kudo',
            foreign_key: 'sender_id'

  has_many  :receiver, 
            class_name: 'Kudo',
            foreign_key: 'receiver_id'
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
