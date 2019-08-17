class Author 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end  

  def self.all
    @@all
  end  

 def add_post(posts)
    posts.author = self
  end
 
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = new
  end
  
  def self.post_count
    Post.all.count
  end  
end  