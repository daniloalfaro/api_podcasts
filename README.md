# api_podcasts

Rails API project, it takes the info from:

https://rss.itunes.apple.com/api/v1/us/podcasts/top-podcasts/all/100/explicit.json#

To save it to a postgresql database and serve it in an API.

INSTRUCTIONS:

1. Clone this git repository
2. In the project directory run: bundle install
3. In config/database.yml put your credentials for development database (user and password)
4. In the project directory run: rake db:create 
5. In the project directory run: rake db:migrate
6. The project has a rake task to fill the database, in the project directory run: rake get_podcasts
7. Run the project, in the project directory run: rails s
8. To test the API the project has a postman collection inside de root, in the file: FOCUS.postman_collection.json
9. The API endponints are:

http://localhost:3000/api/v1/podcasts/search  Search by: artist_name, name, kind, copyright, artist_url, url
http://localhost:3000/api/v1/podcasts/top20   First 20 podcasts
http://localhost:3000/api/v1/podcasts/last20  Last 20 podcasts
http://localhost:3000/api/v1/podcasts         List of all podcasts
http://localhost:3000/api/v1/podcasts/:id     Delete a podcasts by itunes_id, you can find some in the list of all podcasts
http://localhost:3000/api/v1/genres/search    Search by: name
http://localhost:3000/api/v1/genres/podcasts  List of all podcasts grouped by genre
http://localhost:3000/api/v1/genres           List of all genres


