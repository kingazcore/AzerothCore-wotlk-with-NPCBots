-- 反作弊 开始
DROP TABLE IF EXISTS `daily_players_reports`;
CREATE TABLE IF NOT EXISTS `daily_players_reports`
(
    `guid`                     int(10) unsigned    NOT NULL DEFAULT '0',
    `creation_time`            int(10) unsigned    NOT NULL DEFAULT '0',
    `average`                  float               NOT NULL DEFAULT '0',
    `total_reports`            bigint(20) unsigned NOT NULL DEFAULT '0',
    `speed_reports`            bigint(20) unsigned NOT NULL DEFAULT '0',
    `fly_reports`              bigint(20) unsigned NOT NULL DEFAULT '0',
    `jump_reports`             bigint(20) unsigned NOT NULL DEFAULT '0',
    `waterwalk_reports`        bigint(20) unsigned NOT NULL DEFAULT '0',
    `teleportplane_reports`    bigint(20) unsigned NOT NULL DEFAULT '0',
    `climb_reports`            bigint(20) unsigned NOT NULL DEFAULT '0',
    `teleport_reports`         bigint(20) unsigned NOT NULL DEFAULT '0',
    `ignorecontrol_reports`    bigint(20) unsigned NOT NULL DEFAULT '0',
    `zaxis_reports`            bigint(20) unsigned NOT NULL DEFAULT '0',
    `antiswim_reports`         bigint(20) unsigned NOT NULL DEFAULT '0',
    `gravity_reports`          bigint(20) unsigned NOT NULL DEFAULT '0',
    `antiknockback_reports`    bigint(20) unsigned NOT NULL DEFAULT '0',
    `no_fall_damage_reports`   bigint(20) unsigned NOT NULL DEFAULT '0',
    `op_ack_hack_reports`      bigint(20) unsigned NOT NULL DEFAULT '0',
    `counter_measures_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`guid`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `players_reports_status`;
CREATE TABLE IF NOT EXISTS `players_reports_status`
(
    `guid`                     int(10) unsigned    NOT NULL DEFAULT '0',
    `creation_time`            int(10) unsigned    NOT NULL DEFAULT '0',
    `average`                  float               NOT NULL DEFAULT '0',
    `total_reports`            bigint(20) unsigned NOT NULL DEFAULT '0',
    `speed_reports`            bigint(20) unsigned NOT NULL DEFAULT '0',
    `fly_reports`              bigint(20) unsigned NOT NULL DEFAULT '0',
    `jump_reports`             bigint(20) unsigned NOT NULL DEFAULT '0',
    `waterwalk_reports`        bigint(20) unsigned NOT NULL DEFAULT '0',
    `teleportplane_reports`    bigint(20) unsigned NOT NULL DEFAULT '0',
    `climb_reports`            bigint(20) unsigned NOT NULL DEFAULT '0',
    `teleport_reports`         bigint(20) unsigned NOT NULL DEFAULT '0',
    `ignorecontrol_reports`    bigint(20) unsigned NOT NULL DEFAULT '0',
    `zaxis_reports`            bigint(20) unsigned NOT NULL DEFAULT '0',
    `antiswim_reports`         bigint(20) unsigned NOT NULL DEFAULT '0',
    `gravity_reports`          bigint(20) unsigned NOT NULL DEFAULT '0',
    `antiknockback_reports`    bigint(20) unsigned NOT NULL DEFAULT '0',
    `no_fall_damage_reports`   bigint(20) unsigned NOT NULL DEFAULT '0',
    `op_ack_hack_reports`      bigint(20) unsigned NOT NULL DEFAULT '0',
    `counter_measures_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`guid`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- 反作弊 结束

-- 宠物外观开始
CREATE TABLE IF NOT EXISTS `mod_morphsummon_felguard_weapon`
(
    `PlayerGUIDLow`  int(10) unsigned NOT NULL,
    `FelguardItemID` int(10) unsigned NOT NULL COMMENT 'Item ID for Felguard virtual item slot 0',
    PRIMARY KEY (`PlayerGUIDLow`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='mod-morphsummon; used for custom Felguard weapons';
-- 宠物外观 结束

-- 幻化开始
-- Dumping structure for table tc_c.custom_transmogrification
CREATE TABLE IF NOT EXISTS `custom_transmogrification`
(
    `GUID`      int(10) unsigned NOT NULL COMMENT 'Item guidLow',
    `FakeEntry` int(10) unsigned NOT NULL COMMENT 'Item entry',
    `Owner`     int(10) unsigned NOT NULL COMMENT 'Player guidLow',
    PRIMARY KEY (`GUID`),
    KEY `Owner` (`Owner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='6_2';

-- Data exporting was unselected.


-- Dumping structure for table tc_c.custom_transmogrification_sets
CREATE TABLE IF NOT EXISTS `custom_transmogrification_sets`
(
    `Owner`    int(10) unsigned    NOT NULL COMMENT 'Player guidlow',
    `PresetID` tinyint(3) unsigned NOT NULL COMMENT 'Preset identifier',
    `SetName`  text COMMENT 'SetName',
    `SetData`  text COMMENT 'Slot1 Entry1 Slot2 Entry2',
    PRIMARY KEY (`Owner`, `PresetID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='6_1';

CREATE TABLE IF NOT EXISTS `custom_unlocked_appearances`
(
    `account_id`       int(10) unsigned      NOT NULL,
    `item_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`account_id`, `item_template_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- 幻化结束