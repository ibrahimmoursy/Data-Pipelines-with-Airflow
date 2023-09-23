class createSchema:

       create = ("""

              DROP TABLE IF EXISTS staging_events;
              CREATE TABLE staging_events(
                     artist        VARCHAR,
                     auth          VARCHAR,
                     firstName     VARCHAR,
                     gender        CHAR,
                     itemInSession INTEGER,
                     lastName      VARCHAR,
                     length        FLOAT,
                     level         VARCHAR,
                     location      VARCHAR,
                     method        VARCHAR,
                     page          VARCHAR,
                     registration  VARCHAR,
                     sessionId     INTEGER,
                     song          VARCHAR,
                     status        INTEGER,
                     ts            BIGINT, 
                     userAgent     VARCHAR, 
                     userId        INTEGER
              );
              
              DROP TABLE IF EXISTS staging_songs;
              CREATE TABLE staging_songs(
                     num_songs         INTEGER,
                     artist_id         VARCHAR,
                     artist_latitude   VARCHAR,
                     artist_longitude  VARCHAR,
                     artist_location   VARCHAR,
                     artist_name       VARCHAR,
                     song_id           VARCHAR,
                     title             VARCHAR,
                     duration          FLOAT,
                     year              INTEGER
              );

              DROP TABLE IF EXISTS songplays;
              CREATE TABLE songplays(
                     songplay_id   VARCHAR PRIMARY KEY,
                     start_time    TIMESTAMP NOT NULL,
                     user_id       INTEGER NOT NULL,
                     level         VARCHAR,
                     song_id       VARCHAR,
                     artist_id     VARCHAR,
                     session_id    INTEGER,
                     location      VARCHAR,
                     user_agent    VARCHAR);   

              DROP TABLE IF EXISTS users;
              CREATE TABLE users(
                     user_id       VARCHAR PRIMARY KEY,
                     first_name    VARCHAR,
                     last_name     VARCHAR,
                     gender        VARCHAR,
                     level         VARCHAR);

              DROP TABLE IF EXISTS songs;
              CREATE TABLE songs(
                     song_id     VARCHAR PRIMARY KEY,
                     title       VARCHAR NOT NULL,
                     artist_id   VARCHAR NOT NULL,
                     year        INTEGER,
                     duration    FLOAT);

              DROP TABLE IF EXISTS artists;
              CREATE TABLE artists(
                     artist_id  VARCHAR PRIMARY KEY,
                     name       VARCHAR NOT NULL,
                     location   VARCHAR,
                     latitude   VARCHAR,
                     longitude  VARCHAR);

              DROP TABLE IF EXISTS time;
              CREATE TABLE time(
                     start_time TIMESTAMP sortkey PRIMARY KEY,
                     hour       INTEGER NOT NULL,
                     day        INTEGER NOT NULL,
                     week       INTEGER NOT NULL,
                     month      INTEGER NOT NULL,
                     year       INTEGER NOT NULL,
                     weekday    INTEGER NOT NULL);

       """)








