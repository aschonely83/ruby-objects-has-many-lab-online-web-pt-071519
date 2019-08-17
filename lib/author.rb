class Author 
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end  

 def add_post(posts)
    posts.author = self
  end
 
  def posts
    Post.all.select {|post| post.author == self}
  end
  
    def add__post_by_title(title)
    post = Post.new(title)
    post.author = new
  end
  
  def self.post_count
    Post.all.count
  end  
end  