import MoviesContract from 0x01

pub fun main(Title: String): MoviesContract.Movie{
    return MoviesContract.Movies[Title]!
}
