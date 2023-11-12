print(">>Script: Player_First_Login_Learn_weapon_skills...OK")



--[[武器技能ID
		 单手斧:196
		 双手斧:197
		 单手锤:198
		 双手锤:199
		 长柄武器(需要等级:20):200
		 单手剑:201
		 双手剑:202
		 法杖:227
		 弓:264
		 枪械:266
		 匕首:1180
		 投掷:2567
		 弩:5011
		 拳套:15590
]]--

local SaManSkill={196,197,199,1180,15590}					--萨满武器技能
local ZhanShiSkill={199,200,227,264,266,1180,5011,15590}	--战士武器技能
local ShengQiShiSkill={196,197,199,200}						--圣骑士武器技能
local LieRenSkill={200,202,227,264,266,1180,2567,5011,15590}--猎人武器技能
local DaoZeiSkill={196,198,201,264,266,5011,15590}			--盗贼武器技能
local MuShiSkill={1180}										--牧师武器技能
local SiWangQiShiSkill={198,199}							--死亡骑士武器技能
local FaShiSkill={201,1180}									--法师武器技能
local ShuShiSkill={201}										--术士武器技能
local DeLuYiSkill={199,200,1180,15590}						--德鲁伊武器技能



local CLASS_WARRIOR 		= 1		--战士
local CLASS_PALADIN			= 2		--圣骑士
local CLASS_HUNTER			= 3		--猎人
local CLASS_ROGUE			= 4		--盗贼
local CLASS_PRIEST			= 5		--牧师
local CLASS_DEATH_KNIGHT	= 6		--死亡骑士
local CLASS_SHAMAN			= 7		--萨满
local CLASS_MAGE			= 8		--法师
local CLASS_WARLOCK			= 9		--术士
local CLASS_DRUID			= 11	--德鲁伊



local function PlayerFirstLogin(event, player)--玩家首次登录
	if(player:GetClass()==CLASS_SHAMAN) then		--萨满
		for i=1,#SaManSkill do
			player:LearnSpell(SaManSkill[i])
		end
	elseif(player:GetClass()==CLASS_WARRIOR) then	--战士
		for i=1,#ZhanShiSkill do
			player:LearnSpell(ZhanShiSkill[i])
		end
	elseif(player:GetClass()==CLASS_PALADIN) then	--圣骑士
		for i=1,#ShengQiShiSkill do
			player:LearnSpell(ShengQiShiSkill[i])
		end
	elseif(player:GetClass()==CLASS_HUNTER) then	--猎人
		for i=1,#LieRenSkill do
			player:LearnSpell(LieRenSkill[i])
		end
	elseif(player:GetClass()==CLASS_ROGUE) then	--盗贼
		for i=1,#DaoZeiSkill do
			player:LearnSpell(DaoZeiSkill[i])
		end
	elseif(player:GetClass()==CLASS_PRIEST) then	--牧师
		for i=1,#MuShiSkill do
			player:LearnSpell(MuShiSkill[i])
		end
	elseif(player:GetClass()==CLASS_DEATH_KNIGHT) then	--死亡骑士
		for i=1,#SiWangQiShiSkill do
			player:LearnSpell(SiWangQiShiSkill[i])
		end
	elseif(player:GetClass()==CLASS_MAGE) then	--法师
		for i=1,#FaShiSkill do
			player:LearnSpell(FaShiSkill[i])
		end
	elseif(player:GetClass()==CLASS_WARLOCK) then	--术士
		for i=1,#ShuShiSkill do
			player:LearnSpell(ShuShiSkill[i])
		end
	elseif(player:GetClass()==CLASS_DRUID) then	--德鲁伊
		for i=1,#DeLuYiSkill do
			player:LearnSpell(DeLuYiSkill[i])
		end
	end

end


RegisterPlayerEvent(30, PlayerFirstLogin)--玩家首次登录
