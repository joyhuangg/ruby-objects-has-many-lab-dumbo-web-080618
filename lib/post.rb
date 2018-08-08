class Post
  attr_accessor :author, :title
  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def author_name
    if author != nil
      return author.name
    end
  end

end
