DELETE
FROM `command`
WHERE `name` IN ('sj', 'sja', 'sjh');

INSERT INTO `command` (`name`, `security`, `help`)
VALUES ('sja', 1, 'Syntax: .chata $text - To speak as a GM only to Alliance'),
       ('sjh', 1, 'Syntax: .chath $text - To speak as a GM only to Horde'),
       ('sj', 0, 'Syntax: .chat $text\n.chat on To show World Chat\n.chat off To hide World Chat');
