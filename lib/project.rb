require 'pry'
class Project
    attr_accessor :backer
    attr_reader :title
    attr_writer
    
    @@all = []
    
    def initialize(title)
        @title = title
        @backer = backer
        @@all << self
    end
    
    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        bp = ProjectBacker.all.select {|pb| pb.project == self}
        bp.map {|x| x.backer}
    end
end
