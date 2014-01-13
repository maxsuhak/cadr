class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :tree_id, :avatar_url, :sex, :birthday, :home_tel, :mobile_tel, :work_tel, :lenguage

  belongs_to :tree

  validates :email, presence: true, uniqueness: true,
          format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/,
                    message: 'The format of Email is invalid'}
  
  scope :unsorted, -> { where(tree_id: nil) }

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

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(email: data["email"]).first

    unless user
      user = User.new(
        first_name: data["first_name"],
        last_name: data["last_name"],
        email: data["email"],
        avatar_url: data["image"],
        password: Devise.friendly_token[0,20])
    end
    user
  end
end
