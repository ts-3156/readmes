# Grooveshark

**GROOVESHARK.COM HAS BEEN TERMINATED ON APRIL 30, 2015**

Unofficial grooveshark API ruby library gives your ability to search and stream songs,
manage playlists, media library and favorites.
API was discovered using http proxy and does not pretend to be always valid due to website API changes.

[![Build Status](https://travis-ci.org/sosedoff/grooveshark.svg?branch=master)](https://travis-ci.org/sosedoff/grooveshark)
[![Gem](https://img.shields.io/gem/v/grooveshark.svg)](https://rubygems.org/gems/grooveshark)

## Installation

Install gem from rubygems:

```
gem install grooveshark
```

Or add this line to your `Gemfile`:

```
gem "grooveshark"
```

And install bundle:

```
bundle install
```

## Usage

First, you'll need to create a session. Grooveshark's session is a
regular PHP session with expiration date of 7 days.

```ruby
require 'grooveshark'

client = Grooveshark::Client.new
```

Now we can find some songs:

```ruby
songs = client.search_songs('Nirvana')

songs.each do |s|
  s.id          # Song ID
  s.name        # Song name
  s.artist      # Song artist name
  s.album       # Song album name
  s.duration    # Song duration in seconds (not always present, 0 by default)
end
```

We got collection of songs. Check Song object for additional attributes.
In order to stream song we need to get the authorization

```ruby
song = songs.first
url = client.get_song_url(song)
```

Given url is valid only for current session and cannot be shared or stored permanently.
Also, it probably violates terms of service.

### User Authentication

To get your user account you need to provide username and password.
If username or password is not valid InvalidAuthentication exception will be raised.

```ruby
client = Grooveshark::Client.new

begin
  user = client.login('username', 'password')
rescue InvalidAuthentication
  puts "Oooops! Wrong username or password"
end
```

### Playlists and favorites

Get all user playlists:

```ruby
user.playlists.each do |p|
  p.id          # Playlist ID
  p.name        # Playlist name
  p.about       # Playlist description (empty by default)
end
```

Get user playlist:

```ruby
playlist = user.get_playlist(PLAYLIST_ID)
```

Get all playlist songs:

```ruby
playlist = user.get_playlist(ID)
playlist.load_songs
songs = playlist.songs
```

Rename existing playlist:

```ruby
playlist = user.get_playlist(ID)
playlist.rename('NEW NAME', 'NEW DESCRIPTION')
```

Delete existing user playlist

```ruby
playlist = user.get_playlist(ID)
playlist.delete
```

Create a new playlist. First parameter is mandatory, description and songs are optional.
For songs you can provide array of Song objects or array of IDs.

```ruby
songs = client.search_songs('Joe Satriani')
p = user.create_playlist('NAME', 'DESCRIPTION', songs)
```

Get user favorite songs:

```ruby
songs = user.favorites
```

Add song to favorites:

```ruby
user.add_favorite(song) # Song object or song ID
```

Remove song from favorites:

```ruby
user.remove_favorite(song) # Song object or song ID
```

### Broadcasts

Get top broadcasts:

```ruby
client.top_broadcasts.each do |b|
  b.id                # Broadcast ID
  b.name              # Broadcast Name
end
```

To reload the current status of the broadcast (e.g. currently playing song,
next song, etc.), call `reload_status` method:

```ruby
broadcast.reload_status
```

Get the current and next song for a broadcast:

```ruby
current_song = broadcast.active_song
next_song = broadcast.next_song
```

Check whether the broadcast is currently playing:

```ruby
if broadcast.is_playing
  # Do something e.g. get the currently playing song.
end
```

### User library

Get all songs from library as a collection of Song objects

```ruby
songs = user.library
```

Add songs to library:

```ruby
songs = client.search_songs('The Beatles')
user.library_add(songs)
```

Remove selected songs from library.
Unfortunately mass-deletion is not supported by Grooveshark API.
You will have to delete each song via separate method call.

```ruby
song = user.library.first # Lest pick a first song in the library
user.library_remove(song)
```

### Explore community

Get all recently active users:

```ruby
client.recent_users
```

Find user by ID:

```ruby
client.get_user_by_id('ID')
```

Find user by username:

```ruby
client.get_user_by_username('username')
```

Fetch recent user activity:

```ruby
user = client.get_user_by_username('user')
user.feed
```

## Testing

Run test suite:

```
bundle exec rake
```

## Contact

- Dan Sosedoff
- dan.sosedoff@gmail.com
- http://twitter.com/sosedoff

## License

MIT License

Copyright (c) 2011-2015 Dan Sosedoff <dan.sosedoff@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
