class Songs {
  final String? title;
  final String? album;
  final String? artist;
  final String? image;
  final String? audio;

  const Songs({
    this.album,
    this.artist,
    this.audio,
    this.image,
    this.title,
  });
}

List<String> songsCategories = [
  'All',
  'Pop',
  'Rock',
  'Hip-Hop',
  'Electronic',
  'Folk',
  'RnB',
];

List<Songs> popularSongs = const [
  Songs(
    title: 'About You',
    album: 'Being Funny In A Foreign Language',
    artist: 'The 1975',
    image: 'https://f4.bcbits.com/img/a2113166341_65',
    audio: '',
  ),
  Songs(
    title: '\'Cause You Have To',
    album: 'a beautiful blur',
    artist: 'LANY',
    image:
        'https://upload.wikimedia.org/wikipedia/en/8/81/A_Beautiful_Blur_cover.jpeg',
    audio: '',
  ),
  Songs(
    title: 'Ghost',
    album: 'Justice',
    artist: 'Justin Bieber',
    image:
        'https://upload.wikimedia.org/wikipedia/id/0/08/Justin_Bieber_-_Justice.png',
    audio: '',
  ),
  Songs(
    title: 'seasons',
    album: 'summer flows 0.02',
    artist: 'wave to earth',
    image: 'https://i.scdn.co/image/ab67616d0000b2733f203b8d0d8e54fab416a825',
    audio: '',
  ),
  Songs(
    title: 'Take A Chance With Me',
    album: 'Nicole',
    artist: 'NIKI',
    image:
        'https://upload.wikimedia.org/wikipedia/en/1/1d/Nicole_%28Album%29_cover.png',
    audio: '',
  ),
  Songs(
    title: 'Daylight',
    album: 'Lover',
    artist: 'Tailor Swift',
    image:
        'https://upload.wikimedia.org/wikipedia/id/c/cd/Taylor_Swift_-_Lover.png',
    audio: '',
  ),
];

List<Songs> recommendedSongs = const [
  Songs(
    title: 'Keep It Up',
    album: 'Chase Atlantic',
    artist: 'Chase Atlantic',
    image: 'https://i.scdn.co/image/ab67616d0000b2735a0c2870f4f309e382d1fad6',
    audio: '',
  ),
  Songs(
    title: 'Falling',
    album: 'Paradise - EP',
    artist: 'Chase Atlantic',
    image: 'https://i.scdn.co/image/ab67616d0000b273e5e0ed0b19a6c10a3c075087',
    audio: '',
  ),
  Songs(
    title: 'YOU TOO',
    album: 'DON\'T TRY THIS',
    artist: 'Chase Atlantic',
    image:
        'https://akamai.sscdn.co/letras/360x360/albuns/1/b/5/5/696501550079206.jpg',
    audio: '',
  ),
  Songs(
    title: 'Thick And Thin',
    album: 'Malibu Nights',
    artist: 'LANY',
    image:
        'https://upload.wikimedia.org/wikipedia/en/a/ad/LANYMalibuNights.png',
    audio: '',
  ),
  Songs(
    title: 'ex i never had',
    album: 'gg bb xx',
    artist: 'LANY',
    image: 'https://upload.wikimedia.org/wikipedia/en/b/bc/Ggbbxx.jpg',
    audio: '',
  ),
  Songs(
    title: 'Thru These Tears',
    album: 'Malibu Nights',
    artist: 'LANY',
    image:
        'https://upload.wikimedia.org/wikipedia/en/a/ad/LANYMalibuNights.png',
    audio: '',
  ),
  Songs(
    title: 'Cheating on You',
    album: 'Cheating on You',
    artist: 'Charlie Puth',
    image:
        'https://upload.wikimedia.org/wikipedia/en/3/33/Charlie_Puth_-_Cheating_on_You_%28single%29.png',
    audio: '',
  ),
  Songs(
    title: 'Light Switch',
    album: 'CHARLIE',
    artist: 'Charlie Puth',
    image:
        'https://upload.wikimedia.org/wikipedia/id/f/fc/Charlie_Puth_-_Charlie.png',
    audio: '',
  ),
  Songs(
    title: 'Attention',
    album: 'Voicenotes',
    artist: 'Charlie Puth',
    image:
        'https://upload.wikimedia.org/wikipedia/id/5/55/Charlie_Puth_Voicenotes.png',
    audio: '',
  ),
];
