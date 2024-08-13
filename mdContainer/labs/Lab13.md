# Lab 13: Tunify Platform - Navigation and Routing

## Overview
In this lab, you will extend your Tunify Platform by implementing advanced navigation and routing techniques. You will create and manage relationships between `Playlist` and `Song`, and `Artist` and `Song`. Additionally, you will write unit tests to ensure your implementation works correctly.

By the end of this lab, you'll:
1. Establish relationships between `Playlist` and `Song`, and `Artist` and `Song`.
2. Add functionality to manage these relationships.
3. Implement navigation properties for managing relationships.
4. Write unit tests using xUnit and mocks to test your implementations.

## Application Setup

### Initial Configuration (If not completed in the previous lab)
1. Ensure you have completed Lab 12 and have the necessary models and DbContext set up.

### Implementing Navigation and Routing
1. Add navigation properties to the `Playlist`, `Song`, and `Artist` models to establish the relationships.
2. Ensure that the relationships are correctly configured in the `DbContext` and that the navigation properties are set up to reflect these relationships.

### Implementing Relationships
1. **Add Routing for Playlist-Song Relationships:**
    - Create a new controller action to handle adding a song to a playlist. This endpoint should follow the format `POST api/playlists/{playlistId}/songs/{songId}`.
    - Create another action to retrieve all songs in a playlist.

2. **Add Routing for Artist-Song Relationships:**
    - Create a new controller action to handle adding a song to an artist. This endpoint should follow the format `POST api/artists/{artistId}/songs/{songId}`.
    - Create another action to retrieve all songs by an artist.

3. **Create Relationships:**
    - Implement the relationship between `Playlist` and `Song`.
    - Implement the relationship between `Artist` and `Song`.

4. **Add Relationship Management:**
    - Add a method to the `PlaylistService` to handle adding a song to a playlist.
    - Add a method to the `ArtistService` to handle adding a song to an artist.

5. **Add Endpoint for Adding Relations:**
    - Implement a POST endpoint in the `PlaylistsController` to add a song to a playlist:
        ```csharp
        [HttpPost("playlists/{playlistId}/songs/{songId}")]
        public async Task<IActionResult> AddSongToPlaylist(int playlistId, int songId)
        {
            // Implement the method to add a song to a playlist
        }
        ```
    - Implement a POST endpoint in the `ArtistsController` to add a song to an artist:
        ```csharp
        [HttpPost("artists/{artistId}/songs/{songId}")]
        public async Task<IActionResult> AddSongToArtist(int artistId, int songId)
        {
            // Implement the method to add a song to an artist
        }
        ```

5. **Seed Sample Data**:
    - Update the `OnModelCreating` method in your `TunifyDbContext`  to define composite keys for join tables and to seed initial data for `Playlist`, `Song`, and `Artist` models. (If not previously done)
    - Create and apply the needed migrations to update the database with the seed data.
    - Confirm that the initial data has been successfully seeded into your database by checking the database directly.

## XUnit Testing
    - Install the necessary NuGet packages for mocking `Moq`.
    - Use `Moq` to create a mock `DbContext` instances and set up expected behavior.
    - Create a unit test to verify that the GetSongsForPlaylist method returns the correct list of songs associated with a specific playlist.

### README
- Update your Lab 12 `README.md` with the following:
  - A section explaining the new navigation and routing functionalities.
  - Information on the relationships between `Playlist` and `Song`, and `Artist` and `Song`.

## How To Submit this Lab
1. Create a new branch named `NavigationRouting` on your existing `Tunify-Platform` GitHub repository.
2. Complete the lab tasks by following the updated specifications.
3. Update the `README.md` file with the new content.
4. Push your changes to your GitHub repository.
5. Create a pull request from the `NavigationRouting` branch to the main branch.
6. Submit a link to your pull request in the submission field.
