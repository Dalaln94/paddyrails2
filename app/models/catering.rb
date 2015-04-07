class Catering < ActiveRecord::Base
  belongs_to :category
  
  def self.search(query, category_id, manufacturer)
  	conditions = {}
	conditions[:category_id] = category_id unless category_id.blank?
	conditions[:manufacturer] = manufacturer unless manufacturer.blank?
	where(conditions).
    where("name like ?", "%#{query}%")
    
  end
end
