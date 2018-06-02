class Backer
  attr_accessor :name

  @@backed_projects = []

  def initialize(name)
    @name = name
  end

  def backed_projects
    @@backed_projects
  end

  def back_project(project)
    
    @@backed_projects << project
    project.backers.push(self)
  end

end

class Project
  attr_accessor :title

  @@backers = []

  def backers
    @@backers
  end

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    @@backers.push(backer)
  end

end

monopoly_man = Backer.new("Monopoly Man")
stackables = Project.new("Stackables")
monopoly_man.back_project(stackables)
