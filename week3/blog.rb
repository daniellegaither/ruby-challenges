class Content

  def set_title=(title)
    @title = title
  end

  def get_title
    return @title
  end

  def set_body=(body)
    @body = body
  end

  def get_body
    return @body
  end

end

class Blog_post<Content

  @@post_collection = []

  def initialize(title, body)
    @time_created = Time.now
    @title = title
    @body = body
    @@post_collection << self
  end

  def get_time_created
    return @time_created
  end

  def set_author=(author)
    @author = author
  end

  def get_author
    return @author
  end

  def self.publish
    for post in @@post_collection
      puts "#{@title} by #{@author}\n#{@body}\nCreated: #{@time_created}"
    end
  end

end

class Page<Content

  def set_section=(section)
    @section = section
  end

  def get_section
    return @section
  end

end

first_post = Blog_post.new("First post", "This is our first post")
#first_post.set_author("Danielle Gaither")
second_post = Blog_post.new("Second post", "This is our second post")
#second_post.set_author("Grasshopper Jenkins")
posts = Hash.new
posts.store(first_post.get_title, first_post.get_body)
posts.store(second_post.get_title, second_post.get_body)
Blog_post.publish
