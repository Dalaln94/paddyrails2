class Category < ActiveRecord::Base
  has_many :restaurants, :dependent => :destroy
  has_many :caterings, :dependent => :destroy
end
