require 'pry'
class ProjectBacker
    attr_accessor 
    attr_reader :project, :backer
    attr_writer
    
    @@all = []
    
    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end
    
    def self.all
        @@all
    end
end