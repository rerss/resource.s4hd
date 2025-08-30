require "Resources/Script/ActorStates_Constants.lua"
require "Resources/Script/AttackInfo_Constants.lua"

require "Resources/Script/_Weapon_DemonicKnuckle_Atk.lua" -- 데모닉 너클.
require "Resources/Script/_Weapon_BustShotGunMK2_Atk.lua" -- 버스트 샷건 MK2.
require "Resources/Script/_Weapon_ChainLightGunMk2_Atk.lua" -- 체인 라이트닝 MK2

require "Resources/Script/_Esper_Action_Atk.lua" -- 에스퍼 스킬

--[[ [배경 오브젝트 파괴 데미지 설정값] 하단의 데미지값만 적용됨!!
		DESTROY_BLASTOBJECT_IMPOSSIBLE		,
		DESTROY_BLASTOBJECT_DAMAGE_5		,
		DESTROY_BLASTOBJECT_DAMAGE_10		,
		DESTROY_BLASTOBJECT_DAMAGE_20		,
		DESTROY_BLASTOBJECT_DAMAGE_30		,
		DESTROY_BLASTOBJECT_DAMAGE_50		,
		DESTROY_BLASTOBJECT_DAMAGE_70		,
		DESTROY_BLASTOBJECT_DAMAGE_100		,
		DESTROY_BLASTOBJECT_DAMAGE_200		,
		DESTROY_BLASTOBJECT_DAMAGE_300		,
		DESTROY_BLASTOBJECT_DAMAGE_400		,
-- ]]


function AttackAttribIndexer_Run()

	local currAttackAttrib;

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PLASMA_SWORD_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PLASMA_SWORD_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_PLASMA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PLASMA_SWORD_STAND_WEAK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PLASMA_SWORD_STAND_WEAK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_PLASMA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PLASMA_SWORD_STAND_STRONG
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PLASMA_SWORD_STAND_STRONG );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_PLASMA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 300, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PLASMA_SWORD_ATTACK2_WEAK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PLASMA_SWORD_ATTACK2_WEAK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_PLASMA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PLASMA_SWORD_ATTACK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PLASMA_SWORD_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_PLASMA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PLASMA_SWORD_JUMP_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PLASMA_SWORD_JUMP_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_PLASMA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PLASMA_SWORD_JUMP
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PLASMA_SWORD_JUMP );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_PLASMA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SUBMACHINE_GUN
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SUBMACHINE_GUN );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SUBMACHINE_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/gun_blast1_1.seq", "Resources/Effects/gun_blast1_1.seq", "Resources/Sound/smg_blast.ogg", "Gun_L_Fire_Dummy" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/gun_blast1_1.seq", "Resources/Effects/gun_blast1_1.seq", "", "Gun_R_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Gun_L_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_sub.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_MACHINE_GUN_LOWER
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_MACHINE_GUN_LOWER );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MACHINE_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "", "", "", "HW_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "HW_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_heavy.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_MACHINE_GUN_MIDDLE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_MACHINE_GUN_MIDDLE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MACHINE_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/hmg_hit.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "", "", "", "HW_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "HW_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_heavy.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_MACHINE_GUN_UPPER
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_MACHINE_GUN_UPPER );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MACHINE_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/hmg_hit.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "", "", "", "HW_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "HW_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_heavy.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_AIMED_SHOT
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_AIMED_SHOT );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_RIFLE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Effects/skill_gunner_chargeshot_hit_wall.seq", "Resources/Sound/rail_attack.ogg", "Resources/Sound/rail_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_rail.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_AIMED_SHOT_2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_AIMED_SHOT_2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_RIFLE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Effects/skill_gunner_chargeshot_hit_max_wall.seq", "Resources/Sound/rail_attack.ogg", "Resources/Sound/rail_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_rail.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_MINE_LAUNCHER
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_MINE_LAUNCHER );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_100 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MINE_LAUNCHER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_mine.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_EARTH_BOMBER
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_EARTH_BOMBER );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_EARTH_BOMB );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_earthquake_bomber.tga", 32, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_LIGHTNING_BOMBER
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_LIGHT_BOMBER );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_LIGHT_BOMB );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_lightning_bomber.tga", 32, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_MIND_ENERGY
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_MIND_ENERGY );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MIND_ENERGY );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_mind_energy.tga", 32, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SENTRYGUN_MACHINE_GUN
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SENTRYGUN_MACHINE_GUN );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SENTRYGUN_BUILDER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/skill_hacker_sentrygun_3_fire.seq", "Resources/Effects/skill_hacker_sentrygun_3_fire.seq", "Resources/Sound/sentrygun_blast.ogg", "Object335" );
	currAttackAttrib:SetGunTracerAttachNode	( "Object335", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sentry_gun.tga", 32, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 120, 800, 1.0 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BOUND_BLOW
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BOUND_BLOW );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BOUND_BLOW );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/mapeffect_blast_stone.seq", "Resources/Effects/mapeffect_blast_stone.seq", "Resources/Sound/wall_destroy.ogg", "Resources/Sound/wall_destroy.ogg"  );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_selfkill.tga", 32, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KILL_ONESELF
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KILL_ONESELF );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KILL_ONESELF );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_selfkill.tga", 32, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SENTIWALL_WAVE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SENTIWALL_WAVE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SENTIWALL_BUILDER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/skill_hacker_sentrygun_3_fire.seq", "Resources/Effects/skill_hacker_sentrygun_3_fire.seq", "Resources/Sound/sentrygun_blast.ogg", "Object335" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_senti_wall.tga", 32, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SENTINEL_WAVE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SENTINEL_WAVE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SENTINEL_BUILDER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetAttackSequence		( "Resources/Effects/skill_gunner_electronic_bomb_3.seq", "" );
	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/skill_hacker_sentrygun_3_fire.seq", "Resources/Effects/skill_hacker_sentrygun_3_fire.seq", "Resources/Sound/sentrygun_blast.ogg", "Object335" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_senti_wall.tga", 32, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_REVOLVER
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_REVOLVER );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_REVOLVER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_revolver_fire.seq", "Resources/Effects/weapon_revolver_fire.seq", "Resources/Sound/revo_blast.ogg", "Revolver_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Revolver_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_revolver.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_CANNONADE_SHOT
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_CANNONADE_SHOT );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_CANNONADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/weapon_canon_hit.seq", "Resources/Effects/skill_gunner_electronic_bomb_3.seq", "Resources/Sound/brail_attack.ogg", "Resources/Sound/brail_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_cannonade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_CANNONADE_SHOT_2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_CANNONADE_SHOT_2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_100 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_CANNONADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/weapon_canon_hit_max.seq", "Resources/Effects/skill_gunner_electronic_bomb_3.seq", "Resources/Sound/brail_attack.ogg", "Resources/Sound/brail_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_cannonade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COUNTER_SWORD_COUNTER_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COUNTER_SWORD_COUNTER_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_COUNTER_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COUNTER_SWORD_COUNTER_ATTACK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COUNTER_SWORD_COUNTER_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_30 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_COUNTER_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 800, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COUNTER_SWORD_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COUNTER_SWORD_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_COUNTER_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COUNTER_SWORD_ATTACK1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COUNTER_SWORD_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_COUNTER_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COUNTER_SWORD_ATTACK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COUNTER_SWORD_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_COUNTER_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COUNTER_SWORD_ATTACK3
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COUNTER_SWORD_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_COUNTER_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COUNTER_SWORD_ATTACK4
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COUNTER_SWORD_ATTACK4 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_COUNTER_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COUNTER_SWORD_JUMPDASH
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COUNTER_SWORD_JUMPDASH );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_COUNTER_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_power.ogg", "Resources/Sound/bsword_power.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_MINDSTORM_ATTACK1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_MINDSTORM_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MIND_STROM );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_mind_storm.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_MINDSTORM_ATTACK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_MINDSTORM_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MIND_STROM );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/revo_hit.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_revolver_fire.seq", "Resources/Effects/weapon_revolver_fire.seq", "Resources/Sound/revo_blast.ogg", "Revolver_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Revolver_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_mind_storm.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SMG2 (세미 라이플)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SMG2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SMG2 );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/gun_blast1_1.seq", "Resources/Effects/gun_blast1_1.seq", "Resources/Sound/smg2_blast.ogg", "Smg_02_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Smg_02_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_semi_rifle.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SMG2_HOMING (호밍 라이플)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SMG2_HOMING );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SMG2_HOMING );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/homing_hit.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_homing_shot.seq", "Resources/Effects/weapon_homing_shot.seq", "Resources/Sound/homing_shot.ogg", "Smg_02_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Smg_02_Fire_Dummy", "Resources/Effects/weapon_homing_fire.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_homing.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SMG2_WATERGUN (워터건)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SMG2_WATERGUN );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SMG2_HOMING );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/weapon_water_gun_hit.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/homing_hit.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_water_gun_shot.seq", "Resources/Effects/weapon_water_gun_shot.seq", "Resources/Sound/homing_shot.ogg", "Smg_02_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Smg_02_Fire_Dummy", "Resources/Effects/weapon_water_fire.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_homing.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BAT_SWORD_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BAT_SWORD_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BAT_SWORD_STAND_WEAK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BAT_SWORD_STAND_WEAK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BAT_SWORD_STAND_STRONG
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BAT_SWORD_STAND_STRONG );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 300, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bat_hit.ogg", "Resources/Sound/bat_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bat_swing.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BAT_SWORD_ATTACK2_WEAK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BAT_SWORD_ATTACK2_WEAK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BAT_SWORD_ATTACK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BAT_SWORD_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bat_hit.ogg", "Resources/Sound/bat_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 120, 800, 1.0 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BAT_SWORD_JUMP_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BAT_SWORD_JUMP_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BAT_SWORD_JUMP
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BAT_SWORD_JUMP );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- 지금 공격이 카운터 공격을 당하느냐 여부 enable/disable
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE ); -- 지금 공격이 가드를 이기느냐 여부 enable/disable
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Sound/bat_hit1.ogg", "Resources/Sound/bat_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bat_swing.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_SWORD_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_SWORD_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_SWORD_ATTACK1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_SWORD_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 300, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_katana.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_SWORD_ATTACK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_SWORD_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_SWORD_ATTACK3
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_SWORD_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 300, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_SWORD_JUMP_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_SWORD_JUMP_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_SWORD_JUMP
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_SWORD_JUMP );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_plasma.tga", 64, 32 );
	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_CARD_ATTACK1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_CARD_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_CARD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/card_hit.seq", "Resources/Effects/card_wall_attack.seq", "Resources/Sound/card_hit.ogg", "Resources/Sound/card_wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/card_blast.seq", "Resources/Effects/card_blast.seq", "Resources/Sound/card_blast.ogg", "Gun_L_Fire_Dummy" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/card_blast.seq", "Resources/Effects/card_blast.seq", "", "Gun_R_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "card_Dummy01", "Resources/Effects/weapon_card_fire.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_sub.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_CARD_ATTACK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_CARD_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_CARD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/card_hit.seq", "Resources/Effects/card_wall_attack.seq", "Resources/Sound/card_hit.ogg", "Resources/Sound/card_wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/card_blast.seq", "Resources/Effects/card_blast.seq", "Resources/Sound/card_blast.ogg", "Gun_L_Fire_Dummy" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/card_blast.seq", "Resources/Effects/card_blast.seq", "", "Gun_R_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "card_Dummy02", "Resources/Effects/weapon_card_fire.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_sub.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_CARD_ATTACK3
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_CARD_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_CARD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/card_hit.seq", "Resources/Effects/card_wall_attack.seq", "Resources/Sound/card_hit.ogg", "Resources/Sound/card_wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/card_blast.seq", "Resources/Effects/card_blast.seq", "Resources/Sound/card_blast.ogg", "Gun_L_Fire_Dummy" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/card_blast.seq", "Resources/Effects/card_blast.seq", "", "Gun_R_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "card_Dummy03", "Resources/Effects/weapon_card_fire.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_sub.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_MG2 (가우스 라이플)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_MG2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MG2 );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/weapon_mg2_hit.seq", "Resources/Effects/weapon_mg2_hit_wall.seq", "Resources/Sound/mg2_hit.ogg", "Resources/Sound/mg2_wall_hit.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_mg2_shot.seq", "Resources/Effects/weapon_mg2_shot.seq", "Resources/Sound/mg2_blast.ogg", "Mg2_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Mg2_Fire_Dummy", "Resources/Effects/weapon_mg2_rail.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_elec_rifle.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GAUSS_RIFLE_MK2_RIGHT_ATTACK (가우스 라이플 MK2 좌클릭 공격 속성 )
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GAUSS_RIFLE_MK2_LEFT_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_GAUSS_RIFLE_MK2 );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/weapon_mg2_hit.seq", "Resources/Effects/weapon_mg2_hit_wall.seq", "Resources/Sound/mg2_hit.ogg", "Resources/Sound/mg2_wall_hit.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_mg2_shot.seq", "Resources/Effects/weapon_mg2_shot.seq", "Resources/Sound/mg2_blast.ogg", "Mg2_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Mg2_Fire_Dummy", "Resources/Effects/weapon_mg2_rail.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_elec_rifle.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GAUSS_RIFLE_MK2_RIGHT_ATTACK (가우스 라이플 MK2 우클릭 공격 속성 )
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GAUSS_RIFLE_MK2_RIGHT_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_GAUSS_RIFLE_MK2 );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/weapon_mg2_hit.seq", "Resources/Effects/weapon_mg2_hit_wall.seq", "Resources/Sound/mg2_hit.ogg", "Resources/Sound/mg2_wall_hit.ogg" );

	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_mg2_shot.seq", "Resources/Effects/weapon_mg2_shot.seq", "Resources/Sound/mg2_blast.ogg", "Mg2_Fire_Dummy" );
	--currAttackAttrib:SetGunTracerAttachNode	( "Mg2_Fire_Dummy", "Resources/Effectsweapon_gaussmk2_rail.seq );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_elec_rifle.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_ASSASSIN_CLAW
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_ASSASSIN_CLAW );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_ASSASSIN_CLAW );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 400, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "resources/effects/weapon_mindshock_body.seq", "resources/effects/weapon_mindshock_body.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "resources/sound/bmindenergy_enemy.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sudden.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SMG3_GUN (스매쉬 라이플)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SMG3_GUN );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SMG3 );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/weapon_smashgun_hit.seq", "Resources/Effects/weapon_smashgun_hit_wall.seq",  "Resources/Sound/smg3_hit.ogg", "Resources/Sound/smg3_wall_hit.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_smashgun_shot.seq", "Resources/Effects/weapon_smashgun_shot.seq", "Resources/Sound/smg3_blast.ogg", "Dual_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Dual_Fire_Dummy", "Resources/Effects/weapon_smashgun_rail.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_dual.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SMG3_SWORD
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SMG3_SWORD );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SMG3 );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 300, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_dual.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_REVOLVER2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_REVOLVER2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_REVOLVER2 );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_revolver_fire.seq", "Resources/Effects/weapon_revolver_fire.seq", "Resources/Sound/handgun_blast.ogg", "handgun_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "handgun_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_handgun.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SMG4
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SMG4 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SMG4 );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/burstshotgun_hit.ogg", "Resources/Sound/burstshotgun_wall_hit.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_shotgun_fire.seq", "Resources/Effects/weapon_shotgun_fire.seq", "Resources/Sound/burstshotgun_blast.ogg", "ShotGun_Fire_Dummy" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_shotgun_jump.seq", "Resources/Effects/weapon_shotgun_jump.seq", "Resources/Sound/revo_blast.ogg", "ShotGun_Fire_Dummy01" );
	currAttackAttrib:SetGunTracerAttachNode	( "ShotGun_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_shotgun.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	currAttackAttrib:SetPartialAnim			( "00016", 70, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BOSSVIRUS_KNUCKLE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BOSSVIRUS_KNUCKLE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_400 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BOSSVIRUS_SMOKE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BOSSVIRUS_SMOKE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MIND_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BOSSVIRUS_EXPLOSION
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BOSSVIRUS_EXPLOSION );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_100 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_THROW_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BOSSVIRUS_STUN
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BOSSVIRUS_STUN );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_100 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BOSSSHOTA_KNUCKLE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BOSSSHOTA_KNUCKLE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_400 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BOSSSHOTA_ASSAULT
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BOSSSHOTA_ASSAULT );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_400 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BOSSSHOTA_LASER
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BOSSSHOTA_LASER );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_400 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TRA_ATTACK1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TRA_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 400, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TRB_ATTACK1_LEFT
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TRB_ATTACK1_LEFT );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/gun_blast1_1.seq", "Resources/Effects/gun_blast1_1.seq", "Resources/Sound/smg_blast.ogg", "Jaco1_L_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Jaco1_L_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TRB_ATTACK1_RIGHT
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TRB_ATTACK1_RIGHT );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/gun_blast1_1.seq", "Resources/Effects/gun_blast1_1.seq", "Resources/Sound/smg_blast.ogg", "Jaco1_R_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Jaco1_R_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VIRUS_ATTACK1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VIRUS_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TRA_ATTACK2_LEFT
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TRA_ATTACK2_LEFT );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/gun_blast1_1.seq", "Resources/Effects/gun_blast1_1.seq", "Resources/Sound/smg_blast.ogg", "Jaco1_L_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Pam_L_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TRA_ATTACK2_RIGHT
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TRA_ATTACK2_RIGHT );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/gun_blast1_1.seq", "Resources/Effects/gun_blast1_1.seq", "Resources/Sound/smg_blast.ogg", "Jaco1_R_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Pam_R_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TRB_ATTACK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TRB_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bat_hit.ogg", "Resources/Sound/bat_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 120, 800, 1.0 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TRABIG_EXPLOSION
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TRABIG_EXPLOSION );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_100 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_THROW_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_ai.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TEAM_CHANGE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TEAM_CHANGE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KILL_ONESELF );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_selfkill.tga", 32, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SPYDAGGER_ATTACK1 (스파이대거 오른쪽 돌진 공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SPYDAGGER_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SPYDAGGER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "resources/effects/weapon_mindshock_body.seq", "resources/effects/weapon_mindshock_body.seq", "Resources/Sound/spydagger_poke_hit.ogg", "Resources/Sound/spydagger_poke_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "resources/sound/spydagger_poke.ogg" );
	currAttackAttrib:SetKillMessageImage		( "Resources/Image/Weapon/kill_sword_dagger.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SPYDAGGER_ATTACK2 (스파이대거 왼쪽 베기 공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SPYDAGGER_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType				( WEAPONTYPE_SPYDAGGER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence			( "resources/effects/weapon_mindshock_body.seq", "resources/effects/weapon_mindshock_body.seq", "Resources/Sound/spydagger_cut_hit.ogg", "Resources/Sound/spydagger_cut_hit.ogg" );
	currAttackAttrib:SetAttackSequence			( "Resources/Effects/blank_1sec.seq", "resources/sound/spydagger_cut.ogg" );
	currAttackAttrib:SetKillMessageImage			( "Resources/Image/Weapon/kill_sword_dagger.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------
	
		-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK1 ( 글리치 파괴 스파이대거 오른쪽 돌진 공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SPYDAGGER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "resources/effects/weapon_mindshock_body.seq", "resources/effects/weapon_mindshock_body.seq", "Resources/Sound/spydagger_poke_hit.ogg", "Resources/Sound/spydagger_poke_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "resources/sound/spydagger_poke.ogg" );
	currAttackAttrib:SetKillMessageImage		( "Resources/Image/Weapon/kill_sword_dagger.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	--ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK2 ( 글리치 파괴 스파이대거 왼쪽 베기 공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType				( WEAPONTYPE_SPYDAGGER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence			( "resources/effects/weapon_mindshock_body.seq", "resources/effects/weapon_mindshock_body.seq", "Resources/Sound/spydagger_cut_hit.ogg", "Resources/Sound/spydagger_cut_hit.ogg" );
	currAttackAttrib:SetAttackSequence			( "Resources/Effects/blank_1sec.seq", "resources/sound/spydagger_cut.ogg" );
	currAttackAttrib:SetKillMessageImage			( "Resources/Image/Weapon/kill_sword_dagger.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DOUBLE_SWORD_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DOUBLE_SWORD_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DOUBLE_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_twin.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DOUBLE_SWORD_ATTACK1--기본 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DOUBLE_SWORD_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DOUBLE_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/spark_hit.ogg", "Resources/Sound/spark_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/twinsword_cut_2.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_twin.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DOUBLE_SWORD_ATTACK3 --기본 공격 마무리
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DOUBLE_SWORD_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DOUBLE_SWORD );

	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- 지금 공격이 카운터 공격을 당하느냐 여부 enable/disable
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE ); -- 지금 공격이 가드를 이기느냐 여부 enable/disable
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/spark_hit.ogg", "Resources/Sound/spark_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/twinsword_cut_3.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_twin.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DOUBLE_SWORD_ATTACK4 --차지 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DOUBLE_SWORD_ATTACK4 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DOUBLE_SWORD );

	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- 지금 공격이 카운터 공격을 당하느냐 여부 enable/disable
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE ); -- 지금 공격이 가드를 이기느냐 여부 enable/disable
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/spark_hit.ogg", "Resources/Sound/spark_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" ); --차지 공격 사운드는 싱크 맞추기 위해 ActorStates_DoubleSword.lua에 적용
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_twin.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DOUBLE_SWORD_JUMPDASH --점프공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DOUBLE_SWORD_JUMPDASH );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DOUBLE_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_DISENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/spark_hit.ogg", "Resources/Sound/spark_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" ); --점프 공격 사운드는 싱크 맞추기 위해 ActorStates_DoubleSword.lua에 적용
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_twin.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_AIRGUN
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_AIRGUN );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_AIR_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/airgun_blast.ogg", "Resources/Sound/airgun_blast.ogg" );
	currAttackAttrib:SetGunBlastSequence_NoDummy	( "Resources/Effects/weapon_airgun_rail.seq", "Resources/Effects/weapon_airgun_rail.seq", "Resources/Sound/airgun_blast.ogg", "ShotGun_Fire_Dummy", false );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_airgun.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SPARK_RIFLE (스파크 라이플)
	-------------------------------------------------------------------------------------------------------------

	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SPARK_RIFLE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SPARK_RIFLE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_bodyhit_electronic.seq", "Resources/Effects/gun_hit_electronic.seq", "Resources/Sound/spark_hit.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_sparkrf_shot.seq", "Resources/Effects/weapon_sparkrf_shot.seq", "Resources/Sound/spark_shot.ogg", "Smg_02_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Smg_02_Fire_Dummy", "Resources/Effects/weapon_sparkrf_fire.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_spark.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	----------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_CHAIN_LIGHT_GUN
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_CHAIN_LIGHT_GUN );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_CHAIN_LIGHT_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/assult_cogwheel_hit.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/assultrifle_hit.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/gun_blast_umb.seq", "Resources/Effects/gun_blast_umb.seq", "Resources/Sound/assultrifle_shot.ogg", "ChainlightningGun_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "ChainlightningGun_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_shockwave.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	currAttackAttrib:SetPartialAnim			( "00016", 70, 100, 0.2 );

	-------------------------------------------------------------------------------------------------------------



	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_CHAIN_LIGHT_GUN_EXPLOSION
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_CHAIN_LIGHT_GUN_EXPLOSION );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_CHAIN_LIGHT_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/sp_burn.seq", "Resources/Effects/sp_burn.seq", "Resources/Sound/shockwave_blast.ogg", "Resources/Sound/burstshotgun_wall_hit.ogg" );
	currAttackAttrib:SetDmgSeqParentNode		( "Bip01" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_shotgun.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	currAttackAttrib:SetPartialAnim			( "00016", 70, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BREAKER_SWORD_CRITICAL--기본 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BREAKER_SWORD_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_30 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BREAKER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/breaker_hit.ogg", "Resources/Sound/breaker_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/breaker_smash.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_breaker.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BREAKER_SWORD_ATTACK1--기본 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BREAKER_SWORD_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_30 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BREAKER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/breaker_hit.ogg", "Resources/Sound/breaker_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/breaker_smash.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_breaker.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BREAKER_SWORD_ATTACK2--기본 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BREAKER_SWORD_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_30 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BREAKER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/breaker_hit.ogg", "Resources/Sound/breaker_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/breaker_smash.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_breaker.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BREAKER_SWORD_ATTACK3--기본 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BREAKER_SWORD_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_30 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BREAKER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/breaker_hit.ogg", "Resources/Sound/breaker_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/breaker_smash.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_breaker.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BREAKER_SWORD_ATTACK4--기본 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BREAKER_SWORD_ATTACK4 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BREAKER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- 지금 공격이 카운터 공격을 당하느냐 여부 enable/disable
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE ); -- 지금 공격이 가드를 이기느냐 여부 enable/disable
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/breaker_hit.ogg", "Resources/Sound/breaker_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_breaker.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_BREAKER_SWORD_JUMPDASH--기본 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_BREAKER_SWORD_JUMPDASH );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BREAKER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- 지금 공격이 카운터 공격을 당하느냐 여부 enable/disable
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE ); -- 지금 공격이 가드를 이기느냐 여부 enable/disable
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/breaker_hit.ogg", "Resources/Sound/breaker_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/breaker_jump.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_breaker.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_CLASSICRIFLE (기본소총)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_CLASSICRIFLE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_CLASSICRIFLE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE ); --부위별크리티컬있음 DAMAGEBYPART_ENABLE , 부위별크리티컬 없음 DAMAGEBYPART_DISABLE

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/weapon_assultgun_hit.seq", "Resources/Effects/weapon_assultgun_hit_wall.seq", "Resources/Sound/assultrifle_hit.ogg", "Resources/Sound/wall_attack.ogg"  )
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/gun_blast1_1.seq", "Resources/Effects/gun_blast1_1.seq", "Resources/Sound/assultrifle_shot.ogg", "assult_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "assult_Fire_Dummy", "Resources/Effects/weapon_assultgun_rail.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_assult_rifle.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COGWHEEL_CLASSICRIFLE (기본소총)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COGWHEEL_CLASSICRIFLE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_CLASSICRIFLE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE ); --부위별크리티컬있음 DAMAGEBYPART_ENABLE , 부위별크리티컬 없음 DAMAGEBYPART_DISABLE

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/assult_cogwheel_hit.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/assultrifle_hit.ogg", "Resources/Sound/wall_attack.ogg"  )
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/assult_cogwheel_gun_blast.seq", "Resources/Effects/assult_cogwheel_gun_blast.seq", "Resources/Sound/assultrifle_shot.ogg", "assult_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "assult_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_assult_rifle.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_RESCUEGUN (힐건)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_RESCUEGUN );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_0 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_RESCUEGUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	-- currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_mine.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SENTRYBOMB_BUILDER ( 센트리마인 )
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SENTRYBOMB_BUILDER );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SENTRYBOMB_BUILDER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetAttackSequence		( "Resources/Effects/skill_gunner_electronic_bomb_3.seq", "" );
	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/skill_hacker_sentrygun_3_fire.seq", "Resources/Effects/skill_hacker_sentrygun_3_fire.seq", "Resources/Sound/sentrygun_blast.ogg", "Object335" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_senti_wall.tga", 32, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TURRET_NORMAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TURRET_NORMAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_TURRET );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/assultrifle_hit.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "", "", "", "HW_Fire_Dummy" );
	currAttackAttrib:SetGunBlastSequence	( "", "", "", "HW_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "HW_Trace_Dummy", "Resources/Effects/weapon_turret_rail.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_turret.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TURRET_INSTALL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TURRET_INSTALL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_TURRET );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/assultrifle_hit.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "", "", "", "HW_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "HW_Fire_Dummy", "Resources/Effects/weapon_turret_rail.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_turret.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_TURRET_MK2_INSTALL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_TURRET_MK2_INSTALL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_TURRET );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/assultrifle_hit.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "", "", "", "HW_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "HW_Fire_Dummy", "Resources/Effects/weapon_turret_rail.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_turret.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SIGMA_BLADE_CRITICAL (변신후 막타) 안씀
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SIGMA_BLADE_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "", "", "Resources/Sound/sigmablade_hit_slash.ogg", "Resources/Sound/sigmablade_hit_slash.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL (변신후 평타)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );   --카소 피격시 걸릴 스턴 시간 , ENABLE이동 가능 공격 못함, 구분 데미지 계산

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit_wall_change.ogg", "Resources/Sound/sigmablade_hit_wall_change.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK (변신후 강공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE ); -- (스턴걸림:ENABLE, 스턴안걸림:DISABLE)
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );  --(0,가드 파괴 ENABLE, 가드파괴못함 DISABLE)
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE ); --(경직 시간, 경직시 이동이가능ENABLE, )

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SIGMA_BLADE_ATTACK1 (첫번째 평타 공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SIGMA_BLADE_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 450, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SIGMA_BLADE_ATTACK2 (두번째 평타 공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SIGMA_BLADE_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 600, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit_slash.ogg", "Resources/Sound/sigmablade_hit_slash.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SIGMA_BLADE_ATTACK3 (세번째 평타 공격) 변신전 3타 기본 공격을 2타로 변경 하면서 이 값은 쓰지 않음
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SIGMA_BLADE_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 100, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SIGMA_BLADE_ATTACK4 (변신)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SIGMA_BLADE_ATTACK4 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- (스턴걸림:ENABLE, 스턴안걸림:DISABLE)
	currAttackAttrib:SetGuardData			( 700, GUARDCRUSH_ENABLE );  --(0,가드 파괴 ENABLE, 가드파괴 못함 DISABLE)
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );
	currAttackAttrib:SetEnableBalstObjectDamage	( false );


	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SIGMA_BLADE_JUMPDASH (점프공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SIGMA_BLADE_JUMPDASH );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_CRITICAL (변신후 막타) 안씀
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "", "", "Resources/Sound/sigmablade_hit_slash.ogg", "Resources/Sound/sigmablade_hit_slash.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL (변신후 평타)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );   --카소 피격시 걸릴 스턴 시간 , ENABLE이동 가능 공격 못함, 구분 데미지 계산

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Sound/sigmablade_hit_wall_change.ogg", "Resources/Sound/sigmablade_hit_wall_change.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK (변신후 강공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE ); -- (스턴걸림:ENABLE, 스턴안걸림:DISABLE)
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );  --(0,가드 파괴 ENABLE, 가드파괴못함 DISABLE)
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE ); --(경직 시간, 경직시 이동이가능ENABLE, )

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK1 (첫번째 평타 공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 450, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK2 (두번째 평타 공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 600, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Sound/sigmablade_hit_slash.ogg", "Resources/Sound/sigmablade_hit_slash.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK3 (세번째 평타 공격) 변신전 3타 기본 공격을 2타로 변경 하면서 이 값은 쓰지 않음
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 100, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK4 (변신)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK4 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- (스턴걸림:ENABLE, 스턴안걸림:DISABLE)
	currAttackAttrib:SetGuardData			( 700, GUARDCRUSH_ENABLE );  --(0,가드 파괴 ENABLE, 가드파괴 못함 DISABLE)
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );
	currAttackAttrib:SetEnableBalstObjectDamage	( false );


	currAttackAttrib:SetDamageSequence		( "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_JUMPDASH (점프공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_JUMPDASH );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Effects/cogwheel_sigmablade_hit.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_A_ATTACK2 --미사용?
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_A_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_A_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_katana.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE --노차지 일섬
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_A_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/katana_damege.seq", "Resources/Effects/katana_damege_obj.seq", "Resources/Sound/katana_hit_slash.ogg", "Resources/Sound/burstshotgun_wall_hit.ogg" );
	currAttackAttrib:SetDamageSequenceTarget( "Resources/Effects/katanaA_s_atk02_line01.seq", "Resources/Sound/katana_hit_slash.ogg");
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_katana_A.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_A_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/katana_damege.seq", "Resources/Effects/katana_damege_obj.seq", "Resources/Sound/katana_hit_slash.ogg", "Resources/Sound/burstshotgun_wall_hit.ogg" );
	currAttackAttrib:SetDamageSequenceTarget( "Resources/Effects/katanaA_s_atk02_line01.seq", "Resources/Sound/katana_hit_slash.ogg");
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_katana_A.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_A_SWORD_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_A_SWORD_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_A_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_katana_A.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_A_SWORD_ATTACK1 평타 1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_A_SWORD_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_A_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 325, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/katana_damege.seq", "Resources/Effects/katana_damege_obj.seq", "Resources/Sound/spydagger_cut_hit.ogg", "Resources/Sound/burstshotgun_wall_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_katana_A.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_A_SWORD_ATTACK2 평타 2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_A_SWORD_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_A_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/katana_damege.seq", "Resources/Effects/katana_damege_obj.seq", "Resources/Sound/spydagger_cut_hit.ogg", "Resources/Sound/burstshotgun_wall_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_katana_A.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_A_SWORD_ATTACK3 평타 3
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_A_SWORD_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_30 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_A_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 750, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/katana_damege.seq", "Resources/Effects/katana_damege_obj.seq", "Resources/Sound/spydagger_cut_hit.ogg", "Resources/Sound/burstshotgun_wall_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_katana_A.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_A_SWORD_ATTACK4 강공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_A_SWORD_ATTACK4 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_A_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 750, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/katana_damege.seq", "Resources/Effects/katana_damege_obj.seq", "Resources/Sound/spydagger_cut_hit.ogg", "Resources/Sound/burstshotgun_wall_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_katana_A.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_KATANA_A_SWORD_JUMPDASH 점프 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_KATANA_A_SWORD_JUMPDASH );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_KATANA_A_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/katana_damege.seq", "Resources/Effects/katana_damege_obj.seq", "Resources/Sound/spydagger_cut_hit.ogg", "Resources/Sound/burstshotgun_wall_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_katana_A.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_STANDARD_AIMED_SHOT
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_STANDARD_AIMED_SHOT );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_STANDARD_RAILGUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit_body_shot01.seq", "Resources/Effects/gun_hit4.seq", "Resources/Sound/sharpshooter_shot.ogg", "Resources/Sound/smg3_wall_hit.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_sharpshooter_rail.seq", "Resources/Effects/weapon_sharpshooter_rail.seq", "Resources/Sound/sharpshooter_shot.ogg", "Railgun_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Railgun_Fire_Dummy", "Resources/Effects/weapon_assultgun_rail.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_sharp.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_STANDARD_AIMED_SHOT_2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_STANDARD_AIMED_SHOT_2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_STANDARD_RAILGUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit_body_shot01.seq", "Resources/Effects/gun_hit4.seq", "Resources/Sound/sharpshooter_shot.ogg", "Resources/Sound/smg3_wall_hit.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_sharpshooter_rail.seq", "Resources/Effects/weapon_sharpshooter_rail.seq", "Resources/Sound/sharpshooter_shot.ogg", "Railgun_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Railgun_Fire_Dummy", "Resources/Effects/weapon_assultgun_rail.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_sharp.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DUAL_GUN_ATTACK1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DUAL_GUN_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DUAL_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

   	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_dual_mg_fire_1.seq", "Resources/Effects/weapon_dual_mg_fire_1.seq", "Resources/Sound/handgun_blast.ogg", "dualgun_R_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "dualgun_R_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_dual_magnum.dds", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	currAttackAttrib:SetGunCartridgeDummy	( "dualgun_R_Bullet_Dummy" );

	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DUAL_GUN_ATTACK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DUAL_GUN_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DUAL_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_dual_mg_fire.seq", "Resources/Effects/weapon_dual_mg_fire.seq", "Resources/Sound/handgun_blast.ogg", "dualgun_L_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "dualgun_L_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_dual_magnum.dds", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );------------------------------
	currAttackAttrib:SetGunCartridgeDummy	( "dualgun_L_Bullet_Dummy" );

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DUAL_GUN_ATTACK3
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DUAL_GUN_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DUAL_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit5.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_dual_mg_fire.seq", "Resources/Effects/weapon_dual_mg_fire.seq", "Resources/Sound/handgun_blast.ogg", "dualgun_R_Fire_Dummy" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_dual_mg_fire_1.seq", "Resources/Effects/weapon_dual_mg_fire_1.seq", "Resources/Sound/handgun_blast.ogg", "dualgun_L_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "dualgun_R_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_dual_magnum.dds", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	currAttackAttrib:SetGunCartridgeDummy	( "dualgun_R_Bullet_Dummy" );
	currAttackAttrib:SetGunCartridgeDummy	( "dualgun_L_Bullet_Dummy" );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PVE_KNIGHT_0
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PVE_KNIGHT_0 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	--currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEBYPART_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "resources/effects/weapon_mindshock_body.seq", "resources/effects/weapon_mindshock_body.seq", "", "" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/knight_attack01.seq", "Resources/Effects/knight_attack01.seq", "", "Bip01" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage		( "Resources/Image/Weapon/kill_sword_dagger.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PVE_KNIGHT_1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PVE_KNIGHT_1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	--currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEBYPART_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "resources/effects/weapon_mindshock_body.seq", "resources/effects/weapon_mindshock_body.seq", "", "" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/knight_attack01.seq", "Resources/Effects/knight_attack01.seq", "", "Bip01" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage		( "Resources/Image/Weapon/kill_sword_dagger.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PVE_KNIGHT_2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PVE_KNIGHT_2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	--currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEBYPART_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "resources/effects/weapon_mindshock_body.seq", "resources/effects/weapon_mindshock_body.seq", "", "" );
	currAttackAttrib:SetGunBlastSequence		( "", "", "", "Bip01" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage		( "Resources/Image/Weapon/kill_sword_dagger.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------



	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PVE_BISHOP
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PVE_BISHOP );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEBYPART_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "", "" );

	currAttackAttrib:SetGunTracerAttachNode	( "Bishop_Fire_Dummy", "Resources/Effects/skill_gunner_chargeshot_rail.seq" );
	currAttackAttrib:SetGunTracerType		( GUNTRACER_TYPE_LINK );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_sub.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PVE_KING_0
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PVE_KING_0 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MELEE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 750, DAMAGEBYPART_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "resources/effects/weapon_mindshock_body.seq", "resources/effects/weapon_mindshock_body.seq", "", "" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/pve_mon_king_attack02.seq", "Resources/Effects/pve_mon_king_attack02.seq", "", "pve_monster_king_effect_Dummy" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage		( "Resources/Image/Weapon/kill_sword_dagger.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PVE_KING_1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PVE_KING_1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack			( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEBYPART_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "", "" );

	currAttackAttrib:SetGunTracerAttachNode	( "arm_L_Dummy", "Resources/Effects/skill_gunner_shockwave_rail.seq" );  -- 여기
	currAttackAttrib:SetGunTracerType			( GUNTRACER_TYPE_LINK );
	currAttackAttrib:SetKillMessageImage		( "Resources/Image/Weapon/kill_gun_sub.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PVE_KING_2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PVE_KING_2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack			( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEBYPART_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "", "" );

	currAttackAttrib:SetGunTracerAttachNode	( "arm_R_Dummy", "Resources/Effects/skill_gunner_shockwave_rail.seq" ); -- 여기
	currAttackAttrib:SetGunTracerType			( GUNTRACER_TYPE_LINK );
	currAttackAttrib:SetKillMessageImage		( "Resources/Image/Weapon/kill_gun_sub.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );

	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PVE_KING_눈레이저
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PVE_KING_3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack			( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEBYPART_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/sp_burn.seq", "Resources/Effects/sp_burn.seq", "", "" );

	--currAttackAttrib:SetGunTracerAttachNode	( "eyedummy", "Resources/Effects/skill_gunner_shockwave_rail.seq" ); -- 여기
	currAttackAttrib:SetGunTracerType			( GUNTRACER_TYPE_LINK );
	currAttackAttrib:SetKillMessageImage		( "Resources/Image/Weapon/kill_gun_sub.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );

	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PVE_QUEEN_0 --퀸 장거리 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PVE_QUEEN_0 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEBYPART_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "", "" );

	currAttackAttrib:SetGunTracerAttachNode	( "M_beam_Dummy", "Resources/Effects/pve_mon_queen_attack02.seq" );
	currAttackAttrib:SetGunTracerType		( GUNTRACER_TYPE_LINK );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_sub.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_PVE_QUEEN_0 --퀸 근접 공격
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_PVE_QUEEN_1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MISSILE_ );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEBYPART_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "", "" );

	currAttackAttrib:SetGunTracerAttachNode	( "M_beam_Dummy", "Resources/Effects/pve_mon_queen_attack02.seq" );
	currAttackAttrib:SetGunTracerType		( GUNTRACER_TYPE_LINK );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_sub.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );

	-------------------------------------------------------------------------------------------------------------
	-- minho add 20130220 프라이팬 배트 추가.
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_FRYPAN_BAT_SWORD_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_FRYPAN_BAT_SWORD_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_FRYPAN_BAT_SWORD_STAND_WEAK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_FRYPAN_BAT_SWORD_STAND_WEAK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/frypan_bat_hit.seq", "Resources/Effects/frypan_bat_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_FRYPAN_BAT_SWORD_STAND_STRONG
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_FRYPAN_BAT_SWORD_STAND_STRONG );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 300, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/frypan_bat_hit.seq", "Resources/Effects/frypan_bat_hit.seq", "Resources/Sound/bat_hit.ogg", "Resources/Sound/bat_hit.ogg" );
--	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bat_hit.ogg", "Resources/Sound/bat_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bat_swing.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2_WEAK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2_WEAK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/frypan_bat_hit.seq", "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/frypan_bat_hit.seq", "Resources/Effects/frypan_bat_hit.seq", "Resources/Sound/bat_hit.ogg", "Resources/Sound/bat_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 120, 800, 1.0 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_FRYPAN_BAT_SWORD_JUMP_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_FRYPAN_BAT_SWORD_JUMP_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_FRYPAN_BAT_SWORD_JUMP
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_FRYPAN_BAT_SWORD_JUMP );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_BAT_SWORD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- 지금 공격이 카운터 공격을 당하느냐 여부 enable/disable
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE ); -- 지금 공격이 가드를 이기느냐 여부 enable/disable
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/frypan_bat_hit.seq", "Resources/Effects/frypan_bat_hit.seq", "Resources/Sound/bat_hit1.ogg", "Resources/Sound/bat_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bat_swing.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_stormbat.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	--<< 신규로 추가되는 사신낫과 관련된 공격 속성입니다. >>--
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DEATH_SCYTHE_CRITICAL
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEATH_SCYTHE_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEATH_SCYTHE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 700, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/deathscythe_hit.seq", "Resources/Effects/deathscythe_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_deathscythe.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DEATH_SCYTHE_ATTACK_1
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEATH_SCYTHE_ATTACK_1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEATH_SCYTHE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 450, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/deathscythe_hit.seq", "Resources/Effects/deathscythe_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_deathscythe.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DEATH_SCYTHE_ATTACK_2
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEATH_SCYTHE_ATTACK_2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEATH_SCYTHE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 450, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/deathscythe_hit.seq", "Resources/Effects/deathscythe_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_deathscythe.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DEATH_SCYTHE_COUNTER_CRITICAL
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEATH_SCYTHE_COUNTER_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEATH_SCYTHE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 1400, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/deathscythe_hit.seq", "Resources/Effects/deathscythe_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_deathscythe.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DEATH_SCYTHE_COUNTER_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEATH_SCYTHE_COUNTER_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEATH_SCYTHE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 1400, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/deathscythe_hit.seq", "Resources/Effects/deathscythe_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_deathscythe.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DEATH_SCYTHE_JUMP_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEATH_SCYTHE_JUMP_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEATH_SCYTHE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 650, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/deathscythe_hit.seq", "Resources/Effects/deathscythe_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_deathscythe.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DEATH_SCYTHE_SP_RIGHT_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEATH_SCYTHE_SP_RIGHT_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 ); -- 오브젝트 파괴 데미지 (무기 데미지 자체를 오브젝트에 데미지를 주게 2012년에 변경되어 현재는 영향을 주지 않는 수치)
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEATH_SCYTHE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- 카운트 스워드의 가드상태에 공격 시 자신이 스턴 당하는 지 여부 ENABLE : 스턴 당함, DISABLE : 스턴 당하지 않음
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_ENABLE ); --카운터 스워드의 가드를 뚫을 수 있는 지 여부  ENABLE : 뚫음, DISABLE : 뚫지 못함
	currAttackAttrib:SetDamageData			( 850, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE ); --(공격 성공 시 상대방을 경직 시킬 수 있는 시간 1000=1초, 상대의 이동을 차단하는 지 여부, 머리/몸통/발 등 파츠에 따라 데미지를 입는 지 여부(현재는 머리 외에는 무조건 파츠 데미지가 아닌 고정데미지가 입히게 작업되어 있음)

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/deathscythe_hit.seq", "Resources/Effects/deathscythe_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" ); --(상대를 공격할 때 출력하는 시퀸스, 벽을 공격할 때 출력하는 시퀸스, 상대를 공격할 때 출력하는 사운드, 벽을 공격할 때 출력하는 시퀸스)
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" ); --(허공을 공격 시 출력하는 시퀸스, 허공을 공격 시 출력하는 사운드)
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_deathscythe.dds", 64, 32 ); --(상대 킬 시 우측 상단에 출력하는 아이콘, 아이콘 사이즈X, 아이콘 사이즈Y)
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_DEATH_SCYTHE_ATTACK_3
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_DEATH_SCYTHE_ATTACK_3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_DEATH_SCYTHE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 850, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/deathscythe_hit.seq", "Resources/Effects/deathscythe_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_deathscythe.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	--<< 신규로 추가되는 아이언부츠와 관련된 공격 속성입니다. >>--
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_IRON_BOOTS_FIRST_KICK_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_IRON_BOOTS_FIRST_KICK_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_IRON_BOOTS );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 350, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetGuardSequence       ( "Resources/Effects/hit_guard_01.seq", "Resources/Sound/sword_s.ogg" );
    currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_iron_boots.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_IRON_BOOTS_SECOND_KICK_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_IRON_BOOTS_SECOND_KICK_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_IRON_BOOTS );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 350, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetGuardSequence       ( "Resources/Effects/hit_guard_01.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_iron_boots.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_IRON_BOOTS_THIRD_KICK_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_IRON_BOOTS_THIRD_KICK_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_IRON_BOOTS );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 650, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetGuardSequence       ( "Resources/Effects/hit_guard_01.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_iron_boots.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_IRON_BOOTS_FOURTH_KICK_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	--currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_IRON_BOOTS_FOURTH_KICK_ATTACK );

	--currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	--currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_400 );
	--currAttackAttrib:SetWeaponType			( WEAPONTYPE_IRON_BOOTS );
	--currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	--currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_ENABLE );
	--currAttackAttrib:SetDamageData			( 650, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	--currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	--currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	--currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_iron_boots.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_IRON_BOOTS_OBJECT_BLAST
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_IRON_BOOTS_OBJECT_BLAST );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_400 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_IRON_BOOTS );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 650, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_iron_boots.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_IRON_BOOTS_DASH_KICK_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_IRON_BOOTS_DASH_KICK_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_IRON_BOOTS );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_iron_boots.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_IRON_BOOTS_UPPER_KICK_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_IRON_BOOTS_UPPER_KICK_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_IRON_BOOTS );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );
	
	currAttackAttrib:SetGuardSequence       ( "Resources/Effects/hit_guard_01.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_iron_boots.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_IRON_BOOTS_JUMP_SMASH_KICK_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_IRON_BOOTS_JUMP_SMASH_KICK_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_IRON_BOOTS );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 650, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );
	
	currAttackAttrib:SetGuardSequence       ( "Resources/Effects/hit_guard_01.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_iron_boots.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_IRON_BOOTS_BOOST_DASH_ATTACK
	-------------------------------------------------------------------------------------------------------------	
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_IRON_BOOTS_BOOST_DASH_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_IRON_BOOTS );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_iron_boots.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_ROCKET_LAUNCHER_LEFT_ATTACK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_ROCKET_LAUNCHER_LEFT_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_100 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_ROCKET_LAUNCHER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_rocket_launcher.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_ROCKET_LAUNCHER_RIGHT_ATTACK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_ROCKET_LAUNCHER_RIGHT_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_100 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_ROCKET_LAUNCHER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_rocket_launcher.dds", 64, 32 );
	-------------------------------------------------------------------------------------------------------------	
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_RESCUEGUN_MK2_LEFT_ATTACK (MK2 힐건)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_RESCUEGUN_MK2_LEFT_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_0 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_RESCUEGUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	-- currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_mine.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_RESCUEGUN_MK2_RIGHT_ATTACK (MK2 AMMO 힐건)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_RESCUEGUN_MK2_RIGHT_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_0 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_RESCUEGUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	-- currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_mine.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_LIGHTNING_BOMBER_MK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_LIGHT_BOMBER_MK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_LOWER );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_LIGHT_BOMB );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_lightning_bomber.tga", 32, 32 );
	-------------------------------------------------------------------------------------------------------------	
	
	AttackAttribute_DemonicKnuckle(); -- 데모닉 너클 공격 속성.
	AttackAttribute_BustShotGunMK2(); -- 버스트 샷건 MK2 공격 속성.
	AttackAttribute_EsperSetSkill(); -- 에스퍼스킬 공격 속성.
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_ENERGY_SUPPLY_INSTALL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_ENERGY_SUPPLY_INSTALL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SENTRYGUN_BUILDER );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/player_attack.ogg", "Resources/Sound/wall_attack.ogg"  );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/skill_hacker_sentrygun_3_fire.seq", "Resources/Effects/skill_hacker_sentrygun_3_fire.seq", "Resources/Sound/sentrygun_blast.ogg", "Object335" );
	currAttackAttrib:SetGunTracerAttachNode	( "Object335", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sentry_gun.tga", 32, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 120, 800, 1.0 );
	-------------------------------------------------------------------------------------------------------------
	
	AttackAttribute_ChainLightGunMK2(); -- 체인 라이트닝 건 MK2 공격 속성
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_ASSULT_RIFLE_UNIQUE ( 어썰트 라이플 유니크 )
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_ASSULT_RIFLE_UNIQUE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_ASSULT_RIFLE_UNIQUE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE ); --부위별크리티컬있음 DAMAGEBYPART_ENABLE , 부위별크리티컬 없음 DAMAGEBYPART_DISABLE

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/assult_mafia_hit.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/typewriter_assultrifle_hit.ogg", "Resources/Sound/wall_attack.ogg"  )
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/assult_mafia_gun_blast.seq", "Resources/Effects/assult_mafia_gun_blast.seq", "Resources/Sound/typewriter_assultrifle_shot.ogg", "assult_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "assult_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_assult_rifle.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------
	
	-- 버츄얼 쉴드
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VIRTUAL_SHIELD_COUNTER_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VIRTUAL_SHIELD_COUNTER_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VIRTUAL_SHIELD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VIRTUAL_SHIELD_COUNTER_ATTACK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VIRTUAL_SHIELD_COUNTER_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_30 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VIRTUAL_SHIELD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 800, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VIRTUAL_SHIELD_CRITICAL
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VIRTUAL_SHIELD_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VIRTUAL_SHIELD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK1
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VIRTUAL_SHIELD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK2
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VIRTUAL_SHIELD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK3
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VIRTUAL_SHIELD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK4
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK4 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VIRTUAL_SHIELD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_ENABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VIRTUAL_SHIELD_JUMPDASH
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VIRTUAL_SHIELD_JUMPDASH );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VIRTUAL_SHIELD );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 500, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_power.ogg", "Resources/Sound/bsword_power.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_counter.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_RAIL_MARTINSTICK , WEAPONYTPE_RAIL_MARTINSTICK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_RAIL_MARTINSTICK );
	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONYTPE_RAIL_MARTINSTICK );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Effects/skill_gunner_chargeshot_hit_wall.seq", "Resources/Sound/rail_attack.ogg", "Resources/Sound/rail_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_rail.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_RAIL_MARTINSTICK_2 , WEAPONYTPE_RAIL_MARTINSTICK
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_RAIL_MARTINSTICK_2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONYTPE_RAIL_MARTINSTICK );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Effects/skill_gunner_chargeshot_hit_max_wall.seq", "Resources/Sound/rail_attack.ogg", "Resources/Sound/rail_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_rail.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_MINDSTORM_UNIQUE_ATTACK1	,	WEAPONTYPE_MIND_STROM_UNIQUE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_MINDSTORM_UNIQUE_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MIND_STROM_UNIQUE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_mind_storm.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_MINDSTORM_UNIQUE_ATTACK2	,	WEAPONTYPE_MIND_STROM_UNIQUE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_MINDSTORM_UNIQUE_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_MIND_STROM_UNIQUE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/revo_hit.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_revolver_fire.seq", "Resources/Effects/weapon_revolver_fire.seq", "Resources/Sound/revo_blast.ogg", "Revolver_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Revolver_Fire_Dummy", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_mind_storm.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_SPARK_RIFLE_UNIQUE (스파크 라이플)
	-------------------------------------------------------------------------------------------------------------

	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_SPARK_RIFLE_UNIQUE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_UPPER );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SPARK_RIFLE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit_nb.seq", "Resources/Effects/gun_hit_nb.seq", "Resources/Sound/spark_hit.ogg", "Resources/Sound/wall_attack.ogg" );
	currAttackAttrib:SetGunBlastSequence	( "Resources/Effects/weapon_spark_nb_shot.seq", "Resources/Effects/weapon_spark_nb_shot.seq", "Resources/Sound/spark_shot.ogg", "Smg_02_Fire_Dummy" );
	currAttackAttrib:SetGunTracerAttachNode	( "Smg_02_Fire_Dummy", "Resources/Effects/weapon_spark_nb_fire.seq" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_spark.tga", 64, 32 );
	currAttackAttrib:SetPartialAnim			( "00016", 30, 100, 0.2 );
	----------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_AIRGUN_UNIQUE
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib		= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_AIRGUN_UNIQUE );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_AIR_GUN );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit4.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/airgun_blast.ogg", "Resources/Sound/airgun_blast.ogg" );
	currAttackAttrib:SetGunBlastSequence_NoDummy	( "Resources/Effects/weapon_airgun_nb_rail.seq", "Resources/Effects/weapon_airgun_nb_rail.seq", "Resources/Sound/airgun_blast.ogg", "ShotGun_Fire_Dummy", false );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_gun_airgun.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------
end


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_CRITICAL (변신후 막타) 안씀
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "", "", "Resources/Sound/sigmablade_hit_slash.ogg", "Resources/Sound/sigmablade_hit_slash.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );

	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL (변신후 평타)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 500, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );   --카소 피격시 걸릴 스턴 시간 , ENABLE이동 가능 공격 못함, 구분 데미지 계산

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit_wall_change.ogg", "Resources/Sound/sigmablade_hit_wall_change.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK (변신후 강공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE ); -- (스턴걸림:ENABLE, 스턴안걸림:DISABLE)
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );  --(0,가드 파괴 ENABLE, 가드파괴못함 DISABLE)
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE ); --(경직 시간, 경직시 이동이가능ENABLE, )

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/bsword_attack.ogg", "Resources/Sound/bsword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1 (첫번째 평타 공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 450, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK2 (두번째 평타 공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK2 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 600, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit_slash.ogg", "Resources/Sound/sigmablade_hit_slash.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK3 (세번째 평타 공격) 변신전 3타 기본 공격을 2타로 변경 하면서 이 값은 쓰지 않음
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK3 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 100, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK4 (변신)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK4 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- (스턴걸림:ENABLE, 스턴안걸림:DISABLE)
	currAttackAttrib:SetGuardData			( 700, GUARDCRUSH_ENABLE );  --(0,가드 파괴 ENABLE, 가드파괴 못함 DISABLE)
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );
	currAttackAttrib:SetEnableBalstObjectDamage	( false );


	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------


	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_JUMPDASH (점프공격)
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_JUMPDASH );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_SIGMA_BLADE );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sigmablade_hit.ogg", "Resources/Sound/sigmablade_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sigmablade.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VITAL_SHOCK	( 대쉬중 강타1- 내부 )
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VITAL_SHOCK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VITAL_SHOCK );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 400, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 400, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "resources/effects/gun_hit_body_shot01.seq", "resources/effects/gun_hit_body_shot01.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "resources/sound/bmindenergy_enemy.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sudden.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VITAL_SHOCK_CRITICAL( 크리티컬 조건 기준 )
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VITAL_SHOCK_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VITAL_SHOCK );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq","");--, "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sudden.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VITAL_SHOCK_LEFT_WEAK_ATTACK ( ATTACK1_WEAK, LEFT )
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VITAL_SHOCK_LEFT_WEAK_ATTACK );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VITAL_SHOCK );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 300, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sudden.tga", 64, 32 );	
	-------------------------------------------------------------------------------------------------------------
		
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VITAL_SHOCK_DASH( RIGHT )
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VITAL_SHOCK_DASH );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VITAL_SHOCK );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 900, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 900, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Effects/skill_gunner_chargeshot_hit.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sudden.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VITAL_SHOCK_STRONG1 / 특공 1타
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VITAL_SHOCK_STRONG1 );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VITAL_SHOCK );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 200, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/gun_hit5.seq", "Resources/Effects/gun_hit5.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sudden.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VITAL_SHOCK_STRONG / 땡기기 1타
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VITAL_SHOCK_STRONG );
		
	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_20 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VITAL_SHOCK );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );
	currAttackAttrib:SetGuardData			( 1000, GUARDCRUSH_ENABLE );
	currAttackAttrib:SetDamageData			( 250, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/skill_gunner_chargeshot_hit_wall.seq", "Resources/Effects/skill_gunner_chargeshot_hit_wall.seq", "Resources/Sound/shockwave_hit.ogg", "Resources/Sound/shockwave_hit.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/shockwave_hit.ogg" );

	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sudden.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------------------
	-- ATTACKATTRIB_VITAL_SHOCK_PULL / 땡기기 2타
	-------------------------------------------------------------------------------------------------------------
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_VITAL_SHOCK_CRITICAL );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_IMPOSSIBLE );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_VITAL_SHOCK );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_ENABLE );
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_DISABLE );
	currAttackAttrib:SetDamageData			( 0, DAMAGEMOVING_ENABLE, DAMAGEBYPART_ENABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/sword_attack.ogg", "Resources/Sound/sword_attack.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq","");--, "Resources/Sound/sword_s.ogg" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/Weapon/kill_sword_sudden.tga", 64, 32 );
	-------------------------------------------------------------------------------------------------------------
