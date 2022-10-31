CREATE TABLE `student` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `admission_year` INT NOT NULL,
    `major` VARCHAR(20) NOT NULL,
    `phone_num` VARCHAR(11) NOT NULL,
    `address` VARCHAR(60) NOT NULL,
    `total_credit` INT NOT NULL DEFAULT 0,
    `avg_credit` DOUBLE NOT NULL DEFAULT 0.0,
    `status` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;