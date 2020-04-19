# frozen_string_literal: true

desc 'get podcasts from iTunes'

task get_podcasts: :environment do
  response = RestClient.get 'https://rss.itunes.apple.com/api/v1/us/podcasts/top-podcasts/all/100/explicit.json'
  json = JSON.parse response

  unless json.blank?
    @podcasts = json['feed']['results']

    @podcasts.each do |p|
      genres = []
      p['genres'].each do |g|
        genre = Genre.new
        genre.genre_id = g['genreId']
        genre.name = g['name']
        genre.url = g['url']
        if genre.save
          puts "Importando Genero: #{g['name']}"
          genres.push(genre.id)
        else
          genre_ = Genre.find_by_genre_id(g['genreId'])
          genres.push(genre_.id)
        end
      end

      podcast = Podcast.new
      podcast.artist_name = p['artistName']
      podcast.itunes_id = p['id']
      podcast.release_date = p['releaseDate']
      podcast.name = p['name']
      podcast.kind = p['kin']
      podcast.copyright = p['copyright']
      podcast.artist_id = p['artistId']
      podcast.artist_url = p['artistUrl']
      podcast.artwork_url100 = p['artworkUrl100']
      podcast.url = p['url']
      podcast.genre_ids = genres

      if podcast.save
        puts "Importando podcast: #{p['name']}"
      else
        # puts podcast.errors.inspect
      end
    end
  end
end
