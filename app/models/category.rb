class Category < ActiveRecord::Base
  belongs_to :group

  validates :group, presence: true
  validates :name, presence: true, uniqueness: {scope: :group}
end
