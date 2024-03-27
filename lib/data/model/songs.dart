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
    audio: 'audio/about-you.mp3',
  ),
  Songs(
    title: '\'Cause You Have To',
    album: 'a beautiful blur',
    artist: 'LANY',
    image:
        'https://upload.wikimedia.org/wikipedia/en/8/81/A_Beautiful_Blur_cover.jpeg',
    audio: 'audio/cause-you-have-to.mp3',
  ),
  Songs(
    title: 'Ghost',
    album: 'Justice',
    artist: 'Justin Bieber',
    image:
        'https://upload.wikimedia.org/wikipedia/id/0/08/Justin_Bieber_-_Justice.png',
    audio: 'audio/ghost.mp3',
  ),
  Songs(
    title: 'seasons',
    album: 'summer flows 0.02',
    artist: 'wave to earth',
    image: 'https://i.scdn.co/image/ab67616d0000b2733f203b8d0d8e54fab416a825',
    audio: 'audio/seasons.mp3',
  ),
  Songs(
    title: 'Take A Chance With Me',
    album: 'Nicole',
    artist: 'NIKI',
    image:
        'https://upload.wikimedia.org/wikipedia/en/1/1d/Nicole_%28Album%29_cover.png',
    audio: 'audio/take-a-chance-with-me.mp3',
  ),
  Songs(
    title: 'Daylight',
    album: 'Lover',
    artist: 'Taylor Swift',
    image:
        'https://upload.wikimedia.org/wikipedia/id/c/cd/Taylor_Swift_-_Lover.png',
    audio: 'audio/daylight.mp3',
  ),
];

List<Songs> recommendedSongs = const [
  Songs(
    title: 'Keep It Up',
    album: 'Chase Atlantic',
    artist: 'Chase Atlantic',
    image: 'https://i.scdn.co/image/ab67616d0000b2735a0c2870f4f309e382d1fad6',
    audio: 'audio/keep-it-up.mp3',
  ),
  Songs(
    title: 'Falling',
    album: 'Paradise - EP',
    artist: 'Chase Atlantic',
    image: 'https://i.scdn.co/image/ab67616d0000b273e5e0ed0b19a6c10a3c075087',
    audio: 'audio/falling.mp3',
  ),
  Songs(
    title: 'YOU TOO',
    album: 'DON\'T TRY THIS',
    artist: 'Chase Atlantic',
    image:
        'https://akamai.sscdn.co/letras/360x360/albuns/1/b/5/5/696501550079206.jpg',
    audio: 'audio/you-too.mp3',
  ),
  Songs(
    title: 'Thick And Thin',
    album: 'Malibu Nights',
    artist: 'LANY',
    image:
        'https://upload.wikimedia.org/wikipedia/en/a/ad/LANYMalibuNights.png',
    audio: 'audio/thick-and-thin.mp3',
  ),
  Songs(
    title: 'ex i never had',
    album: 'gg bb xx',
    artist: 'LANY',
    image: 'https://upload.wikimedia.org/wikipedia/en/b/bc/Ggbbxx.jpg',
    audio: 'audio/ex-i-never-had.mp3',
  ),
  Songs(
    title: 'Thru These Tears',
    album: 'Malibu Nights',
    artist: 'LANY',
    image:
        'https://upload.wikimedia.org/wikipedia/en/a/ad/LANYMalibuNights.png',
    audio: 'audio/thru-these-tears.mp3',
  ),
  Songs(
    title: 'Cheating on You',
    album: 'Cheating on You',
    artist: 'Charlie Puth',
    image:
        'https://upload.wikimedia.org/wikipedia/en/3/33/Charlie_Puth_-_Cheating_on_You_%28single%29.png',
    audio: 'audio/cheating-on-you.mp3',
  ),
  Songs(
    title: 'Light Switch',
    album: 'CHARLIE',
    artist: 'Charlie Puth',
    image:
        'https://upload.wikimedia.org/wikipedia/id/f/fc/Charlie_Puth_-_Charlie.png',
    audio: 'audio/light-switch.mp3',
  ),
  Songs(
    title: 'Attention',
    album: 'Voicenotes',
    artist: 'Charlie Puth',
    image:
        'https://upload.wikimedia.org/wikipedia/id/5/55/Charlie_Puth_Voicenotes.png',
    audio: 'audio/attention.mp3',
  ),
];
