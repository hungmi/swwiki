class List < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :sublists, class_name: "List",
                          foreign_key: "parent_list_id", dependent: :destroy
 
  belongs_to :parent_list, class_name: "List"
  accepts_nested_attributes_for :sublists, reject_if: :all_blank, allow_destroy: true  
end
