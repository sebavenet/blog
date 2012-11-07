class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tags_attributes, :theme_attributes, :theme_id
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  has_many :comments, :dependent => :destroy
  has_many :tags
  belongs_to :theme

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
