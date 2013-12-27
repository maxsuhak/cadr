class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :tree_id, :avatar_url, :sex, :birthday, :home_tel, :mobile_tel, :work_tel, :lenguage

  def full_name
    if self.first_name.present? && self.last_name.present?
      (self.first_name + ' ' + self.last_name).upcase
    elsif self.first_name.present?
      (self.first_name).upcase
    elsif self.last_name.present?
      (self.last_name).upcase
    else
      (self.email).upcase
    end
  end

end
