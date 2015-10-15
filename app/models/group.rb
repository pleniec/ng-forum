class Group < ActiveRecord::Base
  has_many :categories

  validates :name, presence: true, uniqueness: true
  validates :glyphicon, presence: true, inclusion: {in: BootstrapHelper::GLYPHICONS}
end
