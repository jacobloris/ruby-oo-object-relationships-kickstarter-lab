require "pry"
class Backer
    attr_accessor :project, :backed_projects
    attr_reader :name
    attr_writer

    @@all = []

    def initialize(name)
        @name = name
        @project = project
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        bp = ProjectBacker.all.select {|pb| pb.backer == self}
        bp.map {|x| x.project}
    end

end
