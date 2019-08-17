class Author 
  attr_accessor :name, :posts
  
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
    add_post(posts)
  end
end  