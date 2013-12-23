class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :telephone, :tree_id

  def full_name
    if self.first_name.present? && self.last_name.present?
      self.first_name + ' ' + self.last_name
    elsif self.first_name.present?
      self.first_name
    elsif self.last_name.present?
      self.last_name
    else
      self.email
    end
  end

end
