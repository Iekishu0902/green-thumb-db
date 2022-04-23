DROP DATABASE IF EXISTS greenThumbDB;
DROP ROLE IF EXISTS greenThumbDB;

-- Database作成
CREATE DATABASE greenThumbDB;
-- User作成
CREATE USER 'greenThumbDB'@'localhost' IDENTIFIED BY 'greenThumbDB';
-- grant権限付与
GRANT ALL ON *.* TO 'greenThumbDB'@'localhost';
