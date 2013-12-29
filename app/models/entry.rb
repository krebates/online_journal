class Entry < ActiveRecord::Base

validates_presence_of :title
validates_presence_of :post

belongs_to :category



end
