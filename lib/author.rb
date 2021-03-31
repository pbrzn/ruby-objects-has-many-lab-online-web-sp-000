class Author
  attr_accessor :name

  def initialize(name)
    @name=name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(post)
    post.author=self
    @posts << post
  end
  
  def add_post_by_title(post_title)
    post_title=Post.new(post_title)
    post_title.author=self
    @posts << post_title
  end
  
  def self.post_count
    counter=0
    @posts.each {|post| counter+=1}
    counter
  end
end