-- 修改绿色，蓝色掉率为4倍
UPDATE creature_loot_template
    INNER JOIN reference_loot_template ON creature_loot_template.reference = reference_loot_template.entry
    INNER JOIN item_template ON reference_loot_template.item = item_template.entry
SET creature_loot_template.Chance = creature_loot_template.Chance * 4
WHERE
        creature_loot_template.Reference != 0
  AND creature_loot_template.Chance < 1
  AND ( item_template.quality = 2 OR item_template.quality = 3 )
  AND creature_loot_template.GroupId != 0
  AND (
        reference_loot_template.COMMENT NOT LIKE '%ReferenceTable%');

-- 修改紫色，橙色掉率为2两倍
UPDATE creature_loot_template
    INNER JOIN reference_loot_template ON creature_loot_template.reference = reference_loot_template.entry
    INNER JOIN item_template ON reference_loot_template.item = item_template.entry
SET creature_loot_template.Chance = creature_loot_template.Chance * 2
WHERE
        creature_loot_template.Reference != 0
  AND creature_loot_template.Chance < 1
  AND ( item_template.quality = 4 OR item_template.quality = 5 )
  AND creature_loot_template.GroupId != 0
  AND (
        reference_loot_template.COMMENT NOT LIKE '%ReferenceTable%');


UPDATE `item_template` SET stackable = 1000 where stackable > 1 ; /*所有堆叠数大于1的改为9999*/
-- NPC名称汉化
UPDATE creature_template a join creature_template_locale b on a.entry=b.entry and b.locale='zhCN' set a.`name`=b.`Name` WHERE b.`Name`!='';
UPDATE creature_template a join creature_template_locale b on a.entry=b.entry and b.locale='zhCN' set a.`subname`=b.`Title` WHERE b.`Title`!='';
-- 物品汉化
UPDATE item_template a join item_template_locale b on a.entry=b.ID and b.locale='zhCN' set a.`name`=b.`Name` WHERE  b.`Name`!='';
UPDATE item_template a join item_template_locale b on a.entry=b.ID and b.locale='zhCN' set a.`description`=b.`Description` WHERE  b.`Description`!='';