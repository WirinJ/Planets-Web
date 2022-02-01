CREATE DATABASE `laravel`;


CREATE TABLE `planets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NULL,
  `description` varchar(255) NULL,
  `size_in_km` int(11) NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `planets` (`name`, `description`, `size_in_km`) VALUES
    ('Mars', 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury.', 123),
    ('Venus', 'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty.', 234),
    ('Earth', 'Our home planet is the third planet from the Sun, and the only place we know of so far thats inhabited by living things.', 777);


CREATE TABLE `laravel`.`solar_systems` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `age_in_years` INT(11) NOT NULL
);

ALTER TABLE `laravel`.`planets` ADD COLUMN `solar_system_id` int(11) NOT NULL AFTER `size_in_km`;

INSERT INTO `planets` (`id`, `name`, `description`, `size_in_km`, `solar_system_id`) VALUES 
  (NULL, 'Saturn', 'Scary planet.', '6819', '1'),
  (NULL, 'PII-5', 'Far far away...', '846486', '2'), 
  (NULL, 'FIAE17', 'A planet with 25 billion inhabitants.', '99911124', '2');

INSERT INTO `solar_systems` (`id`, `name`, `age_in_years`) VALUES 
  (NULL, 'Home', '6000000'), 
  (NULL, 'Alien', '56');