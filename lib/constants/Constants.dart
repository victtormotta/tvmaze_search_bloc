library constants_project;
/*
URLS
*/
const String URL_LOAD = 'http://api.tvmaze.com/shows';
String URL_SEARCH(String term) => 'http://api.tvmaze.com/search/shows?q=$term';
String URL_SEARCH_CAST(String id) => '$URL_LOAD/$id?embed=cast';
String URL_EPISODES(String id) => '$URL_LOAD/$id/episodes';
String URL_SEASONS(String id) => '$URL_LOAD/$id/seasons';
const String URL_SCHEDULE = 'http://api.tvmaze.com/schedule';
/*
IMAGES
*/
const String LOGO_TV_MAZE = 'https://static.tvmaze.com/images/tvm-header-logo.png';
const String PLACEHOLDER_TV_SHOW = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwt_P-IiO7iiAGO3n-5nTfhR7JoLJI8wsqO_kGqm9Y4H0qcAijdw';
const String PLACEHOLDER_POSTER = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB7suUSfqcNx7SVHZoskbX1LoDsx_XC7A789qGRl4F-1eDYq5f';
const String PLACEHOLDER_CAST = 'http://theremedyjournal.com/wp-content/uploads/2017/07/wundermag_1920x1080-128x128.jpg';
const String PLACEHOLDER_EPISODE = 'https://www.tzaustria.com/decor_overview/img/decors/tz_tecnoglas_schlammgrau.jpg';
