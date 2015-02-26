class Blog
  
  attr_accessor :title, :all_blog_posts, :total_blog_posts

  def initialize
    @all_blog_posts = []
    @post_count = 0
  end

  def create_blog_post
    new_blog_post = Blog_Post.new
    @all_blog_posts << new_blog_post
    @post_count += 1
  end

  def collect_blog_posts
    return @all_blog_posts
  end

  def publish(posts, order = -1) # default sorting order: none
    if order == 0 # sort ascending
      posts.sort! { |a,b| a.created_at <=> b.created_at }
    elsif order == 1 # sort descending
      posts.sort! { |a,b| b.created_at <=> a.created_at }
    end
    posts.each do |post|
      puts post.title
      puts "Created at: #{post.created_at}"
      puts post.content
    end
  end

end

class Blog_Post
  attr_accessor :title, :created_at, :content

  def initialize
    @created_at = Time.now
    puts "Name your blog post:"
    @title = gets.chomp

    puts "Your blog post content:"
    @content = gets.chomp
  end

  def edit_blog_content
    puts "New blog title:"
    @title = gets.chomp

    puts "New blog text:"
    @content = gets.chomp
  end
end

my_blog = Blog.new
first_blog_post = my_blog.create_blog_post
second_blog_post = my_blog.create_blog_post
all_blog_posts = my_blog.collect_blog_posts
puts my_blog.inspect
my_blog.publish(all_blog_posts, 1)
