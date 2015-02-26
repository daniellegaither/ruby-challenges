class Movie

  attr_accessor :title, :director, :year

  def description
    return "#{@title} was directed by #{@director} and released in #{@year}."
  end

end

my_movie = Movie.new
my_movie.title = "The Triplets of Belleville"
my_movie.director = "Sylvain Chomet"
my_movie.year = 2003

puts my_movie.description
