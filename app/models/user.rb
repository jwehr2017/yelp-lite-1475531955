class User < ApplicationRecord
  # Direct associations

  has_many   :ratings,
             :class_name => "Review",
             :dependent => :destroy

  # Indirect associations

  has_many   :restaurants,
             :through => :ratings,
             :source => :restaurant

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
