

-------------- STATE ��� ���� ----------------
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

-- ��ų
STATE_SKILL_FLY					= index; index = index + 1;
STATE_SKILL_ANCHORING			= index; index = index + 1;
STATE_SKILL_STEALTH				= index; index = index + 1;
STATE_SKILL_SHIELD				= index; index = index + 1;
STATE_SKILL_WALL_CREATION		= index; index = index + 1;
STATE_SKILL_BIND				= index; index = index + 1;
STATE_SKILL_METALIC				= index; index = index + 1;
STATE_SKILL_BERSERK				= index; index = index + 1;

-- ���� ���
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

-- �߰��Ǵ� ���°����� ������ �Ʒ��� �߰��սô�. 
STATE_UPPERCUT                  = index; index = index + 1;

STATE_SET_SKILL_ESPER_BEAM		= index; index = index + 1;		--// ������Ĩ ��Ʈȿ�� ������ ��	( �չٴڿ��� ���� �߻��Ͽ� �ǰݻ�븦 push �ϴ� ��ų )// ������Ĩ ��Ʈȿ�� ������ �� ( �ٴ� Ÿ�� �� ĳ���� ��ο� ȿ�� �ߵ� ��ų )
STATE_SET_SKILL_ESPER_COAT		= index; index = index + 1;		--// ������Ĩ ��Ʈȿ�� ������ ��Ʈ (  HP ��� SP �� ������ Ÿ�� )// ������Ĩ ��Ʈȿ�� ������ ��Ʈ (  HP ��� SP �� ��Ƽ���ϴ� ��ų )
STATE_SET_SKILL_ESPER_BOMB		= index; index = index + 1;		--// ������Ĩ ��Ʈȿ�� ������ �� ( �ٴ� Ÿ�� �� ĳ���� ��ο� ȿ�� �ߵ� , ����ĳ���ʹ� ���� // ������Ĩ ��Ʈȿ�� ���� �� ( �ָ����� ������ Ÿ���Ͽ� ����ȿ�� �ߵ� ��ų )
STATE_SET_SKILL_KNEE_SLIDE		= index; index = index + 1;		--// ������Ĩ ��Ʈȿ�� �Ͻ����̵� ( ������� ���� �������� ������ �̵��ϴ� ��ų )

STATE_TOTAL						= index; index = index + 1;

-------------- WEAPON ��� ���� ----------------
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
WEAPONTYPE_DEATH_SCYTHE = index; index = index + 1; -- ��ų�
WEAPONTYPE_IRON_BOOTS   = index; index = index + 1; -- ���̾����
WEAPONTYPE_GAUSS_RIFLE_MK2 = index; index = index + 1; -- ���콺 ������ ��ũ2
WEAPONTYPE_ROCKET_LAUNCHER = index; index = index + 1; -- ���� ��ó
WEAPONTYPE_RESCUEGUN_MK2 = index; index = index + 1; -- ����ť��MK2
WEAPONTYPE_DEMONIC_KNUCKLE = index; index = index + 1; -- ����� ��Ŭ
WEAPONTYPE_CHAIN_LIGHT_GUN_MK2	= index; index = index + 1;	-- ü�� ����Ʈ�� �� MK2
WEAPONTYPE_ASSULT_RIFLE_UNIQUE	= index; index = index + 1; -- ���Ʈ ������ ����ũ.
WEAPONTYPE_VIRTUAL_SHIELD = index; index = index + 1; -- ���߾� �ǵ�
WEAPONYTPE_RAIL_MARTINSTICK = index; index = index + 1; -- ���ϰ� ����ũ ��ƾ��ƾ
WEAPONTYPE_ENERGY_SUPPLY_BUILDER = index; index = index + 1; -- ������ ���ö���
WEAPONTYPE_MIND_STROM_UNIQUE	= index; index = index + 1;	--���ε� ���� ����ũ [12/4/2015 sjlee0301]
WEAPONTYPE_VITAL_SHOCK			= index; index = index + 1;	-- ����Ż ��ũ ������ũ [2/12/2016 sjlee0301]
--AI ��
WEAPONTYPE_MELEE_				= index; index = index + 1;
WEAPONTYPE_HEAVY_				= index; index = index + 1;
WEAPONTYPE_INSTALL_				= index; index = index + 1;
WEAPONTYPE_THROW_				= index; index = index + 1;
WEAPONTYPE_MIND_				= index; index = index + 1;
WEAPONTYPE_MISSILE_				= index; index = index + 1;
WEAPONTYPE_SNIPE_				= index; index = index + 1;

WEAPONTYPE_TOTAL				= index; index = index + 1;

-------------- ATTACK ATTRIB ��� ���� ----------------
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

ATTACKATTRIB_FRYPAN_BAT_SWORD_STAND_WEAK	= index; index = index + 1;	-- �������� ��Ʈ �Ϲ� ����
ATTACKATTRIB_FRYPAN_BAT_SWORD_STAND_STRONG	= index; index = index + 1;	-- �������� ��Ʈ ������
ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2_WEAK	= index; index = index + 1;	-- �������� ��Ʈ ȸ�� ����
ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2		= index; index = index + 1;	-- �������� ��Ʈ ȸ�� ����
ATTACKATTRIB_FRYPAN_BAT_SWORD_CRITICAL		= index; index = index + 1;	-- �������� ��Ʈ �Ϲ� ���� ũ��Ƽ�� ����
ATTACKATTRIB_FRYPAN_BAT_SWORD_JUMP_CRITICAL	= index; index = index + 1;	-- �������� ��Ʈ ���� ���� ũ��Ƽ�� ����
ATTACKATTRIB_FRYPAN_BAT_SWORD_JUMP			= index; index = index + 1;	-- �������� ��Ʈ ���� ����
ATTACKATTRIB_SMG2_WATERGUN				= index; index = index + 1;	-- ���Ͱ� ���� 

-- ��ų� --
ATTACKATTRIB_DEATH_SCYTHE_CRITICAL = index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_ATTACK_1 = index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_ATTACK_2 = index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_COUNTER_CRITICAL	= index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_COUNTER_ATTACK	= index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_JUMP_ATTACK       = index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_SP_RIGHT_ATTACK   = index; index = index + 1;
ATTACKATTRIB_DEATH_SCYTHE_ATTACK_3          = index; index = index + 1;
------------

-- ���̾� ���� --
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

-- ���콺 ������ ��ũ2 --
ATTACKATTRIB_GAUSS_RIFLE_MK2_LEFT_ATTACK	= index; index = index + 1;	
ATTACKATTRIB_GAUSS_RIFLE_MK2_RIGHT_ATTACK   = index; index = index + 1;
-----------------

-- ���� ��ó --
ATTACKATTRIB_ROCKET_LAUNCHER_LEFT_ATTACK	= index; index = index + 1;
ATTACKATTRIB_ROCKET_LAUNCHER_RIGHT_ATTACK   = index; index = index + 1;

-- ����Ʈ�� ���� MK2 --
ATTACKATTRIB_LIGHT_BOMBER_MK2				= index; index = index + 1;

-- ����ť �� MK2 --
ATTACKATTRIB_RESCUEGUN_MK2_LEFT_ATTACK		= index; index = index + 1;
ATTACKATTRIB_RESCUEGUN_MK2_RIGHT_ATTACK		= index; index = index + 1;

-- ����� ��Ŭ
ATTACKATTRIB_DEMONIC_KNUCKLE_LEFT_ATTACK	= index; index = index + 1;
ATTACKATTRIB_DEMONIC_KNUCKLE_LEFT_ATTACK2	= index; index = index + 1;
ATTACKATTRIB_DEMONIC_KNUCKLE_JUMP_ATTACK	= index; index = index + 1;
ATTACKATTRIB_DEMONIC_KNUCKLE_RIGHT_ATTACK	= index; index = index + 1;

-- ����Ʈ ���� MK2
ATTACKATTRIB_BUSTSHOTGUN_MK2_ATTACK			= index; index = index + 1;

-- ü�� ����Ʈ �� MK2
ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2			= index; index = index + 1;

-- ���Ʈ ������ ����ũ
ATTACKATTRIB_ASSULT_RIFLE_UNIQUE			= index; index = index + 1;

-- ������ ���ö���
ATTACKATTRIB_ENERGY_SUPPLY_INSTALL			= index; index = index + 1;

-- ����� ����
ATTACKATTRIB_VIRTUAL_SHIELD_COUNTER_CRITICAL= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_COUNTER_ATTACK	= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_CRITICAL		= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK1			= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK2			= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK3			= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_ATTACK4			= index; index = index + 1;
ATTACKATTRIB_VIRTUAL_SHIELD_JUMPDASH		= index; index = index + 1;

-- �����ٴ�
ATTACKATTRIB_RAIL_MARTINSTICK				= index; index = index + 1;
ATTACKATTRIB_RAIL_MARTINSTICK_2				= index; index = index + 1;

-- ���ε� ���� ����ũ
ATTACKATTRIB_MINDSTORM_UNIQUE_ATTACK1		= index; index = index + 1;	
ATTACKATTRIB_MINDSTORM_UNIQUE_ATTACK2		= index; index = index + 1;

-- ����ũ ������ ����ũ
ATTACKATTRIB_SPARK_RIFLE_UNIQUE				= index; index = index + 1;		
-- ����� ����ũ		
ATTACKATTRIB_AIRGUN_UNIQUE					= index; index = index + 1;				

--�۸�ġ ���� �ñ׸� ���̵�
--WEAPONTYPE_SIGMA_BLADE
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL		= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK		= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_CRITICAL				= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1				= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK2				= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK3				= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK4				= index; index = index + 1;
ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_JUMPDASH				= index; index = index + 1;

-- �۸�ġ �ı� �����̴��
ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK1			= index; index = index + 1;
ATTACKATTRIB_GLITCHDESTROYED_SPYDAGGER_ATTACK2			= index; index = index + 1;

-- ������ ��ų
ATTACKATTRIB_ESPERSKILL_ESPERBEAM			= index; index = index + 1;	
ATTACKATTRIB_ESPERSKILL_ESPER_BOMB			= index; index = index + 1;

-- ����Ż ��ũ
ATTACKATTRIB_VITAL_SHOCK					= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_CRITICAL			= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_LEFT_WEAK_ATTACK	= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_DASH				= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_STRONG1			= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_STRONG			= index; index = index + 1;
ATTACKATTRIB_VITAL_SHOCK_PULL				= index; index = index + 1;

ATTACKATTRIB_TOTAL							= index; index = index + 1;

-------------- ATTACK ATTRIB GUN TRACER TYPE ��� ���� ----------------
index = 0;
GUNTRACER_TYPE_BEZIER			= index; index = index + 1;
GUNTRACER_TYPE_LINK				= index; index = index + 1;
GUNTRACER_TYPE_TOTAL				= index; index = index + 1;

-------------- SetAnimParam �Լ��� ���̴� ��� ���� ----------------
LOOP_FALSE			= false;
LOOP_TRUE			= true;
RESET_FALSE			= false;
RESET_TRUE			= true;

------- ��ü ���¿� ���� �ִϸ��̼� ---------
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

------- ĳ���� ���¿� ���� �ִϸ��̼� ---------
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


-------------- INPUT ��� ���� ----------------
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



-------------- USEWEAPON ��� ���� ----------------
index							= 0;
Weapon1State					= index; index = index + 1;		-- ���� ������ ������
Weapon2State					= index; index = index + 1;		-- ������ ������ ������ 
Weapon2TempState				= index; index = index + 1;		-- ������. 
Weapon1WeakState				= index; index = index + 1;		-- ���� Ŭ�� �����ð� ���� 
Weapon1StrongState				= index; index = index + 1;		-- ���� Ŭ�� �����ð� �̻� : �̵� �� ���� 
Weapon1JumpState				= index; index = index + 1;		-- ���� �� ���� Ŭ�� 
Weapon1Strong1State				= index; index = index + 1;		-- ���� Ŭ�� �����ð� �̻� : �̵� X ���� 
Weapon1Attack2State				= index; index = index + 1;		-- ���� ���� 2Ÿ° 
Weapon1Attack3State				= index; index = index + 1;		-- ���� ���� 3Ÿ° 
Weapon1Attack4State				= index; index = index + 1;		-- ���� ���� 4Ÿ° 
Weapon1Attack5State				= index; index = index + 1;		-- ���� ���� 5Ÿ° 
Weapon1CounterAttackState		= index; index = index + 1;		-- ī���� ������ ������ 
Weapon2WeakState				= index; index = index + 1;		-- ������ ��ư �����ð� ���� 
Weapon2StrongState				= index; index = index + 1;		-- ������ ��ư �����ð� �̻� 
Weapon1InstallState				= index; index = index + 1;		-- ������ ��ư �����ð� �̻� ��ġ����
Weapon2InstallState				= index; index = index + 1;		-- ������ ��ư �����ð� �̻� ��ġ����





-------------- WEAPON ANIMATION ��� ���� ----------------
index							= 0;
ANIM_Weapon1State				= index; index = index + 1;		-- ���� ������ ������
ANIM_Weapon2State				= index; index = index + 1;		-- ������ ������ ������ 
ANIM_Weapon2TempState			= index; index = index + 1;		-- ������. 
ANIM_Weapon1WeakState			= index; index = index + 1;		-- ���� Ŭ�� �����ð� ���� 
ANIM_Weapon1StrongState			= index; index = index + 1;		-- ���� Ŭ�� �����ð� �̻� : �̵� �� ���� 
ANIM_Weapon1JumpState			= index; index = index + 1;		-- ���� �� ���� Ŭ�� 
ANIM_Weapon1Strong1State		= index; index = index + 1;		-- ���� Ŭ�� �����ð� �̻� : �̵� X ���� 
ANIM_Weapon1Attack2State		= index; index = index + 1;		-- ���� ���� 2Ÿ° 
ANIM_Weapon1Attack3State		= index; index = index + 1;		-- ���� ���� 3Ÿ° 
ANIM_Weapon1Attack4State		= index; index = index + 1;		-- ���� ���� 4Ÿ° 
ANIM_Weapon1Attack5State		= index; index = index + 1;		-- ���� ���� 5Ÿ° 
ANIM_Weapon1CounterAttackState	= index; index = index + 1;		-- ī���� ������ ������ 
ANIM_Weapon2WeakState			= index; index = index + 1;		-- ������ ��ư �����ð� ���� 
ANIM_Weapon2StrongState			= index; index = index + 1;		-- ������ ��ư �����ð� �̻� 
ANIM_Weapon1InstallState			= index; index = index + 1;		-- ��ġ���ʰ��� ����
ANIM_Weapon2InstallState			= index; index = index + 1;		-- ��ġ�����ʰ��� ����
ANIM_NormalState				= index; index = index + 1;		-- �Ϲ� ����
ANIM_DamageState				= index; index = index + 1;		-- ������ ����
ANIM_RunState					= index; index = index + 1;		-- �Ϲ� �ȱ� ���� -- �뽬�� ���� ����.
ANIM_ReloadState				= index; index = index + 1;		-- ������ ����
ANIM_NormalInstallState			= index; index = index + 1;		-- ��ġ�Ϲ� ����
ANIM_ReloadInstallState			= index; index = index + 1;		-- ��ġ������ ����
WEAPON_ANIM_STATE_END			= index; index = index + 1;		-- ��


-------------- ESPERACTION ANIMATION ��� ���� ----------------
index							= 0;
ANIM_ESPERACTION_ESPERBEAM		= index; index = index + 1;		-- ���ϰ�
ANIM_ESPERACTION_ESPERCOAT		= index; index = index + 1;		-- ������ ��Ʈ
ANIM_ESPERACTION_ESPERBOMB		= index; index = index + 1;		-- ������ ��
ANIM_ESPERACTION_KNEESLIDE		= index; index = index + 1;		-- �� �����̵�
