Movie.create!([
  {id: 3,title: "Harry Potter", rating: "PG-13", runtime: "155", img: "https://dtvimages.hs.llnwd.net/e1//db_photos/movies/AllPhotosAPGI/34483/34483_aa.jpg"},
  {id: 4,title: "Ironman ", rating: "PG-13", runtime: "120", img: "https://images-na.ssl-images-amazon.com/images/I/51eDErsnV0L.jpg"},
  {id: 5,title: "Rudy", rating: "PG", runtime: "145", img: "https://images-na.ssl-images-amazon.com/images/I/51plfB1lQzL.jpg"},
  {id: 6,title: "Saving Private Ryan", rating: "R", runtime: "175", img: "https://images-na.ssl-images-amazon.com/images/I/41zN6HGkL1L.jpg"},
  {id: 7,title: "Stranger Things", rating: "TV-MA", runtime: "60", img: "https://images-na.ssl-images-amazon.com/images/I/71OB1IywjLL._SY679_.jpg"},
  {id: 2,title: "Shrek", rating: "G", runtime: "90", img: "https://images-na.ssl-images-amazon.com/images/I/51wEYwlLldL.jpg"}
])
Theater.create!([
  {name: "Green Theater", seat_capacity: 25},
  {name: "Yellow Theater", seat_capacity: 10},
  {name: "Blue Theater", seat_capacity: 20},
  {name: "Red Theater", seat_capacity: 15},
  {name: "Purple Theater", seat_capacity: 2},
  {name: "Orange Theater", seat_capacity: 30}
])

Showtime.create!([
  {movie_id: 2, theater_id: 1, start_time: "2018-11-02 16:30:00"},
  {movie_id: 3, theater_id: 2, start_time: "2018-11-06 20:49:33"},
  {movie_id: 4, theater_id: 5, start_time: "2018-11-06 01:25:00"},
  {movie_id: 5, theater_id: 4, start_time: "2018-11-08 17:30:00"},
  {movie_id: 6, theater_id: 6, start_time: "2018-11-08 23:30:00"},
  {movie_id: 7, theater_id: 3, start_time: "2018-11-08 13:30:00"},
  {movie_id: 4, theater_id: 5, start_time: "2018-11-08 00:00:00"}
])

