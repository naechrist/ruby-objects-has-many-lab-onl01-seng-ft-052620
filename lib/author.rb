class Author 
  attr_accessor :posts, :name
  
  def initialize(name)
    @name = name
    
    @posts = []
  end
  
  def posts 
    Post.all.select do |post|
      post.author == self
    end
  end
  
  def add_post(post)
    post.author = self 
  end
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end
  
  def self.post_count
    Post.all.size
  end
  
  def author_name 
    author_name = self.name
  end
end

