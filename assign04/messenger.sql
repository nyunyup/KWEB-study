CREATE TABLE `users` (
    `uid` INT NOT NULL AUTO_INCREMENT,
    `upw` VARCHAR(20) NOT NULL,
    `uname` VARCHAR(20) NOT NULL,
    `profile_img` VARCHAR(100) NOT NULL,
    `profile_bio` VARCHAR(100) NOT NULL,
    `withdraw` TINYINT(1) NOT NULL DEFAULT 0,
    `join_date` DATETIME NOT NULL,
    PRIMARY KEY(`uid`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `channels` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `create_uid` INT NOT NULL,
    `link` VARCHAR(100) NOT NULL,
    `capacity` INT NOT NULL,
    `withdraw` TINYINT(1) NOT NULL DEFAULT 0,
    `create_date` DATETIME NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`create_uid`) REFERENCES `users`(`uid`) ON DELETE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `chats` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `content` TEXT NOT NULL,
    `writer` INT NOT NULL,
    `channel` INT NOT NULL,
    `send_date` DATETIME NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`writer`) REFERENCES `users`(`uid`) ON DELETE CASCADE,
    FOREIGN KEY (`channel`) REFERENCES `channels`(`id`) ON DELETE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `blocks` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `blocker` INT NOT NULL,
    `blockee` INT NOT NULL,
    `block_date` DATETIME NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`blocker`) REFERENCES `users`(`uid`) ON DELETE CASCADE,
    FOREIGN KEY (`blockee`) REFERENCES `users`(`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `follows` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `follower` INT NOT NULL,
    `followee` INT NOT NULL,
    `follow_date` DATETIME NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`follower`) REFERENCES `users`(`uid`) ON DELETE CASCADE,
    FOREIGN KEY (`followee`) REFERENCES `users`(`uid`) ON DELETE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;







