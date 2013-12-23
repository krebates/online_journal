require 'spec_helper'

class Category < ActiveRecord::Base

validates_uniqueness_of :type
validates_presence_of :type
has_many :entries

end
