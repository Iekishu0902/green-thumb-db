CREATE TABLE CREATE TABLE t_user (
  , user_id INT not null comment `ユーザID`
  , user_name VARCHAR(40) not null comment `ユーザ名`
  , mail_address	VARCHAR(241) not null comment `メールアドレス`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
) comment `ユーザ情報`;

CREATE TABLE t_plant (
  plant_id INT not null comment `植物ID`
  , plant_name VARCHAR(40) not null comment `植物名`
  , plant_detail VARCHAR(241) not null comment `植物詳細`
  , plant_cotegory_id INT not null comment `植物カテゴリID`
  , season_id INT not null comment `季節ID`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
) comment `植物情報`;

CREATE TABLE t_watering_history (
  watering_history_id INT not null comment `水やり履歴ID`
  , plant_id INT not null comment `植物ID`
  , user_id INT not null comment `ユーザID`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
) comment `水やり履歴情報`;

CREATE TABLE t_ｆertilizer_history (
  ｆertilizer_history_id INT not null comment `肥料履歴ID`
  , plant_id INT not null comment `植物ID`
  , ｆertilizer_id INT not null comment `肥料ID`
  , user_id INT not null comment `ユーザID`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
) comment `施肥履歴情報`;

CREATE TABLE t_vitalizer_history (
  vitalizer_history_id INT not null comment `活力剤履歴ID`
  , plant_id INT not null comment `植物ID`
  , vitalizer_id INT not null comment `活力剤ID`
  , user_id INT not null comment `ユーザID`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
) comment `活力剤投与履歴情報`;

CREATE TABLE t_my_plants(
  my_plants_id
  ,plant_id INT not null comment `植物ID`
  , purchase date DATE not null comment `購入日`
  , user_id INT not null comment `ユーザID`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
) comment `所有植物情報`;

CREATE TABLE t_goen_history (
  gone_id INT not null comment `枯死`
  , plant_id INT not null comment `植物ID`
  , description VARCHAR(241) not null comment `考察`
  , user_id INT not null comment `ユーザID`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
) comment `枯死履歴情報`;

CREATE TABLE m_ｆertilizer (
  ｆertilizer_id INT not null comment `肥料`
  ,ｆertilizer_name VARCHAR(40) not null comment`肥料名`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
)  comment `肥料マスタ`;

CREATE TABLE m_plant_cotegory (
  plant_cotegory_id INT not null comment `植物カテゴリID`
  , plant_cotegory_name VARCHAR(40) not null comment `植物カテゴリ名`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
)  comment `植物種類情報マスタ`;

CREATE TABLE m_season (
  season_id INT not null comment `季節ID`
  , season_name VARCHAR(2) not null comment `季節名`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
) comment `季節マスタ`;

CREATE TABLE m_vitalizer (
  vitalizer_id INT not null comment `活力剤ID`
  , vitalizer_name VARCHAR(40) not null comment `活力剤名`
  , delete_flg BOOLEAN not null comment `削除フラグ`
  , create_user	VARCHAR(50) not null comment `作成者`
  , create_datetime	datetime not null comment `作成日時`
  , update_user	VARCHAR(50) not null comment `更新者`
  , update_datetime	datetime not null comment `更新日`
  , version INT not null comment `バージョン`
) comment `活力剤マスタ`;
