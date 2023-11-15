SET
    @Entry = 190010,
    @Name = "Warpweaver";
DELETE
FROM `creature_template`
WHERE `entry` = @Entry;

INSERT INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `name`, `subname`, `IconName`, `gossip_menu_id`,
                                 `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `scale`, `rank`, `dmgschool`,
                                 `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `type`, `type_flags`,
                                 `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `HoverHeight`,
                                 `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`,
                                 `ScriptName`)
VALUES (@Entry, 19646, 0, @Name, "Transmogrifier", NULL, 0, 80, 80, 2, 35, 1, 1, 0, 0, 2000, 0, 1, 0, 7, 138936390, 0,
        0, 0, '', 0, 1, 0, 0, 1, 0, 0, 'npc_transmogrifier');

DELETE
FROM `creature_template_locale`
WHERE `entry` IN (@Entry);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`)
VALUES (@Entry, 'koKR', @Name, "변형기"),
       (@Entry, 'frFR', @Name, "Transmogrificateur"),
       (@Entry, 'deDE', @Name, "Transmogrifier"),
       (@Entry, 'zhCN', @Name, "变形者"),
       (@Entry, 'zhTW', @Name, "幻化大師"),
       (@Entry, 'esES', @Name, "Transfigurador"),
       (@Entry, 'esMX', @Name, "Transfigurador"),
       (@Entry, 'ruRU', @Name, "Трансмогрификатор");

SET
    @Entry = 190011,
    @Name = "Ethereal Warpweaver";
DELETE
FROM `creature_template`
WHERE `entry` = @Entry;

INSERT INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `name`, `subname`, `IconName`, `gossip_menu_id`,
                                 `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `scale`, `rank`, `dmgschool`,
                                 `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `type`, `type_flags`,
                                 `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `HoverHeight`,
                                 `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`,
                                 `ScriptName`)
VALUES (@Entry, 19646, 0, @Name, "Transmogrifier", NULL, 0, 80, 80, 2, 35, 1, 1, 0, 0, 2000, 0, 1, 0, 7, 138936390, 0,
        0, 0, '', 0, 1, 0, 0, 1, 0, 0, 'npc_transmogrifier');

DELETE
FROM `creature_template_locale`
WHERE `entry` IN (@Entry);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`)
VALUES (@Entry, 'koKR', @Name, "변형기"),
       (@Entry, 'frFR', @Name, "Transmogrificateur"),
       (@Entry, 'deDE', @Name, "Transmogrifier"),
       (@Entry, 'zhCN', @Name, "变形者"),
       (@Entry, 'zhTW', @Name, "幻化大師"),
       (@Entry, 'esES', @Name, "Transfigurador"),
       (@Entry, 'esMX', @Name, "Transfigurador"),
       (@Entry, 'ruRU', @Name, "Трансмогрификатор");

DELETE
FROM `spell_dbc`
WHERE `ID` = 2000100;
INSERT INTO `spell_dbc` (`ID`, `Category`, `DispelType`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`,
                         `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`,
                         `ShapeshiftMask`, `unk_320_2`, `ShapeshiftExclude`, `unk_320_3`, `Targets`,
                         `TargetCreatureType`, `RequiresSpellFocus`, `FacingCasterFlags`, `CasterAuraState`,
                         `TargetAuraState`, `ExcludeCasterAuraState`, `ExcludeTargetAuraState`, `CasterAuraSpell`,
                         `TargetAuraSpell`, `ExcludeCasterAuraSpell`, `ExcludeTargetAuraSpell`, `CastingTimeIndex`,
                         `RecoveryTime`, `CategoryRecoveryTime`, `InterruptFlags`, `AuraInterruptFlags`,
                         `ChannelInterruptFlags`, `ProcTypeMask`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`,
                         `SpellLevel`, `DurationIndex`, `PowerType`, `ManaCost`, `ManaCostPerLevel`, `ManaPerSecond`,
                         `ManaPerSecondPerLevel`, `RangeIndex`, `Speed`, `ModalNextSpell`, `CumulativeAura`, `Totem_1`,
                         `Totem_2`, `Reagent_1`, `Reagent_2`, `Reagent_3`, `Reagent_4`, `Reagent_5`, `Reagent_6`,
                         `Reagent_7`, `Reagent_8`, `ReagentCount_1`, `ReagentCount_2`, `ReagentCount_3`,
                         `ReagentCount_4`, `ReagentCount_5`, `ReagentCount_6`, `ReagentCount_7`, `ReagentCount_8`,
                         `EquippedItemClass`, `EquippedItemSubclass`, `EquippedItemInvTypes`, `Effect_1`, `Effect_2`,
                         `Effect_3`, `EffectDieSides_1`, `EffectDieSides_2`, `EffectDieSides_3`,
                         `EffectRealPointsPerLevel_1`, `EffectRealPointsPerLevel_2`, `EffectRealPointsPerLevel_3`,
                         `EffectBasePoints_1`, `EffectBasePoints_2`, `EffectBasePoints_3`, `EffectMechanic_1`,
                         `EffectMechanic_2`, `EffectMechanic_3`, `ImplicitTargetA_1`, `ImplicitTargetA_2`,
                         `ImplicitTargetA_3`, `ImplicitTargetB_1`, `ImplicitTargetB_2`, `ImplicitTargetB_3`,
                         `EffectRadiusIndex_1`, `EffectRadiusIndex_2`, `EffectRadiusIndex_3`, `EffectAura_1`,
                         `EffectAura_2`, `EffectAura_3`, `EffectAuraPeriod_1`, `EffectAuraPeriod_2`,
                         `EffectAuraPeriod_3`, `EffectMultipleValue_1`, `EffectMultipleValue_2`,
                         `EffectMultipleValue_3`, `EffectChainTargets_1`, `EffectChainTargets_2`,
                         `EffectChainTargets_3`, `EffectItemType_1`, `EffectItemType_2`, `EffectItemType_3`,
                         `EffectMiscValue_1`, `EffectMiscValue_2`, `EffectMiscValue_3`, `EffectMiscValueB_1`,
                         `EffectMiscValueB_2`, `EffectMiscValueB_3`, `EffectTriggerSpell_1`, `EffectTriggerSpell_2`,
                         `EffectTriggerSpell_3`, `EffectPointsPerCombo_1`, `EffectPointsPerCombo_2`,
                         `EffectPointsPerCombo_3`, `EffectSpellClassMaskA_1`, `EffectSpellClassMaskA_2`,
                         `EffectSpellClassMaskA_3`, `EffectSpellClassMaskB_1`, `EffectSpellClassMaskB_2`,
                         `EffectSpellClassMaskB_3`, `EffectSpellClassMaskC_1`, `EffectSpellClassMaskC_2`,
                         `EffectSpellClassMaskC_3`, `SpellVisualID_1`, `SpellVisualID_2`, `SpellIconID`, `ActiveIconID`,
                         `SpellPriority`, `Name_Lang_enUS`, `Name_Lang_enGB`, `Name_Lang_koKR`, `Name_Lang_frFR`,
                         `Name_Lang_deDE`, `Name_Lang_enCN`, `Name_Lang_zhCN`, `Name_Lang_enTW`, `Name_Lang_zhTW`,
                         `Name_Lang_esES`, `Name_Lang_esMX`, `Name_Lang_ruRU`, `Name_Lang_ptPT`, `Name_Lang_ptBR`,
                         `Name_Lang_itIT`, `Name_Lang_Unk`, `Name_Lang_Mask`, `NameSubtext_Lang_enUS`,
                         `NameSubtext_Lang_enGB`, `NameSubtext_Lang_koKR`, `NameSubtext_Lang_frFR`,
                         `NameSubtext_Lang_deDE`, `NameSubtext_Lang_enCN`, `NameSubtext_Lang_zhCN`,
                         `NameSubtext_Lang_enTW`, `NameSubtext_Lang_zhTW`, `NameSubtext_Lang_esES`,
                         `NameSubtext_Lang_esMX`, `NameSubtext_Lang_ruRU`, `NameSubtext_Lang_ptPT`,
                         `NameSubtext_Lang_ptBR`, `NameSubtext_Lang_itIT`, `NameSubtext_Lang_Unk`,
                         `NameSubtext_Lang_Mask`, `Description_Lang_enUS`, `Description_Lang_enGB`,
                         `Description_Lang_koKR`, `Description_Lang_frFR`, `Description_Lang_deDE`,
                         `Description_Lang_enCN`, `Description_Lang_zhCN`, `Description_Lang_enTW`,
                         `Description_Lang_zhTW`, `Description_Lang_esES`, `Description_Lang_esMX`,
                         `Description_Lang_ruRU`, `Description_Lang_ptPT`, `Description_Lang_ptBR`,
                         `Description_Lang_itIT`, `Description_Lang_Unk`, `Description_Lang_Mask`,
                         `AuraDescription_Lang_enUS`, `AuraDescription_Lang_enGB`, `AuraDescription_Lang_koKR`,
                         `AuraDescription_Lang_frFR`, `AuraDescription_Lang_deDE`, `AuraDescription_Lang_enCN`,
                         `AuraDescription_Lang_zhCN`, `AuraDescription_Lang_enTW`, `AuraDescription_Lang_zhTW`,
                         `AuraDescription_Lang_esES`, `AuraDescription_Lang_esMX`, `AuraDescription_Lang_ruRU`,
                         `AuraDescription_Lang_ptPT`, `AuraDescription_Lang_ptBR`, `AuraDescription_Lang_itIT`,
                         `AuraDescription_Lang_Unk`, `AuraDescription_Lang_Mask`, `ManaCostPct`,
                         `StartRecoveryCategory`, `StartRecoveryTime`, `MaxTargetLevel`, `SpellClassSet`,
                         `SpellClassMask_1`, `SpellClassMask_2`, `SpellClassMask_3`, `MaxTargets`, `DefenseType`,
                         `PreventionType`, `StanceBarOrder`, `EffectChainAmplitude_1`, `EffectChainAmplitude_2`,
                         `EffectChainAmplitude_3`, `MinFactionID`, `MinReputation`, `RequiredAuraVision`,
                         `RequiredTotemCategoryID_1`, `RequiredTotemCategoryID_2`, `RequiredAreasID`, `SchoolMask`,
                         `RuneCostID`, `SpellMissileID`, `PowerDisplayID`, `EffectBonusMultiplier_1`,
                         `EffectBonusMultiplier_2`, `EffectBonusMultiplier_3`, `SpellDescriptionVariableID`,
                         `SpellDifficultyID`) VALUE
    (2000100, 0, 0, 0, 262416, 0, 0, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 31,
     0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1,
     0, 0, 28, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0,
     0, 0, 0, 0, 190011, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 458, 0, 2808, 0, 0,
     'Ethereal Warpweaver', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, '', '', '', '', '',
     '', '', '', '', '', '', '', '', '', '', '', 16712190,
     'Right Click to summon and dismiss your Ethereal Warpweaver.', '', '', '', '', '', '', '', '', '', '', '', '', '',
     '', '', 16712190, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 0, 133, 1500, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
SET @TEXT_ID := 601083;
DELETE
FROM `npc_text`
WHERE `ID` IN (@TEXT_ID, @TEXT_ID + 1);
INSERT INTO `npc_text` (`ID`, `text0_0`)
VALUES (@TEXT_ID,
        'Transmogrification allows you to change how your items look like without changing the stats of the items.\r\nItems used in transmogrification are no longer refundable, tradeable and are bound to you.\r\nUpdating a menu updates the view and prices.\r\n\r\nNot everything can be transmogrified with each other.\r\nRestrictions include but are not limited to:\r\nOnly armor and weapons can be transmogrified\r\nGuns, bows and crossbows can be transmogrified with each other\r\nFishing poles can not be transmogrified\r\nYou must be able to equip both items used in the process.\r\n\r\nTransmogrifications stay on your items as long as you own them.\r\nIf you try to put the item in guild bank or mail it to someone else, the transmogrification is stripped.\r\n\r\nYou can also remove transmogrifications for free at the transmogrifier.'),
       (@TEXT_ID + 1,
        'You can save your own transmogrification sets.\r\n\r\nTo save, first you must transmogrify your equipped items.\r\nThen when you go to the set management menu and go to save set menu,\r\nall items you have transmogrified are displayed so you see what you are saving.\r\nIf you think the set is fine, you can click to save the set and name it as you wish.\r\n\r\nTo use a set you can click the saved set in the set management menu and then select use set.\r\nIf the set has a transmogrification for an item that is already transmogrified, the old transmogrification is lost.\r\nNote that the same transmogrification restrictions apply when trying to use a set as in normal transmogrification.\r\n\r\nTo delete a set you can go to the set\'s menu and select delete set.');

DELETE
FROM `npc_text_locale`
WHERE `ID` IN (@TEXT_ID, @TEXT_ID + 1);
INSERT INTO `npc_text_locale` (`ID`, `Locale`, `Text0_0`)
VALUES (@TEXT_ID, 'koKR',
        '형상변환을 사용하면 아이템의 능력치를 변경하지 않고도 아이템의 모양을 변경할 수 있습니다.\r\n형변환에 사용된 아이템은 더 이상 환불 및 거래가 불가능하며 귀속됩니다.\r\n메뉴를 업데이트하면 보기 및 가격이 업데이트됩니다.\r\n\r\n모든 것을 서로 형상변환할 수 있는 것은 아닙니다.\r\n제한사항에는 다음이 포함되지만 이에 국한되지는 않습니다:\r\n갑옷과 무기만 형상변환할 수 있습니다.\r\n총, 활, 석궁은 서로 형상변환할 수 있습니다 \r\n낚싯대는 형상변환할 수 없습니다.\r\n이 과정에서 사용되는 두 아이템을 장착할 수 있어야 합니다.\r\n\r\n변환은 아이템을 소유하고 있는 동안 유지됩니다.\r\n시도하면 아이템을 길드 은행에 넣거나 다른 사람에게 우편으로 보내면 형상변환이 제거됩니다.\r\n\r\n변환기에서 무료로 형상변환을 제거할 수도 있습니다.'),
       (@TEXT_ID + 1, 'koKR',
        '나만의 형상변환 세트를 저장할 수 있습니다.\r\n\r\n저장하려면 먼저 장착한 아이템을 형상변환해야 합니다.\r\n그 다음 세트 관리 메뉴에서 세트 저장 메뉴로 이동하면\r\n모든 아이템이 변환한 항목이 표시되어 저장 중인 항목을 볼 수 있습니다.\r\n세트가 괜찮다고 생각되면 클릭하여 세트를 저장하고 원하는 이름을 지정할 수 있습니다.\r\n\r\n세트를 사용하려면 세트 관리 메뉴에서 저장된 세트를 클릭한 다음 세트 사용을 선택할 수 있습니다.\r\n세트에 이미 형상변환된 아이템에 대한 형상변환이 있는 경우 이전 형상변환은 손실됩니다.\r\n다음과 같은 경우 동일한 형상변환 제한이 적용됩니다. 일반 형상변환에서와 같이 세트를 사용하려고 합니다.\r\n\r\n세트를 삭제하려면 세트 메뉴로 이동하여 세트 삭제를 선택하면 됩니다.'),
       (@TEXT_ID, 'frFR',
        'La transmogrification vous permet de modifier l''apparence de vos objets sans modifier les statistiques des objets.\\r\\nLes objets utilisés dans la transmogrification ne sont plus remboursables, échangeables et vous sont liés.\\r\\nLa mise à jour d''un menu met à jour la vue et les prix.\\ r\\n\\r\\nTout ne peut pas être transmogrifié les uns avec les autres.\\r\\nLes restrictions incluent, mais ne sont pas limitées à :\\r\\nSeules les armures et les armes peuvent être transmogrifiées\\r\\nLes fusils, les arcs et les arbalètes peuvent être transmogrifiés les uns avec les autres \\r\\nLes cannes à pêche ne peuvent pas être transmogrifiées\\r\\nVous devez être capable d''équiper les deux objets utilisés dans le processus.\\r\\n\\r\\nLes transmogrifications restent sur vos objets tant que vous les possédez.\\r\\nSi vous essayez pour mettre l''objet dans la banque de guilde ou l''envoyer à quelqu''un d''autre, la transmogrification est supprimée.\\r\\n\\r\\nVous pouvez également supprimer les transmogrifications gratuitement sur le transmogrificateur.'),
       (@TEXT_ID + 1, 'frFR',
        'Vous pouvez enregistrer vos propres ensembles de transmogrification.\r\n\r\nPour enregistrer, vous devez d''abord transmogrifier vos objets équipés.\r\nEnsuite, lorsque vous accédez au menu de gestion des ensembles et accédez au menu de sauvegarde,\r\ntous les objets vous avez transmogrifié sont affichés afin que vous puissiez voir ce que vous enregistrez.\r\nSi vous pensez que l''ensemble est correct, vous pouvez cliquer pour enregistrer l''ensemble et le nommer comme vous le souhaitez.\r\n\r\nPour utiliser un ensemble, vous pouvez cliquer sur l''ensemble enregistré dans le menu de gestion de l''ensemble, puis sélectionnez utiliser l''ensemble.\r\nSi l''ensemble a une transmogrification pour un élément déjà transmogrifié, l''ancienne transmogrification est perdue.\r\nNotez que les mêmes restrictions de transmogrification s''appliquent lorsque essayer d''utiliser un ensemble comme dans une transmogrification normale.\r\n\r\nPour supprimer un ensemble, vous pouvez aller dans le menu de l''ensemble et sélectionner supprimer l''ensemble.'),
       (@TEXT_ID, 'deDE',
        'Mit der Transmogrifizierung können Sie das Aussehen Ihrer Gegenstände ändern, ohne die Werte der Gegenstände zu ändern.\r\nBei der Transmogrifizierung verwendete Gegenstände sind nicht mehr erstattungsfähig, handelbar und an Sie gebunden.\r\nDurch das Aktualisieren eines Menüs werden die Ansicht und die Preise aktualisiert.\ r\n\r\nNicht alles kann miteinander transmogrifiziert werden.\r\nZu den Einschränkungen gehören unter anderem:\r\nNur Rüstungen und Waffen können miteinander transmogrifiziert werden.\r\nWaffen, Bögen und Armbrüste können miteinander transmogrifiziert werden \r\nAngelruten können nicht transmogrifiziert werden.\r\nSie müssen in der Lage sein, beide dabei verwendeten Gegenstände auszurüsten.\r\n\r\nTransmogrifikationen bleiben auf Ihren Gegenständen, solange Sie sie besitzen.\r\nWenn Sie es versuchen Um den Gegenstand in die Gildenbank zu legen oder an jemand anderen zu verschicken, wird die Transmogrifikation entfernt.\r\n\r\nSie können Transmogrifikationen auch kostenlos beim Transmogrifizierer entfernen.'),
       (@TEXT_ID + 1, 'deDE',
        'Sie können Ihre eigenen Transmogrifikationssets speichern.\r\n\r\nZum Speichern müssen Sie zuerst Ihre ausgerüsteten Gegenstände transmogrifizieren.\r\nWenn Sie dann zum Set-Verwaltungsmenü gehen und zum Set-Speichermenü gehen,\r\nalle Gegenstände Sie werden angezeigt, sodass Sie sehen, was Sie speichern.\r\nWenn Sie der Meinung sind, dass das Set in Ordnung ist, können Sie auf klicken, um das Set zu speichern und es nach Ihren Wünschen zu benennen.\r\n\r\nSo verwenden Sie ein Set Sie können im Setverwaltungsmenü auf das gespeicherte Set klicken und dann „Set verwenden“ auswählen.\r\nWenn das Set eine Transmogrifizierung für einen Gegenstand hat, der bereits transmogrifiziert ist, geht die alte Transmogrifizierung verloren.\r\nBeachten Sie, dass die gleichen Transmogrifizierungsbeschränkungen gelten, wenn Ich versuche, ein Set wie bei der normalen Transmogrifizierung zu verwenden.\r\n\r\nUm ein Set zu löschen, gehen Sie zum Menü des Sets und wählen Sie „Set löschen“.'),
       (@TEXT_ID, 'zhCN',
        '变形允许您更改物品的外观，而无需更改物品的统计信息。\r\n变形中使用的物品不再可退款、可交易并且与您绑定。\r\n更新菜单会更新视图和价格。\ r\n\r\n并不是所有东西都可以互相变形。\r\n限制包括但不限于：\r\n只有盔甲和武器可以变形\r\n枪、弓、弩可以互相变形 \r\n鱼竿无法变形\r\n您必须能够装备在此过程中使用的两个物品。\r\n\r\n只要您拥有它们，变形就会保留在您的物品上。\r\n如果您尝试 将物品放入公会银行或邮寄给其他人时，变形会被剥离。\r\n\r\n您也可以在变形器处免费移除变形。'),
       (@TEXT_ID + 1, 'zhCN',
        '您可以保存自己的变形套装。\r\n\r\n要保存，首先必须变形您装备的物品。\r\n然后当您进入套装管理菜单并进入保存套装菜单时，\r\n所有物品 将显示您已经变形的内容，以便您看到正在保存的内容。\r\n如果您认为该集合没问题，可以单击以保存该集合并根据需要命名它。\r\n\r\n要使用您的集合 可以在集合管理菜单中单击已保存的集合，然后选择使用集合。\r\n如果该集合对已变形的项目有变形，则旧的变形将丢失。\r\n请注意，以下情况适用相同的变形限制： 尝试像正常变形一样使用集合。\r\n\r\n要删除集合，您可以转到集合的菜单并选择删除集合。'),
       (@TEXT_ID, 'zhTW',
        '變身術讓你能夠改變物品的外觀，而不改變物品的屬性。\r\n在變身術中使用的物品將不再可退款、可交易，並且將綁定於你。\r\n更新菜單將更新視圖和價格。\r\n\r\n並非所有物品都可以互相變身。\r\n限制條件包括但不限於：\r\n只有盔甲和武器可以變身。\r\n槍械、弓和弩可以互相變身。\r\n釣魚竿無法進行變身。\r\n你必須能夠裝備在此過程中使用的兩件物品。\r\n\r\n變身效果會持續存在於你的物品上，只要你擁有它們。\r\n如果你試圖將物品放入公會銀行或郵寄給他人，將會去除變身效果。\r\n\r\n你也可以在變身術轉化師處免費移除變身效果。'),
       (@TEXT_ID + 1, 'zhTW',
        '你可以保存自己的變身套裝。\r\n\r\n要保存，首先必須對你裝備的物品進行變身。\r\n然後，當你進入套裝管理菜單並進入保存套裝菜單時，\r\n所有你已經變身的物品都會顯示出來，這樣你就可以看到你正在保存的內容。\r\n如果你認為這套裝很好，你可以點擊保存套裝並按你的意願命名。\r\n\r\n要使用一個套裝，你可以在套裝管理菜單中點擊已保存的套裝，然後選擇使用套裝。\r\n如果該套裝中的物品已經有變身效果，舊的變身效果將會遺失。\r\n請注意，當嘗試使用套裝時，與普通變身相同的限制將適用。\r\n\r\n要刪除一個套裝，你可以進入套裝的菜單，然後選擇刪除套裝。'),
       (@TEXT_ID, 'esES',
        'La transfiguración permite cambiar la apariencia de tus objetos sin cambiar sus estadísticas.\r\nLos objetos utilizados en la transfiguración ya no son reembolsables, intercambiables y están vinculados a usted.\r\nActualizar un menú actualiza la vista y los precios.\ r\n\r\nNo todo se puede transfigurar entre sí.\r\nLas restricciones incluyen, pero no se limitan a:\r\nSolo se pueden transfigurar armaduras y armas\r\nArmas, arcos y ballestas se pueden transfigurar entre sí \r\nLas cañas de pescar no se pueden transfigurar.\r\nDebes poder equipar ambos elementos utilizados en el proceso.\r\n\r\nLas transfiguraciones permanecen en tus elementos mientras los tengas.\r\nSi lo intentas para poner el artículo en el banco del gremio o enviarlo por correo a otra persona, la transfiguración se elimina.\r\n\r\nTambién puedes eliminar las transfiguraciones de forma gratuita en el transfigurador.'),
       (@TEXT_ID + 1, 'esES',
        'Puede guardar sus propios conjuntos de transfiguración.\r\n\r\nPara guardar, primero debe transfigurar sus elementos equipados.\r\nLuego, cuando vaya al menú de administración de conjuntos y vaya al menú Guardar conjunto,\r\ntodos los elementos que ha transfigurado se muestran para que vea lo que está guardando.\r\nSi cree que el conjunto está bien, puede hacer clic para guardar el conjunto y nombrarlo como desee.\r\n\r\nPara usar un conjunto puede hacer clic en el conjunto guardado en el menú de administración de conjuntos y luego seleccionar usar conjunto.\r\nSi el conjunto tiene una transfiguración para un elemento que ya está transfigurado, la transfiguración anterior se pierde.\r\nTenga en cuenta que se aplican las mismas restricciones de transfiguración cuando tratando de usar un conjunto como en la transfiguración normal.\r\n\r\nPara eliminar un conjunto, puede ir al menú del conjunto y seleccionar eliminar conjunto.'),
       (@TEXT_ID, 'esMX',
        'La transfiguración permite cambiar la apariencia de tus objetos sin cambiar sus estadísticas.\r\nLos objetos utilizados en la transfiguración ya no son reembolsables, intercambiables y están vinculados a usted.\r\nActualizar un menú actualiza la vista y los precios.\ r\n\r\nNo todo se puede transfigurar entre sí.\r\nLas restricciones incluyen, pero no se limitan a:\r\nSolo se pueden transfigurar armaduras y armas\r\nArmas, arcos y ballestas se pueden transfigurar entre sí \r\nLas cañas de pescar no se pueden transfigurar.\r\nDebes poder equipar ambos elementos utilizados en el proceso.\r\n\r\nLas transfiguraciones permanecen en tus elementos mientras los tengas.\r\nSi lo intentas para poner el artículo en el banco del gremio o enviarlo por correo a otra persona, la transfiguración se elimina.\r\n\r\nTambién puedes eliminar las transfiguraciones de forma gratuita en el transfigurador.'),
       (@TEXT_ID + 1, 'esMX',
        'Puede guardar sus propios conjuntos de transfiguración.\r\n\r\nPara guardar, primero debe transfigurar sus elementos equipados.\r\nLuego, cuando vaya al menú de administración de conjuntos y vaya al menú Guardar conjunto,\r\ntodos los elementos que ha transfigurado se muestran para que vea lo que está guardando.\r\nSi cree que el conjunto está bien, puede hacer clic para guardar el conjunto y nombrarlo como desee.\r\n\r\nPara usar un conjunto puede hacer clic en el conjunto guardado en el menú de administración de conjuntos y luego seleccionar usar conjunto.\r\nSi el conjunto tiene una transfiguración para un elemento que ya está transfigurado, la transfiguración anterior se pierde.\r\nTenga en cuenta que se aplican las mismas restricciones de transfiguración cuando tratando de usar un conjunto como en la transfiguración normal.\r\n\r\nPara eliminar un conjunto, puede ir al menú del conjunto y seleccionar eliminar conjunto.'),
       (@TEXT_ID, 'ruRU',
        'Трансмогрификация позволяет вам изменить внешний вид ваших предметов без изменения характеристик предметов.\r\nПредметы, использованные в трансмогрификации, больше не подлежат возврату, обмену и привязаны к вам.\r\nОбновление меню обновляет вид и цены.\ r\n\r\nНе все можно трансмогрифицировать друг с другом.\r\nОграничения включают, но не ограничиваются:\r\nМожно трансмогрифицировать только доспехи и оружие\r\nОружие, луки и арбалеты можно трансмогрифицировать друг с другом \r\nУдочки не могут быть трансмогрифицированы\r\nВы должны быть в состоянии экипировать оба предмета, используемые в процессе.\r\n\r\nПреобразования остаются на ваших предметах, пока они у вас есть.\r\nЕсли вы попытаетесь чтобы положить предмет в банк гильдии или отправить кому-то другому, трансмогрификация снимается.\r\n\r\nВы также можете бесплатно удалить трансмогрификацию в трансмогрификаторе.'),
       (@TEXT_ID + 1, 'ruRU',
        'Вы можете сохранять свои собственные наборы для трансмогрификации.\r\n\r\nЧтобы сохранить, сначала вы должны трансмогрифицировать свои экипированные предметы.\r\nЗатем, когда вы перейдете в меню управления наборами и перейдете в меню сохранения набора,\r\nвсе предметы которые вы преобразовали, отображаются так, что вы видите, что вы сохраняете.\r\nЕсли вы считаете, что набор в порядке, вы можете нажать, чтобы сохранить набор и назвать его по своему желанию.\r\n\r\nЧтобы использовать набор, можно щелкнуть сохраненный набор в меню управления набором, а затем выбрать использовать набор.\r\nЕсли в наборе есть трансмогрификация предмета, который уже трансмогрифицирован, старая трансмогрификация теряется.\r\nОбратите внимание, что те же ограничения на трансмогрификацию применяются, когда пытается использовать набор, как при обычной трансмогрификации.\r\n\r\nЧтобы удалить набор, вы можете перейти в меню набора и выбрать удалить набор.');

SET @STRING_ENTRY := 11100;
DELETE
FROM `acore_string`
WHERE `entry` IN
      (@STRING_ENTRY + 0, @STRING_ENTRY + 1, @STRING_ENTRY + 2, @STRING_ENTRY + 3, @STRING_ENTRY + 4, @STRING_ENTRY + 5,
       @STRING_ENTRY + 6, @STRING_ENTRY + 7, @STRING_ENTRY + 8, @STRING_ENTRY + 9, @STRING_ENTRY + 10,
       @STRING_ENTRY + 11, @STRING_ENTRY + 12, @STRING_ENTRY + 13, @STRING_ENTRY + 14, @STRING_ENTRY + 15,
       @STRING_ENTRY + 16);
INSERT INTO `acore_string` (`entry`, `content_default`, `locale_koKR`, `locale_frFR`, `locale_deDE`, `locale_zhCN`,
                            `locale_zhTW`, `locale_esES`, `locale_esMX`, `locale_ruRU`)
VALUES (11100, 'Item successfully transmogrified.', '성공적으로 형상변환된 아이템', 'Objet transmogrifié avec succès',
        'Gegenstand erfolgreich transmogrifiziert', '物品变形成功', '物品變身成功。', 'Objeto transfigurado con éxito',
        'Objeto transfigurado con éxito', 'Предмет успешно трансмогрифицирован'),
       (11101, 'Equipment slot is empty.', '장비 슬롯이 비어 있습니다.', 'L''emplacement d''équipement est vide.',
        'Der Ausrüstungsplatz ist leer.', '装备槽是空的。', '裝備欄位是空的。', 'La ranura de equipo está vacía.',
        'La ranura de equipo está vacía.', 'Слот снаряжения пуст.'),
       (11102, 'Invalid source item selected.', '선택한 소스 요소가 잘못되었습니다.', 'Élément source sélectionné non valide.',
        'Ungültiges ausgewähltes Quellelement.', '所选源元素无效。', '選擇的來源物品無效。',
        'Elemento fuente seleccionado no válido.', 'Elemento fuente seleccionado no válido.',
        'Недопустимый выбранный исходный элемент.'),
       (11103, 'Source item does not exist.', '소스 요소가 존재하지 않습니다.', 'L''élément source n''existe pas.',
        'Das Quellelement existiert nicht.', '源元素不存在。', '來源物品不存在。', 'El elemento de origen no existe.',
        'El elemento de origen no existe.', 'Исходный элемент не существует.'),
       (11104, 'Destination item does not exist.', '대상 요소가 존재하지 않습니다.', 'L''élément cible n''existe pas.',
        'Das Zielelement existiert nicht.', '目标元素不存在。', '目標物品不存在。', 'El elemento de destino no existe.',
        'El elemento de destino no existe.', 'Целевой элемент не существует.'),
       (11105, 'Selected items are invalid.', '선택한 항목이 잘못되었습니다.', 'Les éléments sélectionnés ne sont pas valides',
        'Die ausgewählten Elemente sind ungültig', '所选项目无效', '所選物品無效。',
        'Los elementos seleccionados no son válidos', 'Los elementos seleccionados no son válidos',
        'Выбранные элементы недействительны'),
       (11106, 'You don''t have enough money.', '당신은 돈이 충분하지 않습니다.', 'Vous n''avez pas assez d''argent.',
        'Du hast nicht genug Geld.', '你没有足够的钱。', '你沒有足夠的金錢。', 'No tienes suficiente dinero.',
        'No tienes suficiente dinero.', 'У вас недостаточно денег.'),
       (11107, 'You don''t have enough tokens.', '칩이 충분하지 않습니다.', 'Vous n''avez pas assez de jetons.',
        'Du hast nicht genug Chips.', '你的筹码不够。', '你沒有足夠的代幣。', 'No tienes suficientes fichas.',
        'No tienes suficientes fichas.', 'У вас недостаточно фишек.'),
       (11108, 'All your transmogrifications were removed.', '모든 형상변환을 제거했습니다.',
        'Suppression de toutes vos transmogrifications', 'Alle deine Transmogrifikationen wurden entfernt',
        '删除了你所有的变形', '你的所有變身效果都被移除了。', 'Se eliminaron todas tus transfiguraciones',
        'Se eliminaron todas tus transfiguraciones', 'Удалены все ваши трансмогрификации'),
       (11109, 'No transmogrification found.', '변형이 없습니다.', 'Aucune transfiguration trouvée.',
        'Keine Verwandlung gefunden.', '没有发现变形。', '找不到變身效果。', 'No se encontró transfiguración.',
        'No se encontró transfiguración.', 'Трансфигурация не найдена.'),
       (11110, 'Invalid name inserted.', '삽입된 이름이 잘못되었습니다.', 'Nom inséré non valide.', 'Ungültiger eingegebener Name.',
        '插入的名称无效。', '插入的名稱無效。', 'Nombre insertado no válido.', 'Nombre insertado no válido.',
        'Недопустимое вставленное имя.'),
       (11111, 'Showing transmogrified items, relog to update the current area.',
        '형상변환된 아이템이 표시되며, 현재 영역을 새로고침하려면 다시 로그인하세요.',
        'En affichant les objets transmogrifiés, reconnectez-vous pour actualiser la zone actuelle.',
        'Transmogrifizierte Gegenstände werden angezeigt. Melden Sie sich erneut an, um den aktuellen Bereich zu aktualisieren.',
        '显示已变形物品，重新登录即可刷新当前区域。', '顯示已變身的物品，重新登錄以更新當前區域。',
        'Mostrando elementos transfigurados, vuelva a iniciar sesión para actualizar el área actual.',
        'Mostrando elementos transfigurados, vuelva a iniciar sesión para actualizar el área actual.',
        'Отображение трансмогрифицированных предметов. Войдите в систему еще раз, чтобы обновить текущую область.'),
       (11112, 'Hiding transmogrified items, relog to update the current area.',
        '형상변환된 아이템을 숨기고 다시 로그인하여 현재 영역을 새로 고칩니다.',
        'Masquez les objets transmogrifiés, reconnectez-vous pour actualiser la zone actuelle.',
        'Transmogrifizierte Gegenstände ausblenden, erneut anmelden, um den aktuellen Bereich zu aktualisieren.',
        '隐藏变形物品，重新登录以刷新当前区域。', '隱藏已變身的物品，重新登錄以更新當前區域。',
        'Ocultar elementos transfigurados, volver a iniciar sesión para actualizar el área actual.',
        'Ocultar elementos transfigurados, volver a iniciar sesión para actualizar el área actual.',
        'Скройте трансмогрифицированные предметы, войдите в систему, чтобы обновить текущую область.'),
       (11113, 'The selected item is not suitable for transmogrification.', '선택한 항목은 변형에 적합하지 않습니다.',
        'L''objet sélectionné ne convient pas à la métamorphose.',
        'Der ausgewählte Gegenstand ist nicht für die Verwandlung geeignet.', '所选项目不适合变形。',
        '所選物品不適合進行變身。', 'El elemento seleccionado no es adecuado para la transfiguración.',
        'El elemento seleccionado no es adecuado para la transfiguración.',
        'Выбранный предмет не подходит для преображения.'),
       (11114, 'The selected item cannot be used for transmogrification of the target player.',
        '선택한 아이템은 대상 플레이어의 형상변환에 사용할 수 없습니다.',
        'L''objet sélectionné ne peut pas être utilisé pour la transmogrification du joueur ciblé',
        'Der ausgewählte Gegenstand kann nicht für die Transmogrifizierung des Zielspielers verwendet werden',
        '所选物品不能用于目标玩家的变身', '所選物品不能用於目標玩家的變身效果。',
        'El elemento seleccionado no se puede usar para la transfiguración del jugador objetivo',
        'El elemento seleccionado no se puede usar para la transfiguración del jugador objetivo',
        'Выбранный предмет нельзя использовать для трансмогрификации целевого игрока.'),
       (11115, 'Performing transmog appearance sync...', '형상변환 모양 동기화 수행 중...',
        'Exécution de la synchronisation de l''apparence de transmogrification...',
        'Synchronisierung des Transmog-Erscheinungsbilds wird durchgeführt ...', '正在执行 Transmog 外观同步...',
        '正在執行外觀同步變身操作...', 'Realizando sincronización de apariencia de transfiguración...',
        'Realizando sincronización de apariencia de transfiguración...',
        'Выполнение синхронизации внешнего вида Transmog...'),
       (11116, 'Appearance sync complete.', '전체 모양 동기화', 'Synchronisation complète de l''apparence',
        'Vollständige Synchronisierung des Erscheinungsbilds', '完全外观同步', '外觀同步變身操作完成。',
        'Sincronización de apariencia completa', 'Sincronización de apariencia completa',
        'Полная синхронизация внешнего вида');

DELETE
FROM `command`
WHERE `name` IN ('transmog', 'transmog add', 'transmog sync', 'transmog add set', 'transmog portable');
INSERT INTO `command` (`name`, `security`, `help`)
VALUES ('transmog', 0, 'Syntax: .transmog <on/off>\nAllows seeing transmogrified items and the transmogrifier NPC.'),
       ('transmog add', 1, 'Syntax: .transmog add $player $item\nAdds an item to a player\'s appearance collection.'),
       ('transmog sync', 0, 'Syntax: .transmog sync\nSyncs transmog addon appearances with the server.'),
       ('transmog add set', 1,
        'Syntax: .transmog add set $player $itemSet\nAdds items of an item set to a player\'s appearance collection.'),
       ('transmog portable', 1,
        'Syntax: .transmog portable \nSummons the Ethereal Warpweaver, a portable version of the transmogrification NPC.');
