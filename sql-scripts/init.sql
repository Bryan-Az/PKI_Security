-- This file starts the database
CREATE DATABASE wp_db;
CREATE USER 'example_user'@'localhost' IDENTIFIED BY 'example_pass';
FLUSH PRIVILEGES;
GRANT ALL ON wp_db.* to example_user;
GRANT ALL ON wp_db.* to example_user@localhost;
