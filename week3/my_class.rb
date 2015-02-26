class Movie

  def set_title=(title)
    @title = title
  end

  def get_title
    return @title
  end

  def set_director=(director)
    @director = director
  end

  def get_director(director)
    return @director
  end

  def set_year=(year)
    @year = year
  end

  def get_year
    return @year
  end

  def description
    return "#{@title} was directed by #{@director} and released in #{@year}."
  end

end

my_movie = Movie.new
my_movie.set_title = "The Triplets of Belleville"
my_movie.set_director = "Sylvain Chomet"
my_movie.set_year = 2003

puts my_movie.description
