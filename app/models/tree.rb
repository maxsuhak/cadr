class Tree < ActiveRecord::Base
  attr_accessible :desc, :title

  has_many :subgroup, class_name: 'Tree', inverse_of: :parent, dependent: :delete_all, foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'Tree', inverse_of: :subgroup, foreign_key: 'parent_id'
end
