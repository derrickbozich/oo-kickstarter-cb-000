class Project
  attr_accessor :title

  @@backers = []

  def self.all
    @@backers
  end

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    self.all.push(backer)
  end

end
