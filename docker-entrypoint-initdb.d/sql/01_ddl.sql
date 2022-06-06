DROP TABLE IF EXISTS m_fertilizer;
DROP TABLE IF EXISTS m_plant_category;
DROP TABLE IF EXISTS m_season;
DROP TABLE IF EXISTS m_vitalizer;
DROP TABLE IF EXISTS t_user;
DROP TABLE IF EXISTS t_plant;
DROP TABLE IF EXISTS t_watering_history;
DROP TABLE IF EXISTS t_fertilizer_history;
DROP TABLE IF EXISTS t_vitalizer_history;
DROP TABLE IF EXISTS t_my_plants;
DROP TABLE IF EXISTS t_goen_history;

CREATE TABLE m_fertilizer (
  fertilizer_id INT not null 
  ,fertilizer_name VARCHAR(40) not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);

CREATE TABLE m_plant_category (
  plant_category_id INT not null 
  , plant_category_name VARCHAR(40) not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);

CREATE TABLE m_season (
  season_id INT not null 
  , season_name VARCHAR(2) not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);

CREATE TABLE m_vitalizer (
  vitalizer_id INT not null 
  , vitalizer_name VARCHAR(40) not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);

CREATE TABLE t_user (
  user_id INT not null 
  , user_name VARCHAR(40) not null 
  , mail_address	VARCHAR(241) not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);

CREATE TABLE t_plant (
  plant_id INT not null 
  , plant_name VARCHAR(40) not null 
  , plant_detail VARCHAR(241) not null 
  , plant_category_id INT not null 
  , season_id INT not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);

CREATE TABLE t_watering_history (
  watering_history_id INT not null 
  , plant_id INT not null 
  , user_id INT not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);

CREATE TABLE t_fertilizer_history (
  fertilizer_history_id INT not null 
  , plant_id INT not null 
  , fertilizer_id INT not null 
  , user_id INT not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);

CREATE TABLE t_vitalizer_history (
  vitalizer_history_id INT not null 
  , plant_id INT not null 
  , vitalizer_id INT not null 
  , user_id INT not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);

CREATE TABLE t_my_plants(
  my_plants_id INT not null
  , plant_id INT not null 
  , purchase DATE not null 
  , user_id INT not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);

CREATE TABLE t_goen_history (
  gone_id INT not null 
  , plant_id INT not null 
  , description VARCHAR(241) not null 
  , user_id INT not null 
  , delete_flg BOOLEAN not null 
  , create_user	VARCHAR(50) not null 
  , create_datetime	TIMESTAMP not null 
  , update_user	VARCHAR(50) not null 
  , update_datetime	TIMESTAMP not null 
  , version INT not null 
);
