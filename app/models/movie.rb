class Movie < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :year
  validates_presence_of :synopsis


end