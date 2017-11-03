class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :vehicle
  has_one :permit
  has_one :faculty
  has_one :emergency_contact
  has_one :student


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
