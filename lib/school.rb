require 'pry'

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    if roster[grade]
      roster[grade]
    end
  end

  def sort
    sorted_roster = {}
    roster.each { |grade, names| sorted_roster[grade] = names.sort }
    sorted_roster
  end

end
