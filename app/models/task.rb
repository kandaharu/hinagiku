# -*- encoding: UTF-8 -*-

class Task < ActiveRecord::Base
  scope :done, where(:done => true).order("due_date DESC")
  scope :undone, where(:done => false).order("due_date")
  scope :search, lambda { |query|
    where([ "name LIKE ?", "%#{query}%" ])
  }

  validates :name, :presence => true, :length => { :maximum => 20 }
  validates :description, :length => { :maximum => 200 }
end
