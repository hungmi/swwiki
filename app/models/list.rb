class List < ActiveRecord::Base
  has_many :sublists, class_name: "List",
                          foreign_key: "parent_list_id"
 
  belongs_to :parent_list, class_name: "List"
end
