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
    backer.backed_projects.push(self)
  end

end
