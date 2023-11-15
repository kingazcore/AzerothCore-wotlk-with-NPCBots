-- ######################################################--
--	CODEBOX - 90024
-- ######################################################--
SET
    @Entry 		:= 92000,
    @Model 		:= 16804, -- Elven Jeweler
    @Name 		:= "奖励兑换",
    @Title 		:= "点我有惊喜哦",
    @Icon 		:= "Buy",
    @GossipMenu := 0,
    @MinLevel 	:= 80,
    @MaxLevel 	:= 80,
    @Faction 	:= 35,
    @NPCFlag 	:= 0,
    @Scale		:= 1.0,
    @Rank		:= 0,
    @Type 		:= 7,
    @TypeFlags 	:= 138936390,
    @FlagsExtra := 2,
    @AIName		:= "SmartAI",
    @Script 	:= "reward_shop";

-- NPC
DELETE FROM creature_template WHERE entry = @Entry;
INSERT INTO creature_template (`entry`, `modelid1`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES
    (@Entry, @Model, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlag, 1, 1.14286, @Scale, @Rank, 1, 2, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);

-- NPC Text
DELETE FROM `npc_text` WHERE `ID`=@Entry;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES (@Entry, '向你问候 $N，你有奖券需要兑换吗?');

-- creatture_template_movement
DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (@Entry);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
    (@Entry, 1, 1, 0, 0, 0, 0, NULL);
