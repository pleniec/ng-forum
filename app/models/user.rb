class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, uniqueness: true
  validates :role, presence: true, inclusion: {in: [Roles::Anonymous::ID,
                                                    Roles::Regular::ID,
                                                    Roles::Moderator::ID,
                                                    Roles::Admin::ID]}
end
