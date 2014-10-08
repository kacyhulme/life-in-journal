class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :email, presence: true,
  format: /\A\S+@\S+\z/,
  uniqueness: { case_sensitive: false }
end
