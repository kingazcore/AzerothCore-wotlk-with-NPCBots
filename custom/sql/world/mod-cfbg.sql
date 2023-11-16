UPDATE `creature_template`
SET `faction` = 1216
WHERE `entry` IN (14187, 22528, 31924, 37240, 14188, 22699, 31963, 37281);
UPDATE `creature_template`
SET `faction` = 1214
WHERE `entry` IN (14185, 22712, 32049, 37370, 14186, 22569, 32053, 37374);
DELETE
FROM `command`
WHERE `name` IN ('cfbg', 'cfbg race');
INSERT INTO `command` (`name`, `security`, `help`)
VALUES ('cfbg', 0, 'Crossfaction battleground module commands.'),
       ('cfbg race', 0,
        'Morphs your character to the selected race once you join a battleground.\nBy default, the following races are available: human, dwarf, gnome, draenei ("broken ones"), orc, bloodelf, troll, tauren.');
