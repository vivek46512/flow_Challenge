import MoviesContract from 0x01

transaction(Title: String, Year: Int, Genre: String, Director: String) {

  prepare(signer: AuthAccount) {}

  execute {
    MoviesContract.addMovie(Title: Title, Year: Year, Genre: Genre, Director: Director)
    log("Movie added")
  }
}
