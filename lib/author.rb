require 'pry'
class Author

  attr_accessor :name
  @@all = []

  def self.all
    @all
  end

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end


  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    posts << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    posts << post
  end

  def self.post_count
    @@all.count {|author| !author.posts.empty?}
  end
end
