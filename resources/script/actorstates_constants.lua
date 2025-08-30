

-------------- STATE 상수 정의 ----------------
local index = 0;

STATE_SPECTATE					= index; index = index + 1;	
STATE_GHOST						= index; index = index + 1;	
STATE_RESPAWN					= index; index = index + 1;
STATE_WAIT						= index; index = index + 1;
STATE_STANDBY					= index; index = index + 1;
STATE_NORMAL					= index; index = index + 1;
STATE_RUN						= index; index = index + 1;
STATE_SIT						= index; index = index + 1;
STATE_JUMP						= index; index = index + 1;
STATE_BOUNDJUMP					= index; index = index + 1;
STATE_FALL						= index; index = index + 1;
STATE_DODGE_LEFT				= index; index = index + 1;
STATE_DODGE_RIGHT				= index; index = index + 1;
STATE_STUN						= index; index = index + 1;
STATE_DOWN						= index; index = index + 1;
STATE_STANDUP					= index; index = index + 1;
STATE_BLOW						= index; index = index + 1;
STATE_BOUNDBLOW					= index; index = index + 1;
STATE_DAMAGE					= index; index = index + 1;
STATE_COUNTERATTACK_DAMAGE		= index; index = index + 1;
STATE_DOWNDAMAGE				= index; index = index + 1;
STATE_FASTRUN					= index; index = index + 1;
STATE_DODGE_LEFT_AFTER_STUN		= index; index = index + 1;
STATE_DODGE_RIGHT_AFTER_STUN	= index; index = index + 1;
STATE_JUMP_AFTER_ANCHORING		= index; index = index + 1;
STATE_RELOAD					= index; index = index + 1;
STATE_SOCIALACTION				= index; index = index + 1;
STATE_RESULTACTION				= index; index = index + 1;
STATE_DEATH						= index; index = index + 1;
STATE_IDLE						= index; index = index + 1;
STATE_DESTRUCTION				= index; index = index + 1;

-- 스킬
STATE_SKILL_FLY					= index; index = index + 1;
STATE_SKILL_ANCHORING			= index; index = index + 1;
STATE_SKILL_STEALTH				= index; index = index + 1;
STATE_SKILL_SHIELD				= index; index = index + 1;
STATE_SKILL_WALL_CREATION		= index; index = index + 1;
STATE_SKILL_BIND				= index; index = index + 1;
STATE_SKILL_METALIC				= index; index = index + 1;
STATE_SKILL_BERSERK				= index; index = index + 1;

-- 무기 사용
STATE_USE_WEAPON1				= index; index = index + 1;
STATE_USE_WEAPON2				= index; index = index + 1;
STATE_USE_WEAPON2_WEAK			= index; index = index + 1;
STATE_USE_WEAPON2_STRONG		= index; index = index + 1;
STATE_USE_WEAPON1_WEAK			= index; index = index + 1;
STATE_USE_WEAPON1_STRONG		= index; index = index + 1;
STATE_USE_WEAPON1_JUMP			= index; index = index + 1;
STATE_USE_WEAPON1_STRONG1		= index; index = index + 1;
STATE_USE_WEAPON1_ATTACK2		= index; index = index + 1;
STATE_USE_WEAPON1_ATTACK3		= index; index = index + 1;
STATE_USE_WEAPON1_ATTACK4		= index; index = index + 1;
STATE_USE_WEAPON1_ATTACK5		= index; index = index + 1;
STATE_USE_WEAPON1_COUNTERATTACK	= index; index = index + 1;

STATE_ARCADERESULTACTION		= index; index = index + 1;

STATE_STANDBY_INSTALL				= index; index = index + 1;
STATE_NORMAL_INSTALL				= index; index = index + 1;
STATE_RELOAD_INSTALL				= index; index = index + 1;
STATE_USE_WEAPON1_INSTALL		= index; index = index + 1;
STATE_USE_WEAPON2_INSTALL		= index; index = index + 1;

STATE_STIFFEN					= index; index = index + 1;

STATE_SKILL_TEMP_0              = index; index = index + 1;
STATE_SKILL_TEMP_1              = index; index = index + 1;       -- sp burn
STATE_SKILL_TEMP_2              = index; index = index + 1;
STATE_SKILL_TEMP_3              = index; index = index + 1;

-- 추가되는 상태값들은 무조건 아래에 추가합시다. 
STATE_UPPERCUT                  = index; index = index + 1;

STATE_SET_SKILL_ESPER_BEAM		= index; index = index + 1;		--// 에스퍼칩 세트효과 에스퍼 빔	( 손바닥에서 빔을 발사하여 피격상대를 push 하는 스킬 )// 에스퍼칩 세트효과 에스퍼 빔 ( 바닥 타격 후 캐릭터 블로우 효과 발동 스킬 )
STATE_SET_SKILL_ESPER_COAT		= index; index = index + 1;		--// 에스퍼칩 세트효과 에스퍼 코트 (  HP 대신 SP 로 데미지 타격 )// 에스퍼칩 세트효과 에스퍼 코트 (  HP 대신 SP 로 버티게하는 스킬 )
STATE_SET_SKILL_ESPER_BOMB		= index; index = index + 1;		--// 에스퍼칩 세트효과 에스퍼 밤 ( 바닥 타격 후 캐릭터 블로우 효과 발동 , 정면캐릭터는 스턴 // 에스퍼칩 세트효과 스턴 건 ( 주먹으로 상대방을 타격하여 스턴효과 발동 스킬 )
STATE_SET_SKILL_KNEE_SLIDE		= index; index = index + 1;		--// 에스퍼칩 세트효과 니슬라이드 ( 옆돌기와 같은 형식으로 앞으로 이동하는 스킬 )

STATE_TOTAL						= index; index = index + 1;

-------------- WEAPON 상수 정의 ----------------
index = -1;

WEAPONTYPE_UNUSED				= index; index = index + 1;
WEAPONTYPE_PLASMA_SWORD				= index; index = index + 1;
WEAPONTYPE_COUNTER_SWORD			= index; index = index + 1;
WEAPONTYPE_SUBMACHINE_GUN			= index; index = index + 1;
WEAPONTYPE_REVOLVER				= index; index = index + 1;
WEAPONTYPE_SMG2					= index; index = index + 1;
WEAPONTYPE_MACHINE_GUN				= index; index = index + 1;
WEAPONTYPE_RIFLE				= index; index = index + 1;
WEAPONTYPE_CANNONADE				= index; index = index + 1;
WEAPONTYPE_SENTRYGUN_BUILDER			= index; index = index + 1;
WEAPONTYPE_SENTIWALL_BUILDER			= index; index = index + 1;
WEAPONTYPE_MINE_LAUNCHER			= index; index = index + 1;
WEAPONTYPE_MIND_ENERGY				= index; index = index + 1;
WEAPONTYPE_MIND_STROM				= index; index = index + 1;
WEAPONTYPE_BAT_SWORD				= index; index = index + 1;
WEAPONTYPE_KATANA_SWORD				= index; index = index + 1;
WEAPONTYPE_CARD					= index; index = index + 1;
WEAPONTYPE_MG2					= index; index = index + 1;
WEAPONTYPE_BOUND_BLOW				= index; index = index + 1;
WEAPONTYPE_KILL_ONESELF				= index; index = index + 1;
WEAPONTYPE_SENTINEL_BUILDER			= index; index = index + 1;
WEAPONTYPE_ASSASSIN_CLAW			= index; index = index + 1;
WEAPONTYPE_SMG3					= index; index = index + 1;
WEAPONTYPE_REVOLVER2				= index; index = index + 1;
WEAPONTYPE_SMG4					= index; index = index + 1;
WEAPONTYPE_SPYDAGGER				= index; index = index + 1;
WEAPONTYPE_MIND_ORORA				= index; index = index + 1;
WEAPONTYPE_DOUBLE_SWORD				= index; index = index + 1;
WEAPONTYPE_AIR_GUN				= index; index = index + 1;
WEAPONTYPE_SMG2_HOMING			= index; index = index + 1;
WEAPONTYPE_EARTH_BOMB			= index; index = index + 1;

WEAPONTYPE_LIGHT_BOMB			= index; index = index + 1;
WEAPONTYPE_CHAIN_LIGHT_GUN		= index; index = index + 1;
WEAPONTYPE_SPARK_RIFLE			= index; index = index + 1;

WEAPONTYPE_BREAKER			= index; index = index + 1;

WEAPONTYPE_CLASSICRIFLE				 = index; index = index + 1;
WEAPONTYPE_RESCUEGUN				= index; index = index + 1;
WEAPONTYPE_SENTRYBOMB_BUILDER		= index; index = index + 1;
WEAPONTYPE_TURRET			= index; index = index + 1;
WEAPONTYPE_SIGMA_BLADE			= index; index = index + 1;
WEAPONTYPE_KATANA_A_SWORD		= index; index = index + 1;

WEAPONTYPE_STANDARD_RAILGUN		= index; index = index + 1;
WEAPONTYPE_DUAL_GUN		= index; index = index + 1;
WEAPONTYPE_DEATH_SCYTHE = index; index = index + 1; -- 사신낫
WEAPONTYPE_IRON_BOOTS   = index; index = index + 1; -- 아이언부츠
WEAPONTYPE_GAUSS_RIFLE_MK2 = index; index = index + 1; -- 가우스 라이플 마크2
WEAPONTYPE_ROCKET_LAUNCHER = index; index = index + 1; -- 로켓 런처
WEAPONTYPE_RESCUEGUN_MK2 = index; index = index + 1; -- 레스큐건MK2
WEAPONTYPE_DEMONIC_KNUCKLE = index; index = index + 1; -- 데모닉 너클
WEAPONTYPE_CHAIN_LIGHT_GUN_MK2	= index; index = index + 1;	-- 체인 라이트닝 건 MK2
WEAPONTYPE_ASSULT_RIFLE_UNIQUE	= index; index = index + 1; -- 어썰트 라이플 유니크.
WEAPONTYPE_VIRTUAL_SHIELD = index; index = index + 1; -- 버추얼 실드
WEAPONYTPE_RAIL_MARTINSTICK = index; index = index + 1; -- 레일건 유니크 마틴스틴
WEAPONTYPE_ENERGY_SUPPLY_BUILDER = index; index = index + 1; -- 에너지 서플라이
WEAPONTYPE_MIND_STROM_UNIQUE	= index; index = index + 1;	--마인드 스톰 유니크 [12/4/2015 sjlee0301]
WEAPONTYPE_VITAL_SHOCK			= index; index = index + 1;	-- 바이탈 쇼크 리메이크 [2/12/2016 sjlee0301]
--AI 용
WEAPONTYPE_MELEE_				= index; index = index + 1;
WEAPONTYPE_HEAVY_				= index; index = index + 1;
WEAPONTYPE_INSTALL_				= index; index = index + 1;
WEAPONTYPE_THROW_				= index; index = index + 1;
WEAPONTYPE_MIND_				= index; index = index + 1;
WEAPONTYPE_MISSILE_				= index; index = index + 1;
WEAPONTYPE_SNIPE_				= index; index = index + 1;

WEAPONTYPE_TOTAL				= index; index = index + 1;

-------------- ATTACK ATTRIB 상수 정의 ----------------
index = 0;

ATTACKATTRIB_NULL							= index; index = index + 1;			

ATTACKATTRIB_PLASMA_SWORD_CRITICAL			= index; index = index + 1;
ATTACKATTRIB_PLASMA_SWORD_STAND_WEAK		= index; index = index + 1;
ATTACKATTRIB_PLASMA_SWORD_STAND_STRONG		= index; index = index + 1;
ATTACKATTRIB_PLASMA_SWORD_ATTACK2_WEAK		= index; index = index + 1;
ATTACKATTRIB_PLASMA_SWORD_ATTACK2			= index; index = index + 1;
ATTACKATTRIB_PLASMA_SWORD_JUMP_CRITICAL		= index; index = index + 1;
ATTACKATTRIB_PLASMA_SWORD_JUMP				= index; index = index + 1;
ATTACKATTRIB_SUBMACHINE_GUN					= index; index = index + 1;
ATTACKATTRIB_MACHINE_GUN_LOWER				= index; index = index + 1;
ATTACKATTRIB_MACHINE_GUN_MIDDLE				= index; index = index + 1;
ATTACKATTRIB_MACHINE_GUN_UPPER				= index; index = index + 1;
ATTACKATTRIB_AIMED_SHOT						= index; index = index + 1;
ATTACKATTRIB_AIMED_SHOT_2					= index; index = index + 1;
ATTACKATTRIB_MINE_LAUNCHER					= index; index = index + 1;
ATTACKATTRIB_MIND_ENERGY					= index; index = index + 1;
ATTACKATTRIB_SENTRYGUN_MACHINE_GUN			= index; index = index + 1;
ATTACKATTRIB_BOUND_BLOW						= index; index = index + 1;
ATTACKATTRIB_KILL_ONESELF					= index; index = index + 1;
ATTACKATTRIB_SENTIWALL_WAVE					= index; index = index + 1;
ATTACKATTRIB_SENTINEL_WAVE					= index; index = index + 1;
ATTACKATTRIB_REVOLVER						= index; index = index + 1;
ATTACKATTRIB_CANNONADE_SHOT					= index; index = index + 1;
ATTACKATTRIB_CANNONADE_SHOT_2				= index; index = index + 1;
ATTACKATTRIB_COUNTER_SWORD_COUNTER_CRITICAL	= index; index = index + 1;
ATTACKATTRIB_COUNTER_SWORD_COUNTER_ATTACK	= index; index = index + 1;
ATTACKATTRIB_COUNTER_SWORD_CRITICAL			= index; index = index + 1;
ATTACKATTRIB_COUNTER_SWORD_ATTACK1			= index; index = index + 1;
ATTACKATTRIB_COUNTER_SWORD_ATTACK2			= index; index = index + 1;
ATTACKATTRIB_COUNTER_SWORD_ATTACK3			= index; index = index + 1;
ATTACKATTRIB_COUNTER_SWORD_ATTACK4			= index; index = index + 1;
ATTACKATTRIB_COUNTER_SWORD_JUMPDASH			= index; index = index + 1;
ATTACKATTRIB_MINDSTORM_ATTACK1				= index; index = index + 1;
ATTACKATTRIB_MINDSTORM_ATTACK2				= index; index = index + 1;
ATTACKATTRIB_SMG2							= index; index = index + 1;
ATTACKATTRIB_BAT_SWORD_STAND_WEAK			= index; index = index + 1;
ATTACKATTRIB_BAT_SWORD_STAND_STRONG			= index; index = index + 1;
ATTACKATTRIB_BAT_SWORD_ATTACK2_WEAK			= index; index = index + 1;
ATTACKATTRIB_BAT_SWORD_ATTACK2				= index; index = index + 1;
ATTACKATTRIB_BAT_SWORD_CRITICAL				= index; index = index + 1;
ATTACKATTRIB_BAT_SWORD_JUMP_CRITICAL		= index; index = index + 1;
ATTACKATTRIB_BAT_SWORD_JUMP					= index; index = index + 1;
ATTACKATTRIB_KATANA_SWORD_CRITICAL			= index; index = index + 1;
ATTACKATTRIB_KATANA_SWORD_ATTACK1			= index; index = index + 1;
ATTACKATTRIB_KATANA_SWORD_ATTACK2			= index; index = index + 1;
ATTACKATTRIB_KATANA_SWORD_ATTACK3			= index; index = index + 1;
ATTACKATTRIB_KATANA_SWORD_ATTACK4			= index; index = index + 1;
ATTACKATTRIB_KATANA_SWORD_JUMP_CRITICAL		= index; index = index + 1;
ATTACKATTRIB_KATANA_SWORD_JUMP				= index; index = index + 1;
ATTACKATTRIB_CARD_ATTACK1					= index; index = index + 1;
ATTACKATTRIB_CARD_ATTACK2					= index; index = index + 1;
ATTACKATTRIB_CARD_ATTACK3					= index; index = index + 1;
ATTACKATTRIB_MG2							= index; index = index + 1;
ATTACKATTRIB_ASSASSIN_CLAW					= index; index = index + 1;
ATTACKATTRIB_SMG3							= index; index = index + 1;
ATTACKATTRIB_REVOLVER2						= index; index = index + 1;
ATTACKATTRIB_SMG4							= index; index = index + 1;
ATTACKATTRIB_SMG3_GUN						= index; index = index + 1;
ATTACKATTRIB_SMG3_SWORD						= index; index = index + 1;
ATTACKATTRIB_SPYDAGGER_CRITICAL				= index; index = index + 1;
ATTACKATTRIB_SPYDAGGER_ATTACK1				= index; index = index + 1;
ATTACKATTRIB_SPYDAGGER_ATTACK2				= index; index = index + 1;
ATTACKATTRIB_SPYDAGGER_ATTACK3				= index; index = index + 1;
ATTACKATTRIB_SPYDAGGER_JUMP_CRITICAL			= index; index = index + 1;
ATTACKATTRIB_SPYDAGGER_JUMP				= index; index = index + 1;
ATTACKATTRIB_DOUBLE_SWORD_CRITICAL				= index; index = index + 1;
ATTACKATTRIB_DOUBLE_SWORD_ATTACK1				= index; index = index + 1;
ATTACKATTRIB_DOUBLE_SWORD_ATTACK2				= index; index = index + 1;
ATTACKATTRIB_DOUBLE_SWORD_ATTACK3				= index; index = index + 1;
ATTACKATTRIB_DOUBLE_SWORD_ATTACK4				= index; index = index + 1;
ATTACKATTRIB_DOUBLE_SWORD_JUMPDASH				= index; index = index + 1;
ATTACKATTRIB_AIRGUN						= index; index = index + 1;
ATTACKATTRIB_SMG2_HOMING					= index; index = index + 1;
ATTACKATTRIB_EARTH_BOMBER					= index; index = index + 1;

ATTACKATTRIB_LIGHT_BOMBER					= index; index = index + 1;
ATTACKATTRIB_CHAIN_LIGHT_GUN					= index; index = index + 1;
ATTACKATTRIB_SPARK_RIFLE						= index; index = index + 1;
ATTACKATTRIB_CHAIN_LIGHT_GUN_EXPLOSION		= index; index = index + 1;

ATTACKATTRIB_BREAKER_SWORD_CRITICAL               = index; index = index + 1;
ATTACKATTRIB_BREAKER_SWORD_ATTACK1			= index; index = index + 1;
ATTACKATTRIB_BREAKER_SWORD_ATTACK2			= index; index = index + 1;
ATTACKATTRIB_BREAKER_SWORD_ATTACK3			= index; index = index + 1;
ATTACKATTRIB_BREAKER_SWORD_ATTACK4			= index; index = index + 1;
ATTACKATTRIB_BREAKER_SWORD_JUMPDASH		= index; index = index + 1;

ATTACKATTRIB_CLASSICRIFLE						= index; index = index + 1;
ATTACKATTRIB_COGWHEEL_CLASSICRIFLE				= index; index = index + 1;
ATTACKATTRIB_RESCUEGUN						= index; index = index + 1;
ATTACKATTRIB_SENTRYBOMB_BUILDER			= index; index = index + 1;

ATTACKATTRIB_TURRET_NORMAL					= index; index = index + 1;
ATTACKATTRIB_TURRET_INSTALL					= index; index = index + 1;

ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL		= index; index = index + 1;
ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK			= index; index = index + 1;
ATTACKATTRIB_SIGMA_BLADE_CRITICAL					= index; index = index + 1;
ATTACKATTRIB_SIGMA_BLADE_ATTACK1					= index; index = index + 1;
ATTACKATTRIB_SIGMA_BLADE_ATTACK2					= index; index = index + 1;
ATTACKATTRIB_SIGMA_BLADE_ATTACK3					= index; index = index + 1;
ATTACKATTRIB_SIGMA_BLADE_ATTACK4					= index; index = index + 1;
ATTACKATTRIB_SIGMA_BLADE_JUMPDASH				= index; index = index + 1;

ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL		= index; index = index + 1;
ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK		= index; index = index + 1;
ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_CRITICAL				= index; index = index + 1;
ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK1				= index; index = index + 1;
ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK2				= index; index = index + 1;
ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK3				= index; index = index + 1;
ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK4				= index; index = index + 1;
ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_JUMPDASH			= index; index = index + 1;

ATTACKATTRIB_KATANA_A_ATTACK2				= index; index = index + 1;
ATTACKATTRIB_KATANA_A_ATTACK2_CHARGE		= index; index = index + 1;
ATTACKATTRIB_KATANA_A_ATTACK2_FULL_CHARGE	= index; index = index + 1;
ATTACKATTRIB_KATANA_A_SWORD_CRITICAL  		= index; index = index + 1;
ATTACKATTRIB_KATANA_A_SWORD_ATTACK1   		= index; index = index + 1;
ATTACKATTRIB_KATANA_A_SWORD_ATTACK2   		= index; index = index + 1;
ATTACKATTRIB_KATANA_A_SWORD_ATTACK3   		= index; index = index + 1;
ATTACKATTRIB_KATANA_A_SWORD_ATTACK4   		= index; index = index + 1;
ATTACKATTRIB_KATANA_A_SWORD_JUMPDASH  		= index; index = index + 1;

ATTACKATTRIB_VIOLA_KATANA_A_ATTACK2	           		= index; index = index + 1;
ATTACKATTRIB_VIOLA_KATANA_A_ATTACK2_CHARGE	   		= index; index = index + 1;
ATTACKATTRIB_VIOLA_KATANA_A_ATTACK2_FULL_CHARGE		= index; index = index + 1;
ATTACKATTRIB_VIOLA_KATANA_A_SWORD_CRITICAL     		= index; index = index + 1;
ATTACKATTRIB_VIOLA_KATANA_A_SWORD_ATTACK1      		= index; index = index + 1;
ATTACKATTRIB_VIOLA_KATANA_A_SWORD_ATTACK2      		= index; index = index + 1;
ATTACKATTRIB_VIOLA_KATANA_A_SWORD_ATTACK3      		= index; index = index + 1;
ATTACKATTRIB_VIOLA_KATANA_A_SWORD_ATTACK4      		= index; index = index + 1;
ATTACKATTRIB_VIOLA_KATANA_A_SWORD_JUMPDASH     		= index; index = index + 1;

ATTACKATTRIB_STANDARD_AIMED_SHOT			= index; index = index + 1;
ATTACKATTRIB_STANDARD_AIMED_SHOT_2			= index; index = index + 1;

ATTACKATTRIB_DUAL_GUN_ATTACK1			= index; index = index + 1;
ATTACKATTRIB_DUAL_GUN_ATTACK2			= index; index = index + 1;
ATTACKATTRIB_DUAL_GUN_ATTACK3			= index; index = index + 1;

ATTACKATTRIB_BOSSVIRUS_KNUCKLE				= index; index = index + 1;
ATTACKATTRIB_BOSSVIRUS_SMOKE				= index; index = index + 1;
ATTACKATTRIB_BOSSVIRUS_EXPLOSION			= index; index = index + 1;
ATTACKATTRIB_BOSSVIRUS_STUN					= index; index = index + 1;
ATTACKATTRIB_BOSSSHOTA_KNUCKLE				= index; index = index + 1;
ATTACKATTRIB_BOSSSHOTA_ASSAULT				= index; index = index + 1;
ATTACKATTRIB_BOSSSHOTA_LASER				= index; index = index + 1;	
ATTACKATTRIB_TRA_ATTACK1					= index; index = index + 1;	
ATTACKATTRIB_TRB_ATTACK1_LEFT				= index; index = index + 1;	
ATTACKATTRIB_TRB_ATTACK1_RIGHT				= index; index = index + 1;	
ATTACKATTRIB_VIRUS_ATTACK1					= index; index = index + 1;	
ATTACKATTRIB_TRA_ATTACK2_LEFT				= index; index = index + 1;	
ATTACKATTRIB_TRA_ATTACK2_RIGHT				= index; index = index + 1;	
ATTACKATTRIB_TRB_ATTACK2					= index; index = index + 1;	
ATTACKATTRIB_TRABIG_EXPLOSION				= index; index = index + 1;	
ATTACKATTRIB_TEAM_CHANGE					= index; index = index + 1;	

ATTACKATTRIB_PAWN_0						= index; index = index + 1;	
ATTACKATTRIB_PAWN_1						= index; index = index + 1;	
ATTACKATTRIB_PVE_KNIGHT_0					= index; index = index + 1;	
ATTACKATTRIB_PVE_KNIGHT_1					= index; index = index + 1;	
ATTACKATTRIB_PVE_KNIGHT_2					= index; index = index + 1;	
ATTACKATTRIB_PVE_KNIGHT_3					= index; index = index + 1;	
ATTACKATTRIB_PVE_BISHOP						= index; index = index + 1;	
ATTACKATTRIB_PVE_QUEEN_0					= index; index = index + 1;	
ATTACKATTRIB_PVE_QUEEN_1					= index; index = index + 1;	
ATTACKATTRIB_PVE_KING_0 						= index; index = index + 1;	
ATTACKATTRIB_PVE_KING_1 						= index; index = index + 1;	
ATTACKATTRIB_PVE_KING_2 						= index; index = index + 1;	
ATTACKATTRIB_PVE_KING_3 						= index; index = index + 1;	

ATTACKATTRIB_FRYPAN_BAT_SWORD_STAND_WEAK	= index; index = index + 1;	-- 프라이팬 배트 일반 공격
ATTACKATTRIB_FRYPAN_BAT_SWORD_STAND_STRONG	= index; index = index + 1;	-- 프라이팬 배트 강공격
ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2_WEAK	= index; index = index + 1;	-- 프라이팬 배트 회전 공격
ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2		= index; index = index + 1;	-- 프라이팬 배트 회전 공격
ATTACKATTRIB_FRYPAN_BAT_SWORD_CRITICAL		= index; index = index + 1;	-- 프라이팬 배트 일반 공격 크리티컬 판정
ATTACKATTRIB_FRYPAN_BAT_SWORD_JUMP_CRITICAL	= index; index = index + 1;	-- 프라이팬 배트 점프 공격 크리티컬 판정
ATTACKATTRIB_FRYPAN_BAT_SWORD_JUMP			= index; index = index + 1;	-- 프라이팬 배트 점프 공격
ATTACKATTRIB_SMG2_WATERGUN				= index; index = index + 1;	-- 워터건 공격 

-- 사신낫 --
ATTACKATTRIB_DEATH_SCYTHE_CRITICAL = index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_ATTACK_1 = index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_ATTACK_2 = index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_COUNTER_CRITICAL	= index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_COUNTER_ATTACK	= index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_JUMP_ATTACK       = index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_SP_RIGHT_ATTACK   = index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_ATTACK_3          = index; index = index + 1;
------------

-- 아이언 부츠 --
ATTACKATTRIB_IRON_BOOTS_FIRST_KICK_ATTACK   = index; index = index + 1;
ATTACKATTRIB_IRON_BOOTS_SECOND_KICK_ATTACK  = index; index = index + 1;
ATTACKATTRIB_IRON_BOOTS_THIRD_KICK_ATTACK   = index; index = index + 1;
ATTACKATTRIB_IRON_BOOTS_FOURTH_KICK_ATTACK  = index; index = index + 1;
ATTACKATTRIB_IRON_BOOTS_OBJECT_BLAST        = index; index = index + 1;
ATTACKATTRIB_IRON_BOOTS_DASH_KICK_ATTACK    = index; index = index + 1;
ATTACKATTRIB_IRON_BOOTS_UPPER_KICK_ATTACK   = index; index = index + 1;
ATTACKATTRIB_IRON_BOOTS_JUMP_SMASH_KICK_ATTACK  = index; index = index + 1;
ATTACKATTRIB_IRON_BOOTS_BOOST_DASH_ATTACK       = index; index = index + 1;
-----------------

-- 가우스 라이플 마크2 --
ATTACKATTRIB_GAUSS_RIFLE_MK2_LEFT_ATTACK	= index; index = index + 1;	
ATTACKATTRIB_GAUSS_RIFLE_MK2_RIGHT_ATTACK   = index; index = index + 1;
-----------------

-- 로켓 런처 --
ATTACKATTRIB_ROCKET_LAUNCHER_LEFT_ATTACK	= index; index = index + 1;
ATTACKATTRIB_ROCKET_LAUNCHER_RIGHT_ATTACK   = index; index = index + 1;

-- 라이트닝 봄버 MK2 --
ATTACKATTRIB_LIGHT_BOMBER_MK2				= index; index = index + 1;

-- 레스큐 건 MK2 --
ATTACKATTRIB_RESCUEGUN_MK2_LEFT_ATTACK		= index; index = index + 1;
ATTACKATTRIB_RESCUEGUN_MK2_RIGHT_ATTACK		= index; index = index + 1;

-- 데모닉 너클
ATTACKATTRIB_DEMONIC_KNUCKLE_LEFT_ATTACK	= index; index = index + 1;
ATTACKATTRIB_DEMONIC_KNUCKLE_LEFT_ATTACK2	= index; index = index + 1;
ATTACKATTRIB_DEMONIC_KNUCKLE_JUMP_ATTACK	= index; index = index + 1;
ATTACKATTRIB_DEMONIC_KNUCKLE_RIGHT_ATTACK	= index; index = index + 1;

-- 버스트 샷건 MK2
ATTACKATTRIB_BUSTSHOTGUN_MK2_ATTACK			= index; index = index + 1;

-- 체인 라이트 건 MK2
ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2			= index; index = index + 1;

-- 어썰트 라이플 유니크
ATTACKATTRIB_ASSULT_RIFLE_UNIQUE			= index; index = index + 1;

-- 에너지 서플라이
ATTACKATTRIB_ENERGY_SUPPLY_INSTALL			= index; index = index + 1;

-- 버츄얼 쉴드
ATTACKATTRIB_VIRTUAL_SHIELD_COUNTER_CRITICAL= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_COUNTER_ATTACK	= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_CRITICAL		= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK1			= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK2			= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK3			= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK4			= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_JUMPDASH		= index; index = index + 1;

-- 프리텐더
ATTACKATTRIB_RAIL_MARTINSTICK				= index; index = index + 1;
ATTACKATTRIB_RAIL_MARTINSTICK_2				= index; index = index + 1;

-- 마인드 스톰 유니크
ATTACKATTRIB_MINDSTORM_UNIQUE_ATTACK1		= index; index = index + 1;	
ATTACKATTRIB_MINDSTORM_UNIQUE_ATTACK2		= index; index = index + 1;

-- 스파크 라이플 유니크
ATTACKATTRIB_SPARK_RIFLE_UNIQUE				= index; index = index + 1;		
-- 에어건 유니크		
ATTACKATTRIB_AIRGUN_UNIQUE					= index; index = index + 1;				

--글리치 조이 시그마 블레이드
--WEAPONTYPE_SIGMA_BLADE
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL		= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK		= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_CRITICAL				= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1				= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK2				= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK3				= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK4				= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_JUMPDASH				= index; index = index + 1;

-- 글리치 파괴 스파이대거
ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK1			= index; index = index + 1;
ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK2			= index; index = index + 1;

-- 에스퍼 스킬
ATTACKATTRIB_ESPERSKILL_ESPERBEAM			= index; index = index + 1;	
ATTACKATTRIB_ESPERSKILL_ESPER_BOMB			= index; index = index + 1;

-- 바이탈 쇼크
ATTACKATTRIB_VITAL_SHOCK					= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_CRITICAL			= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_LEFT_WEAK_ATTACK	= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_DASH				= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_STRONG1			= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_STRONG			= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_PULL				= index; index = index + 1;

ATTACKATTRIB_TOTAL							= index; index = index + 1;

-------------- ATTACK ATTRIB GUN TRACER TYPE 상수 정의 ----------------
index = 0;
GUNTRACER_TYPE_BEZIER			= index; index = index + 1;
GUNTRACER_TYPE_LINK				= index; index = index + 1;
GUNTRACER_TYPE_TOTAL				= index; index = index + 1;

-------------- SetAnimParam 함수에 쓰이는 상수 정의 ----------------
LOOP_FALSE			= false;
LOOP_TRUE			= true;
RESET_FALSE			= false;
RESET_TRUE			= true;

------- 하체 상태에 따른 애니메이션 ---------
index = 0;

LOWER_ANIM_NORMAL			= index; index = index + 1;
LOWER_ANIM_FRONT			= index; index = index + 1;
LOWER_ANIM_LEFT_FRONT		= index; index = index + 1;
LOWER_ANIM_LEFT				= index; index = index + 1;
LOWER_ANIM_LEFT_BACK		= index; index = index + 1;
LOWER_ANIM_RIGHT_FRONT		= index; index = index + 1;
LOWER_ANIM_RIGHT			= index; index = index + 1;
LOWER_ANIM_RIGHT_BACK		= index; index = index + 1;
LOWER_ANIM_BACK				= index; index = index + 1;

LOWER_ANIM_TOTAL			= index; index = index + 1;

------- 캐릭터 상태에 따른 애니메이션 ---------
local index = 0;

ACTOR_ANIM_FRONT			= index; index = index + 1;
ACTOR_ANIM_FRONT_LEFT		= index; index = index + 1;
ACTOR_ANIM_LEFT				= index; index = index + 1;
ACTOR_ANIM_FRONT_RIGHT		= index; index = index + 1;
ACTOR_ANIM_RIGHT			= index; index = index + 1;
ACTOR_ANIM_BACK				= index; index = index + 1;
ACTOR_ANIM_BACK_LEFT		= index; index = index + 1;
ACTOR_ANIM_BACK_RIGHT		= index; index = index + 1;
ACTOR_ANIM_NORMAL			= index; index = index + 1;

ACTOR_ANIM_TOTAL			= index; index = index + 1;


-------------- INPUT 상수 정의 ----------------
index							= 0;

INPUT_STOP						= index; index = index + 1;

INPUT_DIRECT_ACTION_BEGIN		= index; index = index + 1;

INPUT_MOVE						= index; index = index + 1;

INPUT_USE_WEAPON_BEGIN			= index; index = index + 1;
INPUT_USE_WEAPON1				= index; index = index + 1;
INPUT_USE_WEAPON1_BEGIN         = index; index = index + 1;
INPUT_USE_WEAPON1_END			= index; index = index + 1;
INPUT_USE_WEAPON1_END_SHORT		= index; index = index + 1;
INPUT_USE_WEAPON1_END_LONG		= index; index = index + 1;
INPUT_USE_WEAPON2				= index; index = index + 1;
INPUT_USE_WEAPON2_BEGIN			= index; index = index + 1;
INPUT_USE_WEAPON2_END			= index; index = index + 1;
INPUT_USE_WEAPON2_END_SHORT     = index; index = index + 1;
INPUT_USE_WEAPON2_END_LONG      = index; index = index + 1;
INPUT_USE_WEAPON_END			= index; index = index + 1;

INPUT_JUMP						= index; index = index + 1;
INPUT_FLY_END					= index; index = index + 1;
INPUT_FLY_FALL					= index; index = index + 1;
INPUT_SIT						= index; index = index + 1;
INPUT_SIT_CANCEL				= index; index = index + 1;
INPUT_SPECIAL_ACTION1			= index; index = index + 1;
INPUT_SPECIAL_ACTION1_END		= index; index = index + 1;
INPUT_SPECIAL_ACTION2			= index; index = index + 1;
INPUT_SPECIAL_ACTION2_END		= index; index = index + 1;

INPUT_DODGE_BEGIN				= index; index = index + 1;
INPUT_DODGE_FRONT				= index; index = index + 1;
INPUT_DODGE_BACK				= index; index = index + 1;
INPUT_DODGE_LEFT				= index; index = index + 1;
INPUT_DODGE_RIGHT				= index; index = index + 1;
INPUT_DODGE_END					= index; index = index + 1;

INPUT_RELOAD					= index; index = index + 1;

INPUT_CHANGE_WEAPON_BEGIN		= index; index = index + 1;
INPUT_CHANGE_WEAPON_1			= index; index = index + 1;
INPUT_CHANGE_WEAPON_2			= index; index = index + 1;
INPUT_CHANGE_WEAPON_3			= index; index = index + 1;
INPUT_CHANGE_WEAPON_4			= index; index = index + 1;
INPUT_CHANGE_WEAPON_5			= index; index = index + 1;
INPUT_CHANGE_WEAPON_END			= index; index = index + 1;

INPUT_CHANGE_WEAPON_PREV        = index; index = index + 1;
INPUT_CHANGE_WEAPON_NEXT        = index; index = index + 1;

INPUT_ZOOM_IN                   = index; index = index + 1;
INPUT_ZOOM_OUT                  = index; index = index + 1;

INPUT_FASTRUN					= index; index = index + 1;
INPUT_FASTRUN_END				= index; index = index + 1;

INPUT_DROP_BALL                 = index; index = index + 1;

INPUT_DIRECT_ACTION_END			= index; index = index + 1;

INPUT_STUN						= index; index = index + 1;
INPUT_BLOW						= index; index = index + 1;
INPUT_DAMAGE					= index; index = index + 1;
INPUT_DOWN						= index; index = index + 1;
INPUT_COUNTERATTACK_DAMAGE		= index; index = index + 1;
INPUT_ATTACKBLOCK				= index; index = index + 1;
INPUT_STIFFEN                   = index; index = index + 1;
INPUT_UPPERCUT                  = index; index = index + 1;

INPUT_LEVITATE					= index; index = index + 1;
INPUT_LEVITATE_END				= index; index = index + 1;
INPUT_NORMAL					= index; index = index + 1;
INPUT_SPECTATE					= index; index = index + 1;
INPUT_SOCIALACTION				= index; index = index + 1;
INPUT_RESULTACTION				= index; index = index + 1;

INPUT_EXTRA						= index; index = index + 1;



-------------- USEWEAPON 상수 정의 ----------------
index							= 0;
Weapon1State					= index; index = index + 1;		-- 왼쪽 누르면 무조건
Weapon2State					= index; index = index + 1;		-- 오른쪽 누르면 무조건 
Weapon2TempState				= index; index = index + 1;		-- 사용안함. 
Weapon1WeakState				= index; index = index + 1;		-- 왼쪽 클릭 일정시간 이하 
Weapon1StrongState				= index; index = index + 1;		-- 왼쪽 클릭 일정시간 이상 : 이동 강 공격 
Weapon1JumpState				= index; index = index + 1;		-- 점프 중 왼쪽 클릭 
Weapon1Strong1State				= index; index = index + 1;		-- 왼쪽 클릭 일정시간 이상 : 이동 X 공격 
Weapon1Attack2State				= index; index = index + 1;		-- 왼쪽 공격 2타째 
Weapon1Attack3State				= index; index = index + 1;		-- 왼쪽 공격 3타째 
Weapon1Attack4State				= index; index = index + 1;		-- 왼쪽 공격 4타째 
Weapon1Attack5State				= index; index = index + 1;		-- 왼쪽 공격 5타째 
Weapon1CounterAttackState		= index; index = index + 1;		-- 카운터 스워드 어퍼컷 
Weapon2WeakState				= index; index = index + 1;		-- 오른쪽 버튼 일정시간 이하 
Weapon2StrongState				= index; index = index + 1;		-- 오른쪽 버튼 일정시간 이상 
Weapon1InstallState				= index; index = index + 1;		-- 오른쪽 버튼 일정시간 이상 거치상태
Weapon2InstallState				= index; index = index + 1;		-- 오른쪽 버튼 일정시간 이상 거치상태





-------------- WEAPON ANIMATION 상수 정의 ----------------
index							= 0;
ANIM_Weapon1State				= index; index = index + 1;		-- 왼쪽 누르면 무조건
ANIM_Weapon2State				= index; index = index + 1;		-- 오른쪽 누르면 무조건 
ANIM_Weapon2TempState			= index; index = index + 1;		-- 사용안함. 
ANIM_Weapon1WeakState			= index; index = index + 1;		-- 왼쪽 클릭 일정시간 이하 
ANIM_Weapon1StrongState			= index; index = index + 1;		-- 왼쪽 클릭 일정시간 이상 : 이동 강 공격 
ANIM_Weapon1JumpState			= index; index = index + 1;		-- 점프 중 왼쪽 클릭 
ANIM_Weapon1Strong1State		= index; index = index + 1;		-- 왼쪽 클릭 일정시간 이상 : 이동 X 공격 
ANIM_Weapon1Attack2State		= index; index = index + 1;		-- 왼쪽 공격 2타째 
ANIM_Weapon1Attack3State		= index; index = index + 1;		-- 왼쪽 공격 3타째 
ANIM_Weapon1Attack4State		= index; index = index + 1;		-- 왼쪽 공격 4타째 
ANIM_Weapon1Attack5State		= index; index = index + 1;		-- 왼쪽 공격 5타째 
ANIM_Weapon1CounterAttackState	= index; index = index + 1;		-- 카운터 스워드 어퍼컷 
ANIM_Weapon2WeakState			= index; index = index + 1;		-- 오른쪽 버튼 일정시간 이하 
ANIM_Weapon2StrongState			= index; index = index + 1;		-- 오른쪽 버튼 일정시간 이상 
ANIM_Weapon1InstallState			= index; index = index + 1;		-- 거치왼쪽공격 상태
ANIM_Weapon2InstallState			= index; index = index + 1;		-- 거치오른쪽공격 상태
ANIM_NormalState				= index; index = index + 1;		-- 일반 상태
ANIM_DamageState				= index; index = index + 1;		-- 데미지 상태
ANIM_RunState					= index; index = index + 1;		-- 일반 걷기 상태 -- 대쉬는 따로 있음.
ANIM_ReloadState				= index; index = index + 1;		-- 재장전 상태
ANIM_NormalInstallState			= index; index = index + 1;		-- 거치일반 상태
ANIM_ReloadInstallState			= index; index = index + 1;		-- 거치재장전 상태
WEAPON_ANIM_STATE_END			= index; index = index + 1;		-- 끝


-------------- ESPERACTION ANIMATION 상수 정의 ----------------
index							= 0;
ANIM_ESPERACTION_ESPERBEAM		= index; index = index + 1;		-- 스턴건
ANIM_ESPERACTION_ESPERCOAT		= index; index = index + 1;		-- 에스퍼 코트
ANIM_ESPERACTION_ESPERBOMB		= index; index = index + 1;		-- 에스퍼 밤
ANIM_ESPERACTION_KNEESLIDE		= index; index = index + 1;		-- 니 슬라이드
