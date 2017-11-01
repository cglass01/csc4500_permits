class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :vehicle, class_name: 'User'
  has_one :permit, class_name: 'User'
  has_one :faculty, class_name: 'User'
  has_one :emergency_contact, class_name: 'User'
  has_one :student, class_name: 'User'

  def admin?
  	roles == "admin"
  end

  def editor?
  	roles == "editor"
  end

  def standard?
  	roles == "standard"
  end

end
