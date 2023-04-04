pub contract MoviesContract {
    pub var Movies: {String: Movie}
    
    pub struct Movie {
        pub let Title: String
        pub let Year: Int
        pub let Genre: String
        pub let Director: String

        init(_Title: String, _Year: Int, _Genre: String, _Director: String) {
            self.Title = _Title
            self.Year = _Year
            self.Genre = _Genre
            self.Director = _Director
        }
    }
    
    pub fun addMovie(Title: String, Year: Int, Genre: String, Director: String) {
        let newMovie = Movie(_Title: Title, _Year: Year, _Genre: Genre, _Director: Director)
        self.Movies[Title] = newMovie
    }
    
    init() {
        self.Movies = {}
    }
}
