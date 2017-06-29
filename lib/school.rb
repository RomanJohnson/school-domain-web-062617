
require 'pry'
class School

attr_accessor :roster, :name, :grade

    def initialize(name)
      @name = name
      @roster = {}
    end


    def add_student(name, grade)
      @roster[grade] ||= []
      @roster[grade] << name
    end

    def grade(grade)
      @roster[grade]
    end

      def sort
        Hash[@roster.sort.map { |a,b| [a, b.sort] }]
      #  @roster.each do |key, value|

        # @roster[key].sort
        # end
        # @roster.sort_by {|key, value| key}.to_h
        # @roster.sort_by {|key, value| value}.to_h
    end
end
