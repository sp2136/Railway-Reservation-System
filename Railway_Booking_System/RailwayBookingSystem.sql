CREATE DATABASE IF NOT EXISTS `RailwayBookingSystem` DEFAULT CHARACTER SET latin1;
USE `RailwayBookingSystem`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    username VARCHAR(255), password VARCHAR(255)
);

INSERT INTO users (user_id, username, password) VALUES (001, 'ayush', 'am1234');
INSERT INTO users (user_id, username, password) VALUES (002, 'shubh', 'sp1234');
INSERT INTO users (user_id, username, password) VALUES (003, 'krish', 'kg1234');