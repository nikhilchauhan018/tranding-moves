import React from 'react'

const MovieSearch = ({ MovieSearchTerm, setMovieSearchTerm }) => {
  return (
    <div className="MovieSearch">
      <div>
        <img src="search.svg" alt="MovieSearch" />

        <input
          type="text"
          placeholder="MovieSearch through thousands of movies"
          value={MovieSearchTerm}
          onChange={(e) => setMovieSearchTerm(e.target.value)}
        />
      </div>
    </div>
  )
}
export default MovieSearch
