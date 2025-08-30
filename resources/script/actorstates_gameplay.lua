require "Resources/Script/ActorStates_Constants.lua"
require "Resources/Script/ActorStates_NormalStates.lua"
require "Resources/Script/ActorStates_RunStates.lua"
require "Resources/Script/ActorStates_DamageStates.lua"
require "Resources/Script/ActorStates_ReloadStates.lua"
require "Resources/Script/ActorStates_BatSword.lua"
require "Resources/Script/ActorStates_Card.lua"
require "Resources/Script/ActorStates_CounterSword.lua"
require "Resources/Script/ActorStates_EtcWeapon.lua"
require "Resources/Script/ActorStates_KatanaSword.lua"
require "Resources/Script/ActorStates_PlasmaSword.lua"
require "Resources/Script/ActorStates_SpyDagger.lua"
require "Resources/Script/ActorStates_DoubleSword.lua"
require "Resources/Script/ActorStates_BreakerSword.lua"
require "Resources/Script/ActorStates_SigmaBlade.lua"
require "Resources/Script/ActorStates_Katana_A_Sword.lua"
require "Resources/Script/ActorStates_DualGun.lua"
require "Resources/Script/ActorStates_Death_Scythe.lua"
require "Resources/Script/ActorStates_VirtualShield.lua"

-- ���̾� ����
require "Resources/Script/ActorStates_IRONBOOTS.lua"

-- ����� ��Ŭ
require "Resources/Script/_Weapon_DemonicKnuckle_Ani.lua" 

-- ������ ���ö���
--require "Resources/Script/_Weapon_EnergySupply_Ani.lua" 

-- ��ũ īŸ��
require "Resources/Script/_Weapon_Katana_3_Ani.lua" 

-- ������ �ý���
require "Resources/Script/_Esper_Action_Ani.lua"

-- ����Ż ��ũ ������ũ
require "Resources/Script/ActorStates_VitalShock.lua"
----------------------------------------------------------------------------------------------------
-- �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
ANIMATIONFUNCTABLE = {};
WEAPON1STATE_ANIMTABLE = {};
WEAPON2STATE_ANIMTABLE = {};
WEAPON1WEAK_ANIMTABLE = {};
WEAPON1STRONG_ANIMTABLE = {};
WEAPON1JUMP_ANIMTABLE = {};
WEAPON1STRONG1_ANIMTABLE = {};
WEAPON1ATTACK2_ANIMTABLE = {};
WEAPON1ATTACK3_ANIMTABLE = {};
WEAPON1ATTACK4_ANIMTABLE = {};
WEAPON1ATTACK5_ANIMTABLE = {};
WEAPON1COUNTERATTACK_ANIMTABLE = {};
WEAPON2WEAK_ANIMTABLE = {};
WEAPON2STRONG_ANIMTABLE = {};
NORMALANIMTABLE = {};
RUNANIMTABLE = {};
DAMAGEANIMTABLE = {};
RELOADANIMTABLE = {};
NORMALINSTALLANIMTABLE = {};
WEAPON1INSTALLSTATE_ANIMTABLE = {};
WEAPON2INSTALLSTATE_ANIMTABLE = {};
RELOADINSTALLANIMTABLE = {};
ESPERACTIONANIMTABLE = {}; -- ������ �׼� �ִϸ��̼� ���̺�

----------------------------------------------------------------------------------------------------
-- �븻 �ִϸ��̼�
----------------------------------------------------------------------------------------------------
NORMALANIMTABLE[ "NormalState_PlasmaSword" ]		= NormalState_PlasmaSword;
NORMALANIMTABLE[ "NormalState_SubMachineGun" ]		= NormalState_SubMachineGun;
NORMALANIMTABLE[ "NormalState_MachineGun" ]			= NormalState_MachineGun;
NORMALANIMTABLE[ "NormalState_Rifle" ]				= NormalState_Rifle;
NORMALANIMTABLE[ "NormalState_SentryGunBuilder" ]	= NormalState_SentryGunBuilder;
NORMALANIMTABLE[ "NormalState_MineLauncher" ]		= NormalState_MineLauncher;
NORMALANIMTABLE[ "NormalState_MindEnergy" ]			= NormalState_MindEnergy;
NORMALANIMTABLE[ "NormalState_CounterSword" ]		= NormalState_CounterSword;
NORMALANIMTABLE[ "NormalState_Revolver" ]			= NormalState_Revolver;
NORMALANIMTABLE[ "NormalState_SMG2" ]				= NormalState_SMG2;
NORMALANIMTABLE[ "NormalState_Cannonade" ]			= NormalState_Cannonade;
NORMALANIMTABLE[ "NormalState_MinStorm" ]			= NormalState_MinStorm;
NORMALANIMTABLE[ "NormalState_SentiwallBuilder" ]	= NormalState_SentiwallBuilder;
NORMALANIMTABLE[ "NormalState_BatSword" ]			= NormalState_BatSword;
NORMALANIMTABLE[ "NormalState_KatanaSword" ]		= NormalState_KatanaSword;
NORMALANIMTABLE[ "NormalState_Card" ]				= NormalState_Card;
NORMALANIMTABLE[ "NormalState_MG2" ]				= NormalState_MG2;
NORMALANIMTABLE[ "NormalState_SentinelBuilder" ]	= NormalState_SentinelBuilder;
NORMALANIMTABLE[ "NormalState_AssassinClaw" ]		= NormalState_AssassinClaw;
NORMALANIMTABLE[ "NormalState_SMG3" ]				= NormalState_SMG3;
NORMALANIMTABLE[ "NormalState_Revolver2" ]			= NormalState_Revolver2;
NORMALANIMTABLE[ "NormalState_SMG4" ]				= NormalState_SMG4;
NORMALANIMTABLE[ "NormalState_SpyDagger" ]			= NormalState_SpyDagger;
NORMALANIMTABLE[ "NormalState_MindOrora" ]			= NormalState_MindOrora;
NORMALANIMTABLE[ "NormalState_DoubleSword" ]		= NormalState_DoubleSword;
NORMALANIMTABLE[ "NormalState_AIRGUN" ]				= NormalState_AIRGUN;
NORMALANIMTABLE[ "NormalState_HOMING_RIFLE" ]		= NormalState_HOMING_RIFLE;
NORMALANIMTABLE[ "NormalState_EARTH_BOMBER" ]		= NormalState_EARTH_BOMBER;
NORMALANIMTABLE[ "NormalState_SPARK_RIFLE" ]		= NormalState_SPARK_RIFLE;
NORMALANIMTABLE[ "NormalState_SHOCK_WAVE_GUN" ]		= NormalState_SHOCK_WAVE_GUN;
NORMALANIMTABLE[ "NormalState_Breaker" ]			= NormalState_Breaker;
NORMALANIMTABLE[ "NormalState_TURRET" ]				= NormalState_TURRET;
NORMALANIMTABLE[ "NormalState_TURRETINSTALL" ]		= NormalState_TURRETINSTALL;
NORMALANIMTABLE[ "NormalState_ASSULT_RIFLE" ]		= NormalState_ASSULT_RIFLE;
NORMALANIMTABLE[ "NormalState_RESCUE_GUN" ]			= NormalState_RESCUE_GUN;
NORMALANIMTABLE[ "NormalState_SigmaBlade" ]			= NormalState_SigmaBlade;
NORMALANIMTABLE[ "NormalState_Katana_A_Sword" ]		= NormalState_Katana_A_Sword;
NORMALANIMTABLE[ "NormalState_StandardRailGun" ]	= NormalState_StandardRailGun;
NORMALANIMTABLE[ "NormalState_DualGun" ]			= NormalState_DualGun;
NORMALANIMTABLE[ "NormalState_DeathScythe" ]        = NormalState_DeathScythe;
-- ���̾����
NORMALANIMTABLE[ "NormalState_IRONBOOTS" ]          = NormalState_IRONBOOTS;

-- ���� ��ó
NORMALANIMTABLE[ "NormalState_RocketLauncher" ]     = NormalState_RocketLauncher;

-- ����� ��Ŭ
NORMALANIMTABLE[ "NormalState_DemonicKnuckle" ]		= NormalState_DemonicKnuckle;

-- ������ ���ö���
NORMALANIMTABLE[ "NormalState_EnergySupplyBuilder" ]= NormalState_EnergySupplyBuilder;

-- ���Ʈ������ ����ũ
NORMALANIMTABLE[ "NormalState_ASSULT_RIFLE_UNIQUE" ]= NormalState_ASSULT_RIFLE_UNIQUE;

-- ���߾� �ǵ�
NORMALANIMTABLE[ "NormalState_VirtualShield" ]		= NormalState_VirtualShield;

--  ��ƾ��ƽ
NORMALANIMTABLE[ "NormalState_MartinStick" ]		= NormalState_MartinStick;

-- �۸��� Ʈ�����̵�
NORMALANIMTABLE[ "NormalState_DoubleSword_Glitch" ]		= NormalState_DoubleSword_Glitch;

-- ���ε� ��ũ ����ũ
NORMALANIMTABLE[ "NormalState_MinStorm_Unique" ]		= NormalState_MinStorm_Unique;

-- �۸�ġ ���� �ñ׸� ���̵�
NORMALANIMTABLE[ "NormalState_GlitchJoy_SigmaBlade" ]			= NormalState_GlitchJoy_SigmaBlade;

-- ����Ż ��ũ ������ũ
NORMALANIMTABLE[ "NormalState_VitalShock" ]		= NormalState_VitalShock;

NORMALINSTALLANIMTABLE = NORMALANIMTABLE


----------------------------------------------------------------------------------------------------
-- �� �ִϸ��̼�
----------------------------------------------------------------------------------------------------
RUNANIMTABLE[ "RunState_PlasmaSword" ]		= RunState_PlasmaSword;
RUNANIMTABLE[ "RunState_SubMachineGun" ]	= RunState_SubMachineGun;
RUNANIMTABLE[ "RunState_MachineGun" ]		= RunState_MachineGun;
RUNANIMTABLE[ "RunState_Rifle" ]			= RunState_Rifle;
RUNANIMTABLE[ "RunState_SentryGunBuilder" ] = RunState_SentryGunBuilder;
RUNANIMTABLE[ "RunState_MineLauncher" ]		= RunState_MineLauncher;
RUNANIMTABLE[ "RunState_MindEnergy" ]		= RunState_MindEnergy;
RUNANIMTABLE[ "RunState_CounterSword" ]		= RunState_CounterSword;
RUNANIMTABLE[ "RunState_VirtualShield" ]	= RunState_VirtualShield;
RUNANIMTABLE[ "RunState_Revolver" ]			= RunState_Revolver;
RUNANIMTABLE[ "RunState_SMG2" ]				= RunState_SMG2;
RUNANIMTABLE[ "RunState_Cannonade" ]		= RunState_Cannonade;
RUNANIMTABLE[ "RunState_MinStorm" ]			= RunState_MinStorm;
RUNANIMTABLE[ "RunState_SentiwallBuilder" ] = RunState_SentiwallBuilder;
RUNANIMTABLE[ "RunState_BatSword" ]			= RunState_BatSword;
RUNANIMTABLE[ "RunState_KatanaSword" ]		= RunState_KatanaSword;
RUNANIMTABLE[ "RunState_Card" ]				= RunState_Card;
RUNANIMTABLE[ "RunState_MG2" ]				= RunState_MG2;
RUNANIMTABLE[ "RunState_SentinelBuilder" ]	= RunState_SentinelBuilder;
RUNANIMTABLE[ "RunState_AssassinClaw" ]		= RunState_AssassinClaw;
RUNANIMTABLE[ "RunState_SMG3" ]				= RunState_SMG3;
RUNANIMTABLE[ "RunState_Revolver2" ]		= RunState_Revolver2;
RUNANIMTABLE[ "RunState_SMG4" ]				= RunState_SMG4;
RUNANIMTABLE[ "RunState_SpyDagger" ]		= RunState_SpyDagger;
RUNANIMTABLE[ "RunState_MindOrora" ]		= RunState_MindOrora;
RUNANIMTABLE[ "RunState_DoubleSword" ]		= RunState_DoubleSword;
RUNANIMTABLE[ "RunState_AIRGUN" ]			= RunState_AIRGUN;
RUNANIMTABLE[ "RunState_HOMING_RIFLE" ]		= RunState_HOMING_RIFLE;
RUNANIMTABLE[ "RunState_EARTH_BOMBER" ]		= RunState_EARTH_BOMBER;
RUNANIMTABLE[ "RunState_SPARK_RIFLE" ]		= RunState_SPARK_RIFLE;
RUNANIMTABLE[ "RunState_SHOCK_WAVE_GUN" ]	= RunState_SHOCK_WAVE_GUN;
RUNANIMTABLE[ "RunState_UMBRELLA_GUN" ]     = RunState_UMBRELLA_GUN;
RUNANIMTABLE[ "RunState_Breaker" ]			= RunState_Breaker;
RUNANIMTABLE[ "RunState_TURRET" ]			= RunState_TURRET;
RUNANIMTABLE[ "RunState_ASSULT_RIFLE" ]		= RunState_ASSULT_RIFLE;
RUNANIMTABLE[ "RunState_RESCUE_GUN" ]		= RunState_RESCUE_GUN;
RUNANIMTABLE[ "RunState_SigmaBlade" ]		= RunState_SigmaBlade;
RUNANIMTABLE[ "RunState_Katana_A_Sword" ]	= RunState_Katana_A_Sword;
RUNANIMTABLE[ "RunState_StandardRailGun" ]	= RunState_StandardRailGun;
RUNANIMTABLE[ "RunState_DualGun" ]			= RunState_DualGun;
RUNANIMTABLE[ "RunState_DEATH_SCYTHE" ]     = RunState_DEATH_SCYTHE;
-- ���̾� ����
RUNANIMTABLE[ "RunState_IRONBOOTS" ]        = RunState_IRONBOOTS;

-- ���� ��ó
RUNANIMTABLE[ "RunState_RocketLauncher" ]  = RunState_RocketLauncher;

-- ����� ��Ŭ
RUNANIMTABLE[ "RunState_DemonicKnuckle" ]  = RunState_DemonicKnuckle;

-- ������ ���ö���
--RUNANIMTABLE[ "RunState_EnergySupplyBuilder" ]  = RunState_EnergySupplyBuilder;

-- ���Ʈ ������ ����ũ
RUNANIMTABLE[ "RunState_ASSULT_RIFLE_UNIQUE" ] 	= RunState_ASSULT_RIFLE_UNIQUE;

-- ���ϰ� ����ũ ��ƾ��ƽ
RUNANIMTABLE[ "RunState_RAIL_MARTINSTICK" ] 	= RunState_RAIL_MARTINSTICK;

-- ���ε� ��ũ ����ũ
RUNANIMTABLE[ "RunState_MinStorm_Unique" ]		= RunState_MinStorm_Unique;

-- �۸�ġ ���� �ñ׸� ���̵�
RUNANIMTABLE[ "RunState_GlitchJoy_SigmaBlade" ]			= RunState_GlitchJoy_SigmaBlade;

-- ����Ż ��ũ ������ũ
RUNANIMTABLE[ "RunState_VitalShock" ]		= RunState_VitalShock;
----------------------------------------------------------------------------------------------------
-- ������ �ִϸ��̼�
----------------------------------------------------------------------------------------------------
DAMAGEANIMTABLE[ "DamageState_PlasmaSword" ]			= DamageState_PlasmaSword;
DAMAGEANIMTABLE[ "DamageState_SubMachineGun" ]			= DamageState_SubMachineGun;
DAMAGEANIMTABLE[ "DamageState_MachineGun" ]				= DamageState_MachineGun;
DAMAGEANIMTABLE[ "DamageState_Rifle" ]					= DamageState_Rifle;
DAMAGEANIMTABLE[ "DamageState_SentryGunBuilder" ]		= DamageState_SentryGunBuilder;
DAMAGEANIMTABLE[ "DamageState_MineLauncher" ]			= DamageState_MineLauncher;
DAMAGEANIMTABLE[ "DamageState_MindEnergy" ]				= DamageState_MindEnergy;
DAMAGEANIMTABLE[ "DamageState_CounterSword" ]			= DamageState_CounterSword;
DAMAGEANIMTABLE[ "DamageState_Revolver" ]				= DamageState_Revolver;
DAMAGEANIMTABLE[ "DamageState_SMG2" ]					= DamageState_SMG2;
DAMAGEANIMTABLE[ "DamageState_Cannonade" ]				= DamageState_Cannonade;
DAMAGEANIMTABLE[ "DamageState_MinStorm" ]				= DamageState_MinStorm;
DAMAGEANIMTABLE[ "DamageState_SentiwallBuilder" ]		= DamageState_SentiwallBuilder;
DAMAGEANIMTABLE[ "DamageState_BatSword" ]				= DamageState_BatSword;
DAMAGEANIMTABLE[ "DamageState_KatanaSword" ]			= DamageState_KatanaSword;
DAMAGEANIMTABLE[ "DamageState_Card" ]					= DamageState_Card;
DAMAGEANIMTABLE[ "DamageState_MG2" ]					= DamageState_MG2;
DAMAGEANIMTABLE[ "DamageState_SentinelBuilder" ]		= DamageState_SentinelBuilder;
DAMAGEANIMTABLE[ "DamageState_AssassinClaw" ]			= DamageState_AssassinClaw;
DAMAGEANIMTABLE[ "DamageState_SMG3" ]					= DamageState_SMG3;
DAMAGEANIMTABLE[ "DamageState_Revolver2" ]				= DamageState_Revolver2;
DAMAGEANIMTABLE[ "DamageState_SMG4" ]					= DamageState_SMG4;
DAMAGEANIMTABLE[ "DamageState_SpyDagger" ]				= DamageState_SpyDagger;
DAMAGEANIMTABLE[ "DamageState_MindOrora" ]				= DamageState_MindOrora;
DAMAGEANIMTABLE[ "DamageState_DoubleSword" ]			= DamageState_DoubleSword;
DAMAGEANIMTABLE[ "DamageState_AIRGUN" ]					= DamageState_AIRGUN;
DAMAGEANIMTABLE[ "DamageState_HOMING_RIFLE" ]			= DamageState_HOMING_RIFLE;
DAMAGEANIMTABLE[ "DamageState_EARTH_BOMBER" ]			= DamageState_EARTH_BOMBER;
DAMAGEANIMTABLE[ "DamageState_SPARK_RIFLE" ]			= DamageState_SPARK_RIFLE;
DAMAGEANIMTABLE[ "DamageState_SHOCK_WAVE_GUN" ]			= DamageState_SHOCK_WAVE_GUN;
DAMAGEANIMTABLE[ "DamageState_Breaker" ]				= DamageState_Breaker;
DAMAGEANIMTABLE[ "DamageState_TURRET" ]					= DamageState_TURRET;
DAMAGEANIMTABLE[ "DamageState_ASSULT_RIFLE" ]			= DamageState_ASSULT_RIFLE;
DAMAGEANIMTABLE[ "DamageState_RESCUE_GUN" ]				= DamageState_RESCUE_GUN;
DAMAGEANIMTABLE[ "DamageState_SigmaBlade" ]				= DamageState_SigmaBlade;
DAMAGEANIMTABLE[ "DamageState_Katana_A_Sword" ]			= DamageState_Katana_A_Sword;
DAMAGEANIMTABLE[ "DamageState_StandardRailGun" ]		= DamageState_StandardRailGun;
DAMAGEANIMTABLE[ "DamageState_DualGun" ]				= DamageState_DualGun;
DAMAGEANIMTABLE[ "Damage_DEATH_SCYTHE" ]                = DamageState_DEATH_SCYTHE;
-- ���̾� ����
DAMAGEANIMTABLE[ "DamageState_IRONBOOTS" ]              = DamageState_IRONBOOTS;

-- ���� ��ó
DAMAGEANIMTABLE[ "DamageState_RocketLauncher" ]  		= DamageState_RocketLauncher;

-- ����� ��Ŭ
DAMAGEANIMTABLE[ "DamageState_DemonicKnuckle" ]  		= DamageState_DemonicKnuckle;

-- ������ ���ö���
--DAMAGEANIMTABLE[ "DamageState_EnergySupplyBuilder" ]  	= DamageState_EnergySupplyBuilder;

-- ���߾� �ǵ�
DAMAGEANIMTABLE[ "DamageState_VirtualShield" ]			= DamageState_VirtualShield;

-- ���ε� ��ũ ����ũ
DAMAGEANIMTABLE[ "DamageState_MinStorm_Unique" ]		= DamageState_MinStorm_Unique;

-- �۸�ġ ���� �ñ׸� ���̵�
DAMAGEANIMTABLE[ "DamageState_GlitchJoy_SigmaBlade" ]		= DamageState_GlitchJoy_SigmaBlade;

-- ����Ż ��ũ
DAMAGEANIMTABLE[ "DamageState_VitalShock" ]			= DamageState_VitalShock;
----------------------------------------------------------------------------------------------------
-- ���ε� �ִϸ��̼�
----------------------------------------------------------------------------------------------------
RELOADANIMTABLE[ "ReloadState_MindEnergy" ]		= ReloadState_MindEnergy;
RELOADANIMTABLE[ "ReloadState_SubMachineGun" ]	= ReloadState_SubMachineGun;
RELOADANIMTABLE[ "ReloadState_MachineGun" ]		= ReloadState_MachineGun;
RELOADANIMTABLE[ "ReloadState_Rifle" ]			= ReloadState_Rifle;
RELOADANIMTABLE[ "ReloadState_MineLauncher" ]	= ReloadState_MineLauncher;
RELOADANIMTABLE[ "ReloadState_Revolver" ]		= ReloadState_Revolver;
RELOADANIMTABLE[ "ReloadState_SMG2" ]			= ReloadState_SMG2;
RELOADANIMTABLE[ "ReloadState_Cannonade" ]		= ReloadState_Cannonade;
RELOADANIMTABLE[ "ReloadState_MinStorm" ]		= ReloadState_MinStorm;
RELOADANIMTABLE[ "ReloadState_Card" ]			= ReloadState_Card;
RELOADANIMTABLE[ "ReloadState_MG2" ]			= ReloadState_MG2;
RELOADANIMTABLE[ "ReloadState_SMG3" ]			= ReloadState_SMG3;
RELOADANIMTABLE[ "ReloadState_Revolver2" ]		= ReloadState_Revolver2;
RELOADANIMTABLE[ "ReloadState_SMG4" ]			= ReloadState_SMG4;
RELOADANIMTABLE[ "ReloadState_MindOrora" ]		= ReloadState_MindOrora;
RELOADANIMTABLE[ "ReloadState_AIRGUN" ]			= ReloadState_AIRGUN;
RELOADANIMTABLE[ "ReloadState_HOMING_RIFLE" ]	= ReloadState_HOMING_RIFLE;
RELOADANIMTABLE[ "ReloadState_EARTH_BOMBER" ]	= ReloadState_EARTH_BOMBER;
RELOADANIMTABLE[ "ReloadState_SPARK_RIFLE" ]	= ReloadState_SPARK_RIFLE;
RELOADANIMTABLE[ "ReloadState_SHOCK_WAVE_GUN" ]	= ReloadState_SHOCK_WAVE_GUN;
RELOADANIMTABLE[ "ReloadState_TURRET" ]		    = ReloadState_TURRET;
RELOADANIMTABLE[ "ReloadState_TURRETINSTALL" ]	= ReloadState_TURRETINSTALL;
RELOADANIMTABLE[ "ReloadState_ASSULT_RIFLE" ]	= ReloadState_ASSULT_RIFLE;
RELOADANIMTABLE[ "ReloadState_RESCUE_GUN" ]		= ReloadState_RESCUE_GUN;
RELOADANIMTABLE[ "ReloadState_RESCUE_GUN_02" ]	= ReloadState_RESCUE_GUN_02;
RELOADANIMTABLE[ "ReloadState_StandardRailGun" ]= ReloadState_StandardRailGun;
RELOADANIMTABLE[ "ReloadState_DualGun" ]		= ReloadState_DualGun;

-- ���� ��ó
RELOADANIMTABLE[ "ReloadState_RocketLauncher" ] = ReloadState_RocketLauncher;

-- �׷����̵� ����ũ
RELOADANIMTABLE[ "ReloadState_Grenade_Unique" ]	= ReloadState_Grenade_Unique;

-- ���Ʈ ������ ����ũ
RELOADANIMTABLE[ "ReloadState_ASSULT_RIFLE_UNIQUE" ]	= ReloadState_ASSULT_RIFLE_UNIQUE;

-- ���ϰ� ����ũ ��ƾ��ƽ
RELOADANIMTABLE[ "ReloadState_Unipue_MARTINSTICK" ]	= ReloadState_Unipue_MARTINSTICK;

-- ���ε� ��ũ ����ũ
RELOADANIMTABLE[ "ReloadState_MinStorm_Unique" ]		= ReloadState_MinStorm_Unique;

RELOADINSTALLANIMTABLE = RELOADANIMTABLE


----------------------------------------------------------------------------------------------------
-- UseWeapon1 �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_AimedShotAttack" ]		= UseWeapon1State_AimedShotAttack;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SubMachineGunAttack" ]	= UseWeapon1State_SubMachineGunAttack;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_MachineGunAttack" ]	= UseWeapon1State_MachineGunAttack;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_MindEnergy1" ]			= UseWeapon1State_MindEnergy1;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_MineLauncher" ]		= UseWeapon1State_MineLauncher;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SentryGunBuilder" ]	= UseWeapon1State_SentryGunBuilder;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_Revolver" ]			= UseWeapon1State_Revolver;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SMG2" ]				= UseWeapon1State_SMG2;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_Cannonade" ] 			= UseWeapon1State_Cannonade;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_MindStorm" ] 			= UseWeapon1State_MindStorm;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SentiwallBuilder" ] 	= UseWeapon1State_SentiwallBuilder;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SentinelBuilder" ]		= UseWeapon1State_SentinelBuilder;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_AssassinClaw" ]		= UseWeapon1State_AssassinClaw;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_Card" ] 				= UseWeapon1State_Card;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_MG2" ]					= UseWeapon1State_MG2;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SentinelBuilder" ]		= UseWeapon1State_SentinelBuilder;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_Revolver2" ]			= UseWeapon1State_Revolver2;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SMG4" ]				= UseWeapon1State_SMG4;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SMG3Gun" ]				= UseWeapon1State_SMG3Gun;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_MindOrora1" ]			= UseWeapon1State_MindOrora1;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_AIRGUN" ]				= UseWeapon1State_AIRGUN;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_HOMING_RIFLE" ]		= UseWeapon1State_HOMING_RIFLE;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SpyDagger" ]			= UseWeapon1State_SpyDagger;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SpyDagger3" ]			= UseWeapon1State_SpyDagger3;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_EARTH_BOMBER" ]		= UseWeapon1State_EARTH_BOMBER;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SPARK_RIFLE" ]			= UseWeapon1State_SPARK_RIFLE;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SHOCK_WAVE_GUN" ]		= UseWeapon1State_SHOCK_WAVE_GUN;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_TURRET" ]		        = UseWeapon1State_TURRET;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_TURRETINSTALL" ]	    = UseWeapon1State_TURRETINSTALL;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_ASSULT_RIFLE" ]		= UseWeapon1State_ASSULT_RIFLE;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_RESCUE_GUN" ]			= UseWeapon1State_RESCUE_GUN;
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_Magic_Cube" ]          = UseWeapon1State_Magic_Cube;

WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_StandardAimedShotAttack" ]		= UseWeapon1State_StandardAimedShotAttack;

-- !!! ���� ��
WEAPON1STATE_ANIMTABLE[ "Attack_NORMAL_RenewalDualMagnum" ] = Attack_NORMAL_RenewalDualMagnum;

-- ���̾� ����
WEAPON1STATE_ANIMTABLE[ "ANI_IRONBOOTS_Dash_Kick_Attack" ] = ANI_IRONBOOTS_Dash_Kick_Attack;

-- ���콺 ������ MK2
WEAPON1STATE_ANIMTABLE[ "ANI_GaussRifleMK2_Standard" ] = ANI_GaussRifleMK2_Standard;

-- ���� ��ó ����
WEAPON1STATE_ANIMTABLE[ "ANI_UseWeapon1State_RocketLauncher" ]	= ANI_UseWeapon1State_RocketLauncher;

-- �����̴�� ����3 �Ϲ� ����
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SpyDagger_Mach3" ]	= UseWeapon1State_SpyDagger_Mach3;

-- �����̴�� ����3 ( �̺�Ʈ ) �Ϲ� ����
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SpyDagger_Mach3_Event" ]	= UseWeapon1State_SpyDagger_Mach3_Event;

-- ������ ���ö���
--WEAPON1STATE_ANIMTABLE[ "ANI_LeftAttack_EnergySupplyBuilder" ] = ANI_LeftAttack_EnergySupplyBuilder;

-- ���Ʈ ������ ����ũ
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_ASSULT_RIFLE_UNIQUE"] = UseWeapon1State_ASSULT_RIFLE_UNIQUE;

-- ���ϰ� ����ũ ��ƾ��ƽ
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_RAIL_MARTINSTICK" ] = UseWeapon1State_RAIL_MARTINSTICK;

-- ���ε� ��ũ ����ũ
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_MindStorm_Unique" ] = UseWeapon1State_MindStorm_Unique;

-- ����ũ ������ ����ũ
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_SPARK_RIFLE_Unique" ]	= UseWeapon1State_SPARK_RIFLE_Unique;

-- ����� ����ũ
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_AIRGUN_Unique" ]		= UseWeapon1State_AIRGUN_Unique;

-- �۸�ġ �ı� �����̴��
WEAPON1STATE_ANIMTABLE[ "UseWeapon1State_GlitchDestroyed_SpyDagger" ]	= UseWeapon1State_GlitchDestroyed_SpyDagger;

--���̽� ���� �����̴��
WEAPON1STATE_ANIMTABLE[ "UseWeapon1_ice_SpyDagger" ]	= UseWeapon1_ice_SpyDagger;

WEAPON1INSTALLSTATE_ANIMTABLE = WEAPON1STATE_ANIMTABLE;


----------------------------------------------------------------------------------------------------
-- UseWeapon2 �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_PlasmaSword" ] 		= UseWeapon2State_PlasmaSword;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_CounterSwordGuard" ] 	= UseWeapon2State_CounterSwordGuard;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_BatSword" ] 			= UseWeapon2State_BatSword;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_KatanaSword" ] 		= UseWeapon2State_KatanaSword;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_Double" ] 				= UseWeapon2State_Double;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_SpyDagger" ]			= UseWeapon2State_SpyDagger;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_SpyDagger3" ]			= UseWeapon2State_SpyDagger3;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_Breaker" ] 				= UseWeapon2State_Breaker;
WEAPON2STATE_ANIMTABLE[ "Reload2State_TURRET" ]					= Reload2State_TURRET;
WEAPON2STATE_ANIMTABLE[ "Reload2State_TURRETINSTALL" ]				= Reload2State_TURRETINSTALL;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_SigmaBladeWeaponChange" ] 	= UseWeapon2State_SigmaBladeWeaponChange;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2BackDash_Katana_A_Sword" ] 		= UseWeapon2BackDash_Katana_A_Sword;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_CrashStomBat" ] 			= UseWeapon2State_CrashStomBat;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_magmaBladeWeaponChange" ] 	= UseWeapon2State_magmaBladeWeaponChange;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_FrypanBat" ] 			= UseWeapon2State_FrypanBat;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2BackDash_Katana_S3_Sword" ] 		= UseWeapon2BackDash_Katana_S3_Sword;
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_VirtualShieldGuard" ] 	= UseWeapon2State_VirtualShieldGuard;

-- ������ ��� �ű׳�
WEAPON2STATE_ANIMTABLE[ "Attack_ROLLING_RenewalDualMagnum" ] = Attack_ROLLING_RenewalDualMagnum;

-- ��ų� ��Ŭ�� ����
WEAPON2STATE_ANIMTABLE[ "StrongUpperCutAttack_DEATHSCYTHE" ]       = StrongUpperCutAttack_DEATHSCYTHE;

-- ���̾� ����
WEAPON2STATE_ANIMTABLE[ "ANI_IRONBOOTS_Boost_Dash_Attack" ] = ANI_IRONBOOTS_Boost_Dash_Attack;
WEAPON2STATE_ANIMTABLE[ "ANI_IRONBOOTS_Boost_Dash_Attack_Normal" ] = ANI_IRONBOOTS_Boost_Dash_Attack_Normal;

-- ���콺������ ��Ŭ�� ����
WEAPON2STATE_ANIMTABLE[ "ANI_GaussRifleMK2_MultiShot" ]	= ANI_GaussRifleMK2_MultiShot;

-- ���� ��ó ��Ŭ�� ����
WEAPON2STATE_ANIMTABLE[ "ANI_UseWeapon2State_RocketLauncher" ]	= ANI_UseWeapon2State_RocketLauncher;

-- ����ť �� MK2 ��Ŭ�� ����
WEAPON2STATE_ANIMTABLE[ "UseWeapon1State_RESCUE_GUN" ]			= UseWeapon1State_RESCUE_GUN;

-- ����� ��Ŭ ��Ŭ�� ����
WEAPON2STATE_ANIMTABLE[ "ANI_RightAttack_DemonicKnuckle" ]		= ANI_RightAttack_DemonicKnuckle;

-- ��Ż�� ��Ŭ ��Ŭ�� ����
WEAPON2STATE_ANIMTABLE[ "ANI_RightAttack_MetalicKnuckle" ]		= ANI_RightAttack_MetalicKnuckle;

-- ������ ��� ����3 Ư�� ����
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_SpyDagger_Mach3" ]			= UseWeapon2State_SpyDagger_Mach3;

-- ������ ��� ����3 (�̺�Ʈ) Ư�� ����
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_SpyDagger_Mach3_Event" ]	= UseWeapon2State_SpyDagger_Mach3_Event;

-- ��ų� ����ũ ��Ŭ�� ����
WEAPON2STATE_ANIMTABLE[ "StrongUpperCutAttack_DEATHSCYTHE_Unique" ]       = StrongUpperCutAttack_DEATHSCYTHE_Unique;

-- �۸�ġ ���� �ñ׸� ���̵�
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_GlitchJoySigmaBladeWeaponChange" ] 	= UseWeapon2State_GlitchJoySigmaBladeWeaponChange;

-- �۸�ġ �ı� ������ ���
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_GlitchDestroyed_SpyDagger" ]			= UseWeapon2State_GlitchDestroyed_SpyDagger;

-- ����Ż ��ũ ������ũ
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_VitalShock" ] 		= UseWeapon2State_VitalShock;

-- Ĺ ��Ŭ ��Ŭ�� ����
WEAPON2STATE_ANIMTABLE[ "ANI_RightAttack_CatKnuckle" ]		= ANI_RightAttack_CatKnuckle;

-- ���̽� ���� ������ ���
WEAPON2STATE_ANIMTABLE[ "UseWeapon2_ice_SpyDagger" ]			= UseWeapon2_ice_SpyDagger;

-- ���ϰ�
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_AimedShotAttack" ] 	= UseWeapon2State_AimedShotAttack;

-- ���ϰ� ����ũ
WEAPON2STATE_ANIMTABLE[ "UseWeapon2State_RAIL_MARTINSTICK" ] 	= UseWeapon2State_RAIL_MARTINSTICK;

WEAPON2INSTALLSTATE_ANIMTABLE = WEAPON2STATE_ANIMTABLE;

----------------------------------------------------------------------------------------------------
-- UseWeapon1_Weak �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON1WEAK_ANIMTABLE[ "SwordAtkWeakState_PlasmaSword" ] 			= SwordAtkWeakState_PlasmaSword;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_CounterSword" ] 	= SwordAtkAfterDash1State_CounterSword;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkStrongState_BatSword" ] 			= SwordAtkStrongState_BatSword;
WEAPON1WEAK_ANIMTABLE[ "UseWeapon1State_KatanaSword" ] 				= UseWeapon1State_KatanaSword;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_DoubleSword" ] 		= SwordAtkAfterDash1State_DoubleSword;
--WEAPON1WEAK_ANIMTABLE[ "UseWeapon1State_SpyDagger" ] 				= UseWeapon1State_SpyDagger;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_Breaker" ] 			= SwordAtkAfterDash1State_Breaker;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_SigmaBlade" ] 		= SwordAtkAfterDash1State_SigmaBlade;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_Katana_A_Sword" ] 	= SwordAtkAfterDash1State_Katana_A_Sword;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkStrongState_CrashStomBat" ] 			= SwordAtkStrongState_CrashStomBat;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_Katana_JIN_Sword" ] = SwordAtkAfterDash1State_Katana_JIN_Sword;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_magmaBlade" ] 		= SwordAtkAfterDash1State_magmaBlade;
WEAPON1WEAK_ANIMTABLE[ "UseWeapon1State_DualGunAttack" ] 			= UseWeapon1State_DualGunAttack;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_Katana_VIOLA_Sword" ] = SwordAtkAfterDash1State_Katana_VIOLA_Sword;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkStrongState_FrypanBat" ] 			= SwordAtkStrongState_FrypanBat;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_Katana_S3_Sword" ] 	= SwordAtkAfterDash1State_Katana_S3_Sword;
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_VirtualShield" ] 	= SwordAtkAfterDash1State_VirtualShield;

-- ������ ����
WEAPON1WEAK_ANIMTABLE[ "Attack_NORMAL_RenewalDualMagnum" ] = Attack_NORMAL_RenewalDualMagnum;

-- �űԹ��� ��ų�
WEAPON1WEAK_ANIMTABLE[ "FirstBasicAttack_DEATHSCYTHE" ] = FirstBasicAttack_DEATHSCYTHE;

-- ���̾� ����
WEAPON1WEAK_ANIMTABLE[ "ANI_IRONBOOTS_First_Kick_Attack" ] = ANI_IRONBOOTS_First_Kick_Attack;
WEAPON1WEAK_ANIMTABLE[ "ANI_IRONBOOTS_First_Kick_Attack_Normal" ] = ANI_IRONBOOTS_First_Kick_Attack_Normal;

-- ����� ��Ŭ
WEAPON1WEAK_ANIMTABLE[ "ANI_LeftAttack_DemonicKnuckle" ] 	= ANI_LeftAttack_DemonicKnuckle;

-- ��Ż�� ��Ŭ
WEAPON1WEAK_ANIMTABLE[ "ANI_LeftAttack_MetalicKnuckle" ] 	= ANI_LeftAttack_MetalicKnuckle;

-- �űԹ��� ��ų� ����ũ
WEAPON1WEAK_ANIMTABLE[ "FirstBasicAttack_DEATHSCYTHE_Unique" ] = FirstBasicAttack_DEATHSCYTHE_Unique;

-- �۸�ġ ���� �ñ׸� ���̵�
WEAPON1WEAK_ANIMTABLE[ "SwordAtkAfterDash1State_GlitchJoySigmaBlade" ] 		= SwordAtkAfterDash1State_GlitchJoySigmaBlade;

-- ����Ż ��ũ ������ũ
WEAPON1WEAK_ANIMTABLE[ "UseWeapon1WeakState_VitalShock" ]		= UseWeapon1WeakState_VitalShock;

-- Ĺ ��Ŭ
WEAPON1WEAK_ANIMTABLE[ "ANI_LeftAttack_CatKnuckle" ] 	= ANI_LeftAttack_CatKnuckle;

----------------------------------------------------------------------------------------------------
-- UseWeapon1_Strong �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON1STRONG_ANIMTABLE[ "SwordAtkStrongState_PlasmaSword" ]		= SwordAtkStrongState_PlasmaSword;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkCounterAttack_CounterSword" ]		= SwordAtkCounterAttack_CounterSword;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkStrongState_BatSword" ]			= SwordAtkStrongState_BatSword;
--WEAPON1STRONG_ANIMTABLE[ "UseWeapon1State_SpyDagger" ] 			= UseWeapon1State_SpyDagger;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkStrongState_Breaker" ]			= SwordAtkStrongState_Breaker;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkCounterAttack_SigmaBlade" ]		= SwordAtkCounterAttack_SigmaBlade;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkStrongState_Katana_A_Sword" ]		= SwordAtkStrongState_Katana_A_Sword;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkStrongState_CrashStomBat" ]		= SwordAtkStrongState_CrashStomBat;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkStrongState_Katana_JIN_Sword" ]	= SwordAtkStrongState_Katana_JIN_Sword;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkCounterAttack_magmaBlade" ]		= SwordAtkCounterAttack_magmaBlade;
WEAPON1STRONG_ANIMTABLE[ "UseWeapon1State_DualGunAttack" ] 		= UseWeapon1State_DualGunAttack;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkStrongState_Katana_VIOLA_Sword" ]	= SwordAtkStrongState_Katana_VIOLA_Sword;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkStrongState_FrypanBat" ] 			= SwordAtkStrongState_FrypanBat;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkStrongState_Katana_S3_Sword" ]	= SwordAtkStrongState_Katana_S3_Sword;
WEAPON1STRONG_ANIMTABLE[ "SwordAtkCounterAttack_VirtualShield" ]		= SwordAtkCounterAttack_VirtualShield;

-- ������ ����
WEAPON1STRONG_ANIMTABLE[ "Attack_NORMAL_RenewalDualMagnum" ] = Attack_NORMAL_RenewalDualMagnum;

-- ��ų�
WEAPON1STRONG_ANIMTABLE[ "SpecialAttack_DEATHSCYTHE" ]           = SpecialAttack_DEATHSCYTHE;

-- ���̾� ����
WEAPON1STRONG_ANIMTABLE[ "ANI_IRONBOOTS_Upper_Kick_Attack" ]    	= ANI_IRONBOOTS_Upper_Kick_Attack;
WEAPON1STRONG_ANIMTABLE[ "ANI_IRONBOOTS_Upper_Kick_Attack_Normal" ] = ANI_IRONBOOTS_Upper_Kick_Attack_Normal;

-- ��ų� ����ũ
WEAPON1STRONG_ANIMTABLE[ "SpecialAttack_DEATHSCYTHE_Unique" ]           = SpecialAttack_DEATHSCYTHE_Unique;

-- �۸�ġ ���� �ñ׸� ���̵�
WEAPON1STRONG_ANIMTABLE[ "SwordAtkCounterAttack_GlitchJoySigmaBlade" ]		= SwordAtkCounterAttack_GlitchJoySigmaBlade;

-- ����Ż ��ũ ������ũ
WEAPON1STRONG_ANIMTABLE[ "UseWeapon1StrongState_VitalShock" ]		= UseWeapon1StrongState_VitalShock;

----------------------------------------------------------------------------------------------------
-- UseWeapon1_Jump �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_PlasmaSword" ] 		= SwordJumpAtkState_PlasmaSword;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_CounterSword" ] 		= SwordJumpAtkState_CounterSword;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_BatSword" ] 			= SwordJumpAtkState_BatSword;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_KatanaSword" ] 		= SwordJumpAtkState_KatanaSword;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_DoubleSword" ] 		= SwordJumpAtkState_DoubleSword;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_DoubleSword_Unique" ] = SwordJumpAtkState_DoubleSword_Unique;
--WEAPON1JUMP_ANIMTABLE[ "UseWeapon1State_SpyDagger" ] 			= UseWeapon1State_SpyDagger;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_Breaker" ] 			= SwordJumpAtkState_Breaker;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_GateBreaker" ]		= SwordJumpAtkState_GateBreaker;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_SigmaBlade" ]		= SwordJumpAtkState_SigmaBlade;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_Katana_A_Sword" ]		= SwordJumpAtkState_Katana_A_Sword;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_CrashStomBat" ]		= SwordJumpAtkState_CrashStomBat;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_Katana_JIN_Sword" ]	= SwordJumpAtkState_Katana_JIN_Sword;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_magmaBlade" ]		= SwordJumpAtkState_magmaBlade;
WEAPON1JUMP_ANIMTABLE[ "UseWeapon1State_DualGunAttack" ] 		= UseWeapon1State_DualGunAttack;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_Katana_VIOLA_Sword" ]	= SwordJumpAtkState_Katana_VIOLA_Sword;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_FrypanBat" ]			= SwordJumpAtkState_FrypanBat;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_BreakerUnique" ]		= SwordJumpAtkState_BreakerUnique;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_Breaker_project" ]		= SwordJumpAtkState_Breaker_project;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_Katana_S3_Sword" ]		= SwordJumpAtkState_Katana_S3_Sword;
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_VirtualShield" ] 		= SwordJumpAtkState_VirtualShield;

-- ������ ��� �ű׳�
WEAPON1JUMP_ANIMTABLE[ "Attack_JUMP_RenewalDualMagnum" ] = Attack_JUMP_RenewalDualMagnum;

-- ��ų�
WEAPON1JUMP_ANIMTABLE[ "JumpAttack_DEATHSCYTHE" ]               = JumpAttack_DEATHSCYTHE;

-- ���̾����
WEAPON1JUMP_ANIMTABLE[ "ANI_IRONBOOTS_Jump_Smash_Kick_Attack" ]      = ANI_IRONBOOTS_Jump_Smash_Kick_Attack;

-- ����� ��Ŭ
WEAPON1JUMP_ANIMTABLE[ "ANI_LeftJump_DemonicKnuckle" ] = ANI_LeftJump_DemonicKnuckle;

-- ��Ż�� ��Ŭ
WEAPON1JUMP_ANIMTABLE[ "ANI_LeftJump_MetalicKnuckle" ] = ANI_LeftJump_MetalicKnuckle;

-- ��ų� ����ũ
WEAPON1JUMP_ANIMTABLE[ "JumpAttack_DEATHSCYTHE_Unique" ]               = JumpAttack_DEATHSCYTHE_Unique;

-- �۸�ġ Ʈ�����̵�
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_DoubleSword_Glitch" ]               = SwordJumpAtkState_DoubleSword_Glitch;

-- �۸�ġ ���� �ñ׸� ���̵�
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_GlitchJoySigmaBlade" ]		= SwordJumpAtkState_GlitchJoySigmaBlade;

-- ����Ż ��ũ ������ũ
WEAPON1JUMP_ANIMTABLE[ "UseWeapon1JumpState_VitalShock" ] 		= UseWeapon1JumpState_VitalShock;

-- ��ä Ʈ�����̵�
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_DoubleSword_fan" ]               = SwordJumpAtkState_DoubleSword_fan;

-- ������ �ö�� ������ 
WEAPON1JUMP_ANIMTABLE[ "SwordJumpAtkState_PlasmaSword_fish" ] 		=SwordJumpAtkState_PlasmaSword_fish;
----------------------------------------------------------------------------------------------------
-- UseWeapon1_Strong1 �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON1STRONG1_ANIMTABLE[ "SwordAtkStrong1State_PlasmaSword" ]	= SwordAtkStrong1State_PlasmaSword;
WEAPON1STRONG1_ANIMTABLE[ "SwordAtkStrong1State_BatSword" ]		= SwordAtkStrong1State_BatSword;
WEAPON1STRONG1_ANIMTABLE[ "SwordAtkStrong1State_CrashStomBat" ]	= SwordAtkStrong1State_CrashStomBat;
WEAPON1STRONG1_ANIMTABLE[ "SwordAtkStrong1State_FrypanBat" ]	= SwordAtkStrong1State_FrypanBat;
WEAPON1STRONG1_ANIMTABLE[ "UseWeapon1Strong1State_VitalShock" ]		= UseWeapon1Strong1State_VitalShock;

----------------------------------------------------------------------------------------------------
-- UseWeapon1_Attack2 �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_CounterSword" ]		= SwordAtkAfterDash2State_CounterSword;
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_KatanaSword" ]		= SwordAtkAfterDash2State_KatanaSword;
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_Card" ]				= SwordAtkAfterDash2State_Card;
WEAPON1ATTACK2_ANIMTABLE[ "UseWeapon1Attack2State_BatSword" ]			= UseWeapon1Attack2State_BatSword;
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_DoubleSword" ]		= SwordAtkAfterDash2State_DoubleSword;
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_SigmaBlade" ]		= SwordAtkAfterDash2State_SigmaBlade;
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_Katana_A_Sword" ]	= SwordAtkAfterDash2State_Katana_A_Sword;
WEAPON1ATTACK2_ANIMTABLE[ "UseWeapon1Attack2State_CrashStomBat" ]		= UseWeapon1Attack2State_CrashStomBat;
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_Katana_JIN_Sword" ]	= SwordAtkAfterDash2State_Katana_JIN_Sword;
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_magmaBlade" ]		= SwordAtkAfterDash2State_magmaBlade;
WEAPON1ATTACK2_ANIMTABLE[ "UseWeapon2State_DualGunAttack" ]				= UseWeapon2State_DualGunAttack;
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_Katana_VIOLA_Sword" ]= SwordAtkAfterDash2State_Katana_VIOLA_Sword;
WEAPON1ATTACK2_ANIMTABLE[ "UseWeapon1Attack2State_FrypanBat" ]			= UseWeapon1Attack2State_FrypanBat;
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_Katana_S3_Sword" ]	= SwordAtkAfterDash2State_Katana_S3_Sword;
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_VirtualShield" ]		= SwordAtkAfterDash2State_VirtualShield;

-- �ű� ���� ��ų�
WEAPON1ATTACK2_ANIMTABLE[ "SecondBasicAttack_DEATHSCYTHE" ] = SecondBasicAttack_DEATHSCYTHE;

-- ���̾� ����
WEAPON1ATTACK2_ANIMTABLE[ "ANI_IRONBOOTS_Second_Kick_Attack" ] = ANI_IRONBOOTS_Second_Kick_Attack;
WEAPON1ATTACK2_ANIMTABLE[ "ANI_IRONBOOTS_Second_Kick_Attack_Normal" ] = ANI_IRONBOOTS_Second_Kick_Attack_Normal;

-- ����� ��Ŭ
WEAPON1ATTACK2_ANIMTABLE[ "ANI_LeftAttack2_DemonicKnuckle" ] = ANI_LeftAttack2_DemonicKnuckle;

-- �ű� ���� ��ų� ����ũ
WEAPON1ATTACK2_ANIMTABLE[ "SecondBasicAttack_DEATHSCYTHE_Unique" ] = SecondBasicAttack_DEATHSCYTHE_Unique;

-- �۸�ġ ���� �ñ׸� ���̵�
WEAPON1ATTACK2_ANIMTABLE[ "SwordAtkAfterDash2State_GlitchJoySigmaBlade" ]		= SwordAtkAfterDash2State_GlitchJoySigmaBlade;

----------------------------------------------------------------------------------------------------
-- UseWeapon1_Attack3 �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_CounterSword" ]		= SwordAtkAfterDash3State_CounterSword;
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_KatanaSword" ]		= SwordAtkAfterDash3State_KatanaSword;
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_Card" ]				= SwordAtkAfterDash3State_Card;
WEAPON1ATTACK3_ANIMTABLE[ "UseWeapon1Attack3State_BatSword" ]			= UseWeapon1Attack3State_BatSword;
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_DoubleSword" ]		= SwordAtkAfterDash3State_DoubleSword;
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_SigmaBlade" ]		= SwordAtkAfterDash3State_SigmaBlade;
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_Katana_A_Sword" ]	= SwordAtkAfterDash3State_Katana_A_Sword;
WEAPON1ATTACK3_ANIMTABLE[ "UseWeapon1Attack3State_CrashStomBat" ]		= UseWeapon1Attack3State_CrashStomBat;
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_Katana_JIN_Sword" ]	= SwordAtkAfterDash3State_Katana_JIN_Sword;
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_magmaBlade" ]		= SwordAtkAfterDash3State_magmaBlade;
WEAPON1ATTACK3_ANIMTABLE[ "UseWeapon3State_DualGunAttack" ]				= UseWeapon3State_DualGunAttack;
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_Katana_VIOLA_Sword" ]= SwordAtkAfterDash3State_Katana_VIOLA_Sword;
WEAPON1ATTACK3_ANIMTABLE[ "UseWeapon1Attack3State_FrypanBat" ]			= UseWeapon1Attack3State_FrypanBat;
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_Katana_S3_Sword" ]	= SwordAtkAfterDash3State_Katana_S3_Sword;
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_VirtualShield" ]		= SwordAtkAfterDash3State_VirtualShield;

-- �ű� ���� ��ų�
WEAPON1ATTACK3_ANIMTABLE[ "ThirdBasicAttack_DEATHSCYTHE" ]              = ThirdBasicAttack_DEATHSCYTHE;

-- ���̾� ����
WEAPON1ATTACK3_ANIMTABLE[ "ANI_IRONBOOTS_Third_Kick_Attack" ]           = ANI_IRONBOOTS_Third_Kick_Attack;
WEAPON1ATTACK3_ANIMTABLE[ "ANI_IRONBOOTS_Third_Kick_Attack_Normal" ]    = ANI_IRONBOOTS_Third_Kick_Attack_Normal;
 
-- �ű� ���� ��ų� ����ũ
WEAPON1ATTACK3_ANIMTABLE[ "ThirdBasicAttack_DEATHSCYTHE_Unique" ]       = ThirdBasicAttack_DEATHSCYTHE_Unique;

-- �۸�ġ ���� �ñ׸� ���̵�
WEAPON1ATTACK3_ANIMTABLE[ "SwordAtkAfterDash3State_GlitchJoySigmaBlade" ]		= SwordAtkAfterDash3State_GlitchJoySigmaBlade;
----------------------------------------------------------------------------------------------------
-- UseWeapon1_Attack4 �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_CounterSword" ]		= SwordAtkAfterDash4State_CounterSword;
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_KatanaSword" ]		= SwordAtkAfterDash4State_KatanaSword;
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_Card" ]				= SwordAtkAfterDash4State_Card;
WEAPON1ATTACK4_ANIMTABLE[ "UseWeapon1Attack4State_BatSword" ]			= UseWeapon1Attack4State_BatSword;
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_DoubleSword" ]		= SwordAtkAfterDash4State_DoubleSword;
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_DoubleSword_Unique" ]= SwordAtkAfterDash4State_DoubleSword_Unique;
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_Breaker" ]			= SwordAtkAfterDash4State_Breaker;
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_SigmaBlade" ]		= SwordAtkAfterDash4State_SigmaBlade;
WEAPON1ATTACK4_ANIMTABLE[ "UseWeapon2Charge_Katana_A_Sword" ]			= UseWeapon2Charge_Katana_A_Sword;
WEAPON1ATTACK4_ANIMTABLE[ "UseWeapon1Attack4State_CrashStomBat" ]		= UseWeapon1Attack4State_CrashStomBat;
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_magmaBlade" ]		= SwordAtkAfterDash4State_magmaBlade;
WEAPON1ATTACK4_ANIMTABLE[ "UseWeapon1Attack4State_FrypanBat" ]			= UseWeapon1Attack4State_FrypanBat;
WEAPON1ATTACK4_ANIMTABLE[ "UseWeapon2Charge_Katana_S3_Sword" ]			= UseWeapon2Charge_Katana_S3_Sword;
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_VirtualShield" ]		= SwordAtkAfterDash4State_VirtualShield;

-- ���̾� ����
WEAPON1ATTACK4_ANIMTABLE[ "ANI_IRONBOOTS_Fourth_Kick_Attack" ]          = ANI_IRONBOOTS_Fourth_Kick_Attack;
WEAPON1ATTACK4_ANIMTABLE[ "ANI_IRONBOOTS_Fourth_Kick_Attack_Normal" ]   = ANI_IRONBOOTS_Fourth_Kick_Attack_Normal;

-- �۸�ġ Ʈ�����̵�
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_DoubleSword_Glitch" ]= SwordAtkAfterDash4State_DoubleSword_Glitch;

-- �۸�ġ ���� �ñ׸� ���̵�
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_GlitchJoySigmaBlade" ]		= SwordAtkAfterDash4State_GlitchJoySigmaBlade;

-- �۸�ġ Ʈ�����̵�
WEAPON1ATTACK4_ANIMTABLE[ "SwordAtkAfterDash4State_DoubleSword_fan" ]= SwordAtkAfterDash4State_DoubleSword_fan;

----------------------------------------------------------------------------------------------------
-- UseWeapon1_Attack5 �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON1ATTACK5_ANIMTABLE[ "SwordAtkAfterDash5State_KatanaSword" ]	= SwordAtkAfterDash5State_KatanaSword;
WEAPON1ATTACK5_ANIMTABLE[ "SwordAtkAfterDash5State_Card" ]			= SwordAtkAfterDash5State_Card;
WEAPON1ATTACK5_ANIMTABLE[ "UseWeapon1Attack5State_BatSword" ]		= UseWeapon1Attack5State_BatSword;
WEAPON1ATTACK5_ANIMTABLE[ "SwordAtkAfterDash5State_DoubleSword" ]	= SwordAtkAfterDash5State_DoubleSword;
WEAPON1ATTACK5_ANIMTABLE[ "SwordAtkAfterDash5State_Breaker" ]	= SwordAtkAfterDash5State_Breaker	;
WEAPON1ATTACK5_ANIMTABLE[ "UseWeapon2Dash_Katana_A_Sword" ]	= UseWeapon2Dash_Katana_A_Sword;
WEAPON1ATTACK5_ANIMTABLE[ "UseWeapon1Attack5State_CrashStomBat" ]	= UseWeapon1Attack5State_CrashStomBat;
WEAPON1ATTACK5_ANIMTABLE[ "UseWeapon2Dash_Katana_JIN_Sword" ]		= UseWeapon2Dash_Katana_JIN_Sword;
WEAPON1ATTACK5_ANIMTABLE[ "UseWeapon2Dash_Katana_VIOLA_Sword" ]		= UseWeapon2Dash_Katana_VIOLA_Sword;
WEAPON1ATTACK5_ANIMTABLE[ "UseWeapon1Attack5State_FrypanBat" ]		= UseWeapon1Attack5State_FrypanBat;
WEAPON1ATTACK5_ANIMTABLE[ "UseWeapon2Dash_Katana_S3_Sword" ]	= UseWeapon2Dash_Katana_S3_Sword;

----------------------------------------------------------------------------------------------------
-- UseWeapon1_CounterAttack �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON1COUNTERATTACK_ANIMTABLE[ "SwordAtkCounterAttack_CounterSword" ]		= SwordAtkCounterAttack_CounterSword;
WEAPON1COUNTERATTACK_ANIMTABLE[ "SwordAtkCounterAttack_SigmaBlade" ]		= SwordAtkCounterAttack_SigmaBlade;
WEAPON1COUNTERATTACK_ANIMTABLE[ "SwordAtkCounterAttack_magmaBlade" ]		= SwordAtkCounterAttack_magmaBlade;
WEAPON1COUNTERATTACK_ANIMTABLE[ "SwordAtkCounterAttack_VirtualShield" ]		= SwordAtkCounterAttack_VirtualShield;

-- �۸�ġ ���� �ñ׸� ���̵�
WEAPON1COUNTERATTACK_ANIMTABLE[ "SwordAtkCounterAttack_GlitchJoySigmaBlade" ]		= SwordAtkCounterAttack_GlitchJoySigmaBlade;
----------------------------------------------------------------------------------------------------
-- UseWeapon2_Weak �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON2WEAK_ANIMTABLE[ "UseWeapon2WeakState_SMG3Sword" ]				= UseWeapon2WeakState_SMG3Sword;
WEAPON2WEAK_ANIMTABLE[ "UseWeapon1State_StandardAimedShotZoomIn" ] 	= UseWeapon1State_StandardAimedShotZoomIn;

----------------------------------------------------------------------------------------------------
-- UseWeapon2_Strong �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
WEAPON2STRONG_ANIMTABLE[ "UseWeapon2StrongState_SMG3Sword" ] = UseWeapon2StrongState_SMG3Sword;
WEAPON2STRONG_ANIMTABLE[ "UseWeapon1State_StandardAimedShotZoomIn" ] 	= UseWeapon1State_StandardAimedShotZoomIn;

----------------------------------------------------------------------------------------------------
-- �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
ANIMATIONFUNCTABLE[ANIM_Weapon1State					] = WEAPON1STATE_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon2State					] = WEAPON2STATE_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon1WeakState			] = WEAPON1WEAK_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon1StrongState			] = WEAPON1STRONG_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon1JumpState			] = WEAPON1JUMP_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon1Strong1State			] = WEAPON1STRONG1_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon1Attack2State			] = WEAPON1ATTACK2_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon1Attack3State			] = WEAPON1ATTACK3_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon1Attack4State			] = WEAPON1ATTACK4_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon1Attack5State			] = WEAPON1ATTACK5_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon1CounterAttackState	] = WEAPON1COUNTERATTACK_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon2WeakState			] = WEAPON2WEAK_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon2StrongState			] = WEAPON2STRONG_ANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_Weapon1InstallState			] = WEAPON1INSTALLSTATE_ANIMTABLE
ANIMATIONFUNCTABLE[ANIM_Weapon2InstallState			] = WEAPON2INSTALLSTATE_ANIMTABLE
ANIMATIONFUNCTABLE[ANIM_NormalState					] = NORMALANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_DamageState					] = DAMAGEANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_RunState						] = RUNANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_ReloadState					] = RELOADANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_NormalInstallState				] = NORMALINSTALLANIMTABLE;
ANIMATIONFUNCTABLE[ANIM_ReloadInstallState				] = RELOADINSTALLANIMTABLE;

-------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- ������ �׼� �ִϸ��̼� ���̺�
----------------------------------------------------------------------------------------------------
ESPERACTIONANIMTABLE[ANIM_ESPERACTION_ESPERBEAM			] = EsperSkill_EsperBeam;		-- ������ ��
ESPERACTIONANIMTABLE[ANIM_ESPERACTION_ESPERCOAT			] = EsperSkill_EsperCoat;		-- ������ ��Ʈ
ESPERACTIONANIMTABLE[ANIM_ESPERACTION_ESPERBOMB			] = EsperSkill_EsperBomb;		-- ������ ��
ESPERACTIONANIMTABLE[ANIM_ESPERACTION_KNEESLIDE			] = EsperSkill_EsperKneeSlide;	-- �� �����̵�
-------------------------------------------------------------------------------------------------------------

-- ActorStates_GamePlayAnimTable
-------------------------------------------------------------------------------------------------------------
function ActorStates_GamePlayAnimTable()

	ActorState_Spectate					( ActorStateGroup:GetActorState( STATE_SPECTATE						) );
	ActorState_Ghost					( ActorStateGroup:GetActorState( STATE_GHOST						) );
	ActorState_Respawn					( ActorStateGroup:GetActorState( STATE_RESPAWN						) );
	ActorState_Wait						( ActorStateGroup:GetActorState( STATE_WAIT							) );
	ActorState_Standby					( ActorStateGroup:GetActorState( STATE_STANDBY						) );
	ActorState_Standby					( ActorStateGroup:GetActorState( STATE_STANDBY_INSTALL						) );
	
	NormalState_WeaponUnused			( ActorStateGroup:GetActorState( STATE_NORMAL ):GetStatePerWeapon( WEAPONTYPE_UNUSED				) );
	ActorState_AnimTableByState			( ANIM_NormalState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_NORMAL						) );
	ActorState_AnimTableByState			( ANIM_NormalInstallState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_NORMAL_INSTALL						) );
	
	RunState_WeaponUnused				( ActorStateGroup:GetActorState( STATE_RUN ):GetStatePerWeapon( WEAPONTYPE_UNUSED				) );	
	ActorState_AnimTableByState			( ANIM_RunState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_RUN							) );	
	
	ActorState_Sit						( ActorStateGroup:GetActorState( STATE_SIT							) );
	ActorState_Jump						( ActorStateGroup:GetActorState( STATE_JUMP							) );
	ActorState_BoundJump				( ActorStateGroup:GetActorState( STATE_BOUNDJUMP					) );
	ActorState_Fall						( ActorStateGroup:GetActorState( STATE_FALL							) );
	ActorState_Dodge					( ActorStateGroup:GetActorState( STATE_DODGE_LEFT					) );
	ActorState_Dodge					( ActorStateGroup:GetActorState( STATE_DODGE_RIGHT					) );
	ActorState_Stun						( ActorStateGroup:GetActorState( STATE_STUN							) );
	ActorState_Stiffen					( ActorStateGroup:GetActorState( STATE_STIFFEN						) );
	ActorState_Down						( ActorStateGroup:GetActorState( STATE_DOWN							) );
	ActorState_Standup					( ActorStateGroup:GetActorState( STATE_STANDUP						) );
	ActorState_Blow						( ActorStateGroup:GetActorState( STATE_BLOW							) );
	ActorState_BoundBlow				( ActorStateGroup:GetActorState( STATE_BOUNDBLOW					) );
	
	DamageState_WeaponUnused			( ActorStateGroup:GetActorState( STATE_DAMAGE ):GetStatePerWeapon( WEAPONTYPE_UNUSED				) );
	ActorState_AnimTableByState			( ANIM_DamageState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_DAMAGE						) );
	
	ActorState_CounterAttackDamage		( ActorStateGroup:GetActorState( STATE_COUNTERATTACK_DAMAGE			) );
	ActorState_DownDamage				( ActorStateGroup:GetActorState( STATE_DOWNDAMAGE					) );
	ActorState_FastRun					( ActorStateGroup:GetActorState( STATE_FASTRUN						) );
	ActorState_Dodge					( ActorStateGroup:GetActorState( STATE_DODGE_LEFT_AFTER_STUN		) );
	ActorState_Dodge					( ActorStateGroup:GetActorState( STATE_DODGE_RIGHT_AFTER_STUN		) );
	ActorState_Jump						( ActorStateGroup:GetActorState( STATE_JUMP_AFTER_ANCHORING			) );
	
	ActorState_AnimTableByState			( ANIM_ReloadState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_RELOAD						) );
	ActorState_AnimTableByState			( ANIM_ReloadInstallState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_RELOAD_INSTALL						) );
	
	-- STATE_SOCIALACTION
	-- STATE_RESULTACTION
	ActorState_Death					( ActorStateGroup:GetActorState( STATE_DEATH						) );
	ActorState_Idle						( ActorStateGroup:GetActorState( STATE_IDLE							) );
	ActorState_Destruction				( ActorStateGroup:GetActorState( STATE_DESTRUCTION					) );
	--STATE-ARCADERESULTACTION
	
	-- ��ų� ���� ����
	ActorState_UpperCut                 ( ActorStateGroup:GetActorState( STATE_UPPERCUT                     ) );

	Skill_Fly							( ActorStateGroup:GetActorState( STATE_SKILL_FLY					) );
	Skill_Anchoring						( ActorStateGroup:GetActorState( STATE_SKILL_ANCHORING				) );
	Skill_Stealth						( ActorStateGroup:GetActorState( STATE_SKILL_STEALTH				) );
	Skill_Shield						( ActorStateGroup:GetActorState( STATE_SKILL_SHIELD					) );
	Skill_WallCreation					( ActorStateGroup:GetActorState( STATE_SKILL_WALL_CREATION			) );
	Skill_Bind							( ActorStateGroup:GetActorState( STATE_SKILL_BIND					) );
	Skill_Metalic						( ActorStateGroup:GetActorState( STATE_SKILL_METALIC				) );
	Skill_Berserk						( ActorStateGroup:GetActorState( STATE_SKILL_BERSERK				) );

	ActorState_AnimTableByState			( ANIM_Weapon1State, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1					) );
	ActorState_AnimTableByState			( ANIM_Weapon2State, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON2					) );

	ActorState_AnimTableByState			( ANIM_Weapon1WeakState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1_WEAK				) );
	ActorState_AnimTableByState			( ANIM_Weapon1StrongState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1_STRONG			) );
	ActorState_AnimTableByState			( ANIM_Weapon1JumpState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1_JUMP				) );
	ActorState_AnimTableByState			( ANIM_Weapon1Strong1State, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1_STRONG1			) );
	ActorState_AnimTableByState			( ANIM_Weapon1Attack2State, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1_ATTACK2			) );
	ActorState_AnimTableByState			( ANIM_Weapon1Attack3State, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1_ATTACK3			) );
	ActorState_AnimTableByState			( ANIM_Weapon1Attack4State, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1_ATTACK4			) );
	ActorState_AnimTableByState			( ANIM_Weapon1Attack5State, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1_ATTACK5			) );
	ActorState_AnimTableByState			( ANIM_Weapon1CounterAttackState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1_COUNTERATTACK	) );

	ActorState_AnimTableByState			( ANIM_Weapon2WeakState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON2_WEAK				) );
	ActorState_AnimTableByState			( ANIM_Weapon2StrongState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON2_STRONG			) );
	
	ActorState_AnimTableByState			( ANIM_Weapon1InstallState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON1_INSTALL				) );
	ActorState_AnimTableByState			( ANIM_Weapon2InstallState, WEAPON1, WEAPON2, WEAPON3, ActorStateGroup:GetActorState( STATE_USE_WEAPON2_INSTALL			) );

	Skill_Temp0						( ActorStateGroup:GetActorState( STATE_SKILL_TEMP_0				) );
	Skill_Temp1						( ActorStateGroup:GetActorState( STATE_SKILL_TEMP_1				) );
	Skill_Temp2						( ActorStateGroup:GetActorState( STATE_SKILL_TEMP_2				) );
	Skill_Temp3						( ActorStateGroup:GetActorState( STATE_SKILL_TEMP_3				) );
	
	EsperSkill_EsperBeam			( ActorStateGroup:GetActorState( STATE_SET_SKILL_ESPER_BEAM		) );	
	EsperSkill_EsperCoat			( ActorStateGroup:GetActorState( STATE_SET_SKILL_ESPER_COAT		) );
	EsperSkill_EsperBomb			( ActorStateGroup:GetActorState( STATE_SET_SKILL_ESPER_BOMB		) );         
	EsperSkill_EsperKneeSlide		( ActorStateGroup:GetActorState( STATE_SET_SKILL_KNEE_SLIDE		) );      
	 
	
	GameMgr:SetLOWER_ANIM_TOTAL( LOWER_ANIM_TOTAL );
	
end


-------------------------------------------------------------------------------------------------------------
-- ANIMATION BY STATE
-------------------------------------------------------------------------------------------------------------
function UseWeapon_AnimByState( animIndex )
	
	animTable	= ANIMATIONFUNCTABLE[ animIndex ];
	
	if animTable then
	
		weaponType	= CURRWEAPON:GetWeaponType();
		func		= animTable[ CURRWEAPON:GetLuaAnimName(animIndex) ];	
		if weaponType and func then
			func( tSTATE );
		end	
		
	end

end

-------------------------------------------------------------------------------------------------------------
-- ANIMATION BY STATE ESPER_ACTION - sinhye_add ( 2015 - 11 - 02 ) 
-------------------------------------------------------------------------------------------------------------
function UseEsperAcion_AnimByState( animIndex )

	func	= ESPERACTIONANIMTABLE[ animIndex ];
	
	if	func then
		func( tSTATE );
	end	

end

-------------------------------------------------------------------------------------------------------------
-- ANIMATION BY STATE
-------------------------------------------------------------------------------------------------------------
function ActorState_AnimTableByState( animIndex, WEAPON1, WEAPON2, WEAPON3, state )
	
	animTable	= ANIMATIONFUNCTABLE[ animIndex ];
	
	if animTable then
	
		weaponType	= WEAPON1:GetWeaponType();
		func		= animTable[ WEAPON1:GetLuaAnimName(animIndex) ];	
		if weaponType and func then
			func( state:GetStatePerWeapon( weaponType ) );
		end	
		
		weaponType	= WEAPON2:GetWeaponType();
		func		= animTable[ WEAPON2:GetLuaAnimName(animIndex) ];	
		if weaponType and func then
			func( state:GetStatePerWeapon( weaponType ) );
		end	
		
		weaponType	= WEAPON3:GetWeaponType();
		func		= animTable[ WEAPON3:GetLuaAnimName(animIndex) ];	
		if weaponType and func then
			func( state:GetStatePerWeapon( weaponType ) );
		end	
		
	end

end


-------------------------------------------------------------------------------------------------------------
-- ActorStates_GamePlayAnimTableByWeapon
-------------------------------------------------------------------------------------------------------------
function ActorStates_GamePlayAnimTableByWeapon()

end

-------------------------------------------------------------------------------------------------------------
-- ANIMATION BY STATE BY WEAPON
-------------------------------------------------------------------------------------------------------------
function ActorState_AnimTableByStateByWeapon( animIndex, WEAPON, state )
	
	animTable	= ANIMATIONFUNCTABLE[ animIndex ];
	
	if animTable then
	
		weaponType	= WEAPON:GetWeaponType();
		func		= animTable[ WEAPON:GetLuaAnimName(animIndex) ];	
		if weaponType and func then
			func( state:GetStatePerWeapon( weaponType ) );
		end			
		
	end

end


-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL
-------------------------------------------------------------------------------------------------------------
function ActorState_NormalTable( WEAPON1, WEAPON2, WEAPON3, state )

	NormalState_WeaponUnused			( state:GetStatePerWeapon( WEAPONTYPE_UNUSED				) );
	
	weaponType	= WEAPON1:GetWeaponType();
	func		= NORMALANIMTABLE[ WEAPON1:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	
	
	weaponType	= WEAPON2:GetWeaponType();
	func		= NORMALANIMTABLE[ WEAPON2:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	
	
	weaponType	= WEAPON3:GetWeaponType();
	func		= NORMALANIMTABLE[ WEAPON3:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	

end



-------------------------------------------------------------------------------------------------------------
-- STATE_RUN
-------------------------------------------------------------------------------------------------------------
function ActorState_RunTable( WEAPON1, WEAPON2, WEAPON3, state )

	RunState_WeaponUnused				( state:GetStatePerWeapon( WEAPONTYPE_UNUSED				) );

	weaponType	= WEAPON1:GetWeaponType();
	func		= RUNANIMTABLE[ WEAPON1:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	
	
	weaponType	= WEAPON2:GetWeaponType();
	func		= RUNANIMTABLE[ WEAPON2:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	
	
	weaponType	= WEAPON3:GetWeaponType();
	func		= RUNANIMTABLE[ WEAPON3:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	

end



-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE
-------------------------------------------------------------------------------------------------------------
function ActorState_DamageTable( WEAPON1, WEAPON2, WEAPON3, state )

	DamageState_WeaponUnused			( state:GetStatePerWeapon( WEAPONTYPE_UNUSED				) );

	weaponType	= WEAPON1:GetWeaponType();
	func		= DAMAGEANIMTABLE[ WEAPON1:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	
	
	weaponType	= WEAPON2:GetWeaponType();
	func		= DAMAGEANIMTABLE[ WEAPON2:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	
	
	weaponType	= WEAPON3:GetWeaponType();
	func		= DAMAGEANIMTABLE[ WEAPON3:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	

end




-------------------------------------------------------------------------------------------------------------
-- STATE_RELOAD
-------------------------------------------------------------------------------------------------------------
function ActorState_ReloadTable( WEAPON1, WEAPON2, WEAPON3, state )

	weaponType	= WEAPON1:GetWeaponType();
	func		= RELOADANIMTABLE[ WEAPON1:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	
	
	weaponType	= WEAPON2:GetWeaponType();
	func		= RELOADANIMTABLE[ WEAPON2:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	
	
	weaponType	= WEAPON3:GetWeaponType();
	func		= RELOADANIMTABLE[ WEAPON3:GetNormalLuaName() ];	
	if weaponType and func then
		func( state:GetStatePerWeapon( weaponType ) );
	end	

end












-------------------------------------------------------------------------------------------------------------

-- �� �� �� --


-------------------------------------------------------------------------------------------------------------
-- ActorStates_GamePlay
-------------------------------------------------------------------------------------------------------------
function ActorStates_GamePlay()

	ActorState_Spectate					( ActorStateGroup:GetActorState( STATE_SPECTATE						) );
	ActorState_Ghost					( ActorStateGroup:GetActorState( STATE_GHOST						) );
	ActorState_Respawn					( ActorStateGroup:GetActorState( STATE_RESPAWN						) );
	ActorState_Wait						( ActorStateGroup:GetActorState( STATE_WAIT							) );
	ActorState_Standby					( ActorStateGroup:GetActorState( STATE_STANDBY						) );
	ActorState_Normal					( ActorStateGroup:GetActorState( STATE_NORMAL						) );
	ActorState_Run						( ActorStateGroup:GetActorState( STATE_RUN							) );
	ActorState_Sit						( ActorStateGroup:GetActorState( STATE_SIT							) );
	ActorState_Jump						( ActorStateGroup:GetActorState( STATE_JUMP							) );
	ActorState_BoundJump				( ActorStateGroup:GetActorState( STATE_BOUNDJUMP					) );
	ActorState_Fall						( ActorStateGroup:GetActorState( STATE_FALL							) );
	ActorState_Dodge					( ActorStateGroup:GetActorState( STATE_DODGE_LEFT					) );
	ActorState_Dodge					( ActorStateGroup:GetActorState( STATE_DODGE_RIGHT					) );
	ActorState_Stun						( ActorStateGroup:GetActorState( STATE_STUN							) );
	ActorState_Stiffen						( ActorStateGroup:GetActorState( STATE_STIFFEN							) );
	ActorState_Down						( ActorStateGroup:GetActorState( STATE_DOWN							) );
	ActorState_Standup					( ActorStateGroup:GetActorState( STATE_STANDUP						) );
	ActorState_Blow						( ActorStateGroup:GetActorState( STATE_BLOW							) );
	ActorState_BoundBlow				( ActorStateGroup:GetActorState( STATE_BOUNDBLOW					) );
	ActorState_Damage					( ActorStateGroup:GetActorState( STATE_DAMAGE						) );
	ActorState_CounterAttackDamage		( ActorStateGroup:GetActorState( STATE_COUNTERATTACK_DAMAGE			) );
	ActorState_DownDamage				( ActorStateGroup:GetActorState( STATE_DOWNDAMAGE					) );
	ActorState_FastRun					( ActorStateGroup:GetActorState( STATE_FASTRUN						) );
	ActorState_Dodge					( ActorStateGroup:GetActorState( STATE_DODGE_LEFT_AFTER_STUN		) );
	ActorState_Dodge					( ActorStateGroup:GetActorState( STATE_DODGE_RIGHT_AFTER_STUN		) );
	ActorState_Jump						( ActorStateGroup:GetActorState( STATE_JUMP_AFTER_ANCHORING			) );
	ActorState_Reload					( ActorStateGroup:GetActorState( STATE_RELOAD						) );
	
	ActorState_Standby					( ActorStateGroup:GetActorState( STATE_STANDBY_INSTALL						) );
	ActorState_Reload_Install				( ActorStateGroup:GetActorState( STATE_RELOAD_INSTALL						) );
	ActorState_Normal_Install				( ActorStateGroup:GetActorState( STATE_NORMAL_INSTALL						) );
	
	-- STATE_SOCIALACTION
	-- STATE_RESULTACTION
	ActorState_Death					( ActorStateGroup:GetActorState( STATE_DEATH						) );
	ActorState_Idle						( ActorStateGroup:GetActorState( STATE_IDLE							) );
	ActorState_Destruction				( ActorStateGroup:GetActorState( STATE_DESTRUCTION					) );
	--STATE-ARCADERESULTACTION
	
	-- ��ų� ���� ����
	ActorState_UpperCut                 ( ActorStateGroup:GetActorState( STATE_UPPERCUT                     ) );

	Skill_Fly							( ActorStateGroup:GetActorState( STATE_SKILL_FLY					) );
	Skill_Anchoring						( ActorStateGroup:GetActorState( STATE_SKILL_ANCHORING				) );
	Skill_Stealth						( ActorStateGroup:GetActorState( STATE_SKILL_STEALTH				) );
	Skill_Shield						( ActorStateGroup:GetActorState( STATE_SKILL_SHIELD					) );
	Skill_WallCreation					( ActorStateGroup:GetActorState( STATE_SKILL_WALL_CREATION			) );
	Skill_Bind							( ActorStateGroup:GetActorState( STATE_SKILL_BIND					) );
	Skill_Metalic						( ActorStateGroup:GetActorState( STATE_SKILL_METALIC				) );
	Skill_Berserk						( ActorStateGroup:GetActorState( STATE_SKILL_BERSERK				) );

	UseWeapon1							( ActorStateGroup:GetActorState( STATE_USE_WEAPON1					) );
	UseWeapon2							( ActorStateGroup:GetActorState( STATE_USE_WEAPON2					) );

	UseWeapon1_Weak						( ActorStateGroup:GetActorState( STATE_USE_WEAPON1_WEAK				) );
	UseWeapon1_Strong					( ActorStateGroup:GetActorState( STATE_USE_WEAPON1_STRONG			) );
	UseWeapon1_Jump						( ActorStateGroup:GetActorState( STATE_USE_WEAPON1_JUMP				) );
	UseWeapon1_Strong1					( ActorStateGroup:GetActorState( STATE_USE_WEAPON1_STRONG1			) );
	UseWeapon1_Attack2					( ActorStateGroup:GetActorState( STATE_USE_WEAPON1_ATTACK2			) );
	UseWeapon1_Attack3					( ActorStateGroup:GetActorState( STATE_USE_WEAPON1_ATTACK3			) );
	UseWeapon1_Attack4					( ActorStateGroup:GetActorState( STATE_USE_WEAPON1_ATTACK4			) );
	UseWeapon1_Attack5					( ActorStateGroup:GetActorState( STATE_USE_WEAPON1_ATTACK5			) );
	UseWeapon1_CounterAttack			( ActorStateGroup:GetActorState( STATE_USE_WEAPON1_COUNTERATTACK	) );
	
	UseWeapon2_Weak						( ActorStateGroup:GetActorState( STATE_USE_WEAPON2_WEAK				) );
	UseWeapon2_Strong					( ActorStateGroup:GetActorState( STATE_USE_WEAPON2_STRONG			) );
	
	UseWeapon1Install							( ActorStateGroup:GetActorState( STATE_USE_WEAPON1_INSTALL					) );
	UseWeapon2Install							( ActorStateGroup:GetActorState( STATE_USE_WEAPON2_INSTALL					) );
	
	Skill_Temp0						( ActorStateGroup:GetActorState( STATE_SKILL_TEMP_0				) );
	Skill_Temp1						( ActorStateGroup:GetActorState( STATE_SKILL_TEMP_1				) );
	Skill_Temp2						( ActorStateGroup:GetActorState( STATE_SKILL_TEMP_2				) );
	Skill_Temp3						( ActorStateGroup:GetActorState( STATE_SKILL_TEMP_3				) );
	
	EsperSkill_EsperBeam			( ActorStateGroup:GetActorState( STATE_SET_SKILL_ESPER_BEAM		) );	
	EsperSkill_EsperCoat			( ActorStateGroup:GetActorState( STATE_SET_SKILL_ESPER_COAT		) );
	EsperSkill_EsperBomb			( ActorStateGroup:GetActorState( STATE_SET_SKILL_ESPER_BOMB		) );         
	EsperSkill_EsperKneeSlide		( ActorStateGroup:GetActorState( STATE_SET_SKILL_KNEE_SLIDE		) );      
	
	GameMgr:SetLOWER_ANIM_TOTAL( LOWER_ANIM_TOTAL );
	
end







-------------------------------------------------------------------------------------------------------------
-- STATE_STANDBY
-------------------------------------------------------------------------------------------------------------
function ActorState_Standby( state )
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL
-------------------------------------------------------------------------------------------------------------
function ActorState_Normal( state )

	NormalState_WeaponUnused			( state:GetStatePerWeapon( WEAPONTYPE_UNUSED				) );
	NormalState_PlasmaSword				( state:GetStatePerWeapon( WEAPONTYPE_PLASMA_SWORD			) );
	NormalState_SubMachineGun			( state:GetStatePerWeapon( WEAPONTYPE_SUBMACHINE_GUN		) );
	NormalState_MachineGun				( state:GetStatePerWeapon( WEAPONTYPE_MACHINE_GUN			) );
	NormalState_Rifle					( state:GetStatePerWeapon( WEAPONTYPE_RIFLE					) );
	NormalState_SentryGunBuilder		( state:GetStatePerWeapon( WEAPONTYPE_SENTRYGUN_BUILDER		) );
	NormalState_MineLauncher			( state:GetStatePerWeapon( WEAPONTYPE_MINE_LAUNCHER			) );
	NormalState_MindEnergy				( state:GetStatePerWeapon( WEAPONTYPE_MIND_ENERGY			) );
	NormalState_CounterSword			( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD			) );
	NormalState_Revolver				( state:GetStatePerWeapon( WEAPONTYPE_REVOLVER				) );
	NormalState_SMG2					( state:GetStatePerWeapon( WEAPONTYPE_SMG2					) );
	NormalState_Cannonade				( state:GetStatePerWeapon( WEAPONTYPE_CANNONADE				) );
	NormalState_MinStorm				( state:GetStatePerWeapon( WEAPONTYPE_MIND_STROM			) );
	NormalState_SentiwallBuilder		( state:GetStatePerWeapon( WEAPONTYPE_SENTIWALL_BUILDER		) );
	NormalState_BatSword				( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD				) );
	NormalState_KatanaSword				( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD			) );
	NormalState_Card					( state:GetStatePerWeapon( WEAPONTYPE_CARD					) );
	NormalState_MG2						( state:GetStatePerWeapon( WEAPONTYPE_MG2					) );
	NormalState_SentinelBuilder			( state:GetStatePerWeapon( WEAPONTYPE_SENTINEL_BUILDER		) );
	NormalState_AssassinClaw			( state:GetStatePerWeapon( WEAPONTYPE_ASSASSIN_CLAW			) );
	NormalState_SMG3					( state:GetStatePerWeapon( WEAPONTYPE_SMG3					) );
	NormalState_Revolver2				( state:GetStatePerWeapon( WEAPONTYPE_REVOLVER2				) );
	NormalState_SMG4					( state:GetStatePerWeapon( WEAPONTYPE_SMG4					) );
	NormalState_SpyDagger					( state:GetStatePerWeapon( WEAPONTYPE_SPYDAGGER					) );
	NormalState_MindOrora					( state:GetStatePerWeapon( WEAPONTYPE_MIND_ORORA					) );
	NormalState_DoubleSword				( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD					) );
	NormalState_AIRGUN				( state:GetStatePerWeapon( WEAPONTYPE_AIR_GUN					) );
	NormalState_Breaker				( state:GetStatePerWeapon( WEAPONTYPE_BREAKER					) );
	NormalState_SigmaBlade		( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE					) );
	NormalState_Katana_A_Sword			( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD			) );
	NormalState_StandardRailGun					( state:GetStatePerWeapon( WEAPONTYPE_STANDARD_RAILGUN					) );
	NormalState_DualGun					( state:GetStatePerWeapon( WEAPONTYPE_DUAL_GUN					) );

    -- ��ų�
    NormalState_DeathScythe             ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );

    -- ���̾� ����
    NormalState_IRONBOOTS               ( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS ) );
	
	-- ���콺 ������ MK2
	NormalState_MG2						( state:GetStatePerWeapon( WEAPONTYPE_GAUSS_RIFLE_MK2		) );

	-- ���� ��ó
	NormalState_RocketLauncher			( state:GetStatePerWeapon( WEAPONTYPE_ROCKET_LAUNCHER		) );

	-- ���Ʈ ������ ����ũ
	NormalState_ASSULT_RIFLE_UNIQUE		( state:GetStatePerWeapon( WEAPONTYPE_ASSULT_RIFLE_UNIQUE	) );  
	
	-- ������ ���ö���
--	NormalState_EnergySupplyBuilder		( state:GetStatePerWeapon( WEAPONTYPE_ENERGY_SUPPLY_BUILDER ) );

	-- ���߾� �ǵ�
	NormalState_VirtualShield			( state:GetStatePerWeapon( WEAPONTYPE_VIRTUAL_SHIELD ) );
	
	-- ��ƾ��ƽ
	NormalState_MartinStick				( state:GetStatePerWeapon( WEAPONYTPE_RAIL_MARTINSTICK ) );

	-- �۸��� Ʈ�����̵�
	NormalState_DoubleSword_Glitch				( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD			) );
	
	-- ���ε� ���� ����ũ
	NormalState_MinStorm_Unique				( state:GetStatePerWeapon( WEAPONTYPE_MIND_STROM_UNIQUE			) );
	
	-- �۸�ġ ���� �ñ׸� ���̵�
	NormalState_GlitchJoy_SigmaBlade	( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	
	-- ����Ż ��ũ ������ũ
	NormalState_VitalShock			( state:GetStatePerWeapon( WEAPONTYPE_VITAL_SHOCK			) );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_NORMAL
-------------------------------------------------------------------------------------------------------------
function ActorState_Normal_Install( state )

	NormalState_SMG2					( state:GetStatePerWeapon( WEAPONTYPE_DEFFERED_TEMP					) );	

end

-------------------------------------------------------------------------------------------------------------
-- STATE_RUN
-------------------------------------------------------------------------------------------------------------
function ActorState_Run( state )

	RunState_WeaponUnused				( state:GetStatePerWeapon( WEAPONTYPE_UNUSED				) );
	RunState_PlasmaSword				( state:GetStatePerWeapon( WEAPONTYPE_PLASMA_SWORD			) );
	RunState_SubMachineGun				( state:GetStatePerWeapon( WEAPONTYPE_SUBMACHINE_GUN		) );
	RunState_MachineGun					( state:GetStatePerWeapon( WEAPONTYPE_MACHINE_GUN			) );
	RunState_Rifle						( state:GetStatePerWeapon( WEAPONTYPE_RIFLE					) );
	RunState_SentryGunBuilder			( state:GetStatePerWeapon( WEAPONTYPE_SENTRYGUN_BUILDER		) );
	RunState_MineLauncher				( state:GetStatePerWeapon( WEAPONTYPE_MINE_LAUNCHER			) );
	RunState_MindEnergy					( state:GetStatePerWeapon( WEAPONTYPE_MIND_ENERGY			) );
	RunState_CounterSword				( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD			) );
	RunState_Revolver					( state:GetStatePerWeapon( WEAPONTYPE_REVOLVER				) );
	RunState_SMG2						( state:GetStatePerWeapon( WEAPONTYPE_SMG2					) );
	RunState_Cannonade					( state:GetStatePerWeapon( WEAPONTYPE_CANNONADE				) );
	RunState_MinStorm					( state:GetStatePerWeapon( WEAPONTYPE_MIND_STROM			) );
	RunState_SentiwallBuilder			( state:GetStatePerWeapon( WEAPONTYPE_SENTIWALL_BUILDER		) );
	RunState_BatSword					( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD				) );
	RunState_KatanaSword				( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD			) );
	RunState_Card						( state:GetStatePerWeapon( WEAPONTYPE_CARD					) );
	RunState_MG2						( state:GetStatePerWeapon( WEAPONTYPE_MG2					) );
	RunState_SentinelBuilder			( state:GetStatePerWeapon( WEAPONTYPE_SENTINEL_BUILDER		) );
	RunState_AssassinClaw				( state:GetStatePerWeapon( WEAPONTYPE_ASSASSIN_CLAW			) );
	RunState_SMG3						( state:GetStatePerWeapon( WEAPONTYPE_SMG3					) );
	RunState_Revolver2					( state:GetStatePerWeapon( WEAPONTYPE_REVOLVER2				) );
	RunState_SMG4						( state:GetStatePerWeapon( WEAPONTYPE_SMG4					) );
	RunState_SpyDagger					( state:GetStatePerWeapon( WEAPONTYPE_SPYDAGGER					) );
	RunState_MindOrora					( state:GetStatePerWeapon( WEAPONTYPE_MIND_ORORA			) );
	RunState_DoubleSword					( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD			) );
	RunState_AIRGUN					( state:GetStatePerWeapon( WEAPONTYPE_AIR_GUN			) );
	RunState_Breaker					( state:GetStatePerWeapon( WEAPONTYPE_BREAKER			) );
	RunState_SigmaBlade					( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	RunState_Katana_A_Sword				( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD			) );
	RunState_StandardRailGun						( state:GetStatePerWeapon( WEAPONTYPE_STANDARD_RAILGUN					) );
	RunState_DualGun						( state:GetStatePerWeapon( WEAPONTYPE_DUAL_GUN					) );
	
	-- ��ų�
    RunState_DEATH_SCYTHE               ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );
    
    -- ���̾� ����
    RunState_IRONBOOTS( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS ) );
	
	-- ���콺 ������ MK2
	RunState_MG2						( state:GetStatePerWeapon( WEAPONTYPE_GAUSS_RIFLE_MK2		) );
	
	-- ���� ��ó
	RunState_RocketLauncher			( state:GetStatePerWeapon( WEAPONTYPE_ROCKET_LAUNCHER		) );

	-- ������ ���ö���
--	RunState_EnergySupplyBuilder		( state:GetStatePerWeapon( WEAPONTYPE_ENERGY_SUPPLY_BUILDER ) );
	
	-- ���Ʈ ������ ����ũ
	RunState_ASSULT_RIFLE_UNIQUE		( state:GetStatePerWeapon( WEAPONTYPE_ASSULT_RIFLE_UNIQUE	) );  

	-- ���߾� �ǵ�
	RunState_VirtualShield				( state:GetStatePerWeapon( WEAPONTYPE_VIRTUAL_SHIELD ) );
	
	-- ���ϰ� ����ũ ��ƾ��ƽ
	RunState_RAIL_MARTINSTICK			( state:GetStatePerWeapon( WEAPONYTPE_RAIL_MARTINSTICK ) );
	
	-- ���ε� ��ũ ����ũ
	RunState_MinStorm_Unique			( state:GetStatePerWeapon( WEAPONTYPE_MIND_STROM_UNIQUE ) );
	
	-- �۸�ġ ���� �ñ׸� ���̵�
	RunState_GlitchJoy_SigmaBlade		( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	
	-- ����Ż ��ũ ������ũ
	RunState_VitalShock				( state:GetStatePerWeapon( WEAPONTYPE_VITAL_SHOCK			) );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SIT
-------------------------------------------------------------------------------------------------------------
function ActorState_Sit( state )

	local index = 0;
	local ANIMPARAMLIST_STANDBY				= index; index = index + 1;
	local ANIMPARAMLIST_FRONT				= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT				= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT				= index; index = index + 1;
	local ANIMPARAMLIST_BACK				= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_BACK			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_STANDBY				):SetAnim( "00065",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_FALSE	);
	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00057",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_FALSE	);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_FRONT			):SetAnim( "00058",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_FALSE	);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00059",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_FALSE	);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_FRONT			):SetAnim( "00060",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_FALSE	);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00061",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_FALSE	);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00062",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_FALSE	);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_BACK				):SetAnim( "00063",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_FALSE	);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_BACK			):SetAnim( "00064",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_FALSE	);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_JUMP
-------------------------------------------------------------------------------------------------------------
function ActorState_Jump( state )

	local index = 0;
	local ANIMPARAMLIST_DELAY_BEFORE_JUMP	= index; index = index + 1;
	local ANIMPARAMLIST_JUMP_RISE			= index; index = index + 1;
	local ANIMPARAMLIST_JUMP_MOVE_RISE		= index; index = index + 1;
	local ANIMPARAMLIST_LANDING				= index; index = index + 1;
	local ANIMPARAMLIST_LANDING_MOVE		= index; index = index + 1;
	local ANIMPARAMLIST_FALL				= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_DELAY_BEFORE_JUMP		):SetAnim( "00000",		0,	500,	1000,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_JUMP_RISE			):SetAnim( "00001",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_JUMP_MOVE_RISE		):SetAnim( "00004",		600,	100,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LANDING			):SetAnim( "00003",		500,	200,	500,	LOOP_FALSE,	0.8, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LANDING_MOVE			):SetAnim( "00000",		0,	100,	0,	LOOP_FALSE,	0.8, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FALL				):SetAnim( "00002",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);		
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_BOUNDJUMP
-------------------------------------------------------------------------------------------------------------
function ActorState_BoundJump( state )

	local index = 0;
	local ANIMPARAMLIST_DELAY_BEFORE_JUMP	= index; index = index + 1;
	local ANIMPARAMLIST_JUMP_RISE_A			= index; index = index + 1;
	local ANIMPARAMLIST_JUMP_RISE_B			= index; index = index + 1;
	local ANIMPARAMLIST_JUMP_FALL_A			= index; index = index + 1;
	local ANIMPARAMLIST_JUMP_FALL_B			= index; index = index + 1;
	local ANIMPARAMLIST_LANDING				= index; index = index + 1;
	local ANIMPARAMLIST_FAIL				= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_DELAY_BEFORE_JUMP		):SetAnim( "00066",		500,	0,		500,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_JUMP_RISE_A			):SetAnim( "00067",		500,	100,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_JUMP_RISE_B			):SetAnim( "00067_2",		500,	200,	1000,	LOOP_FALSE,	0.8, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_JUMP_FALL_A			):SetAnim( "00002",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_JUMP_FALL_B			):SetAnim( "00002",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LANDING			):SetAnim( "00003",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);		
	state:GetAnimParam( ANIMPARAMLIST_FAIL				):SetAnim( "00002",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);		

end

-------------------------------------------------------------------------------------------------------------
-- STATE_FALL
-------------------------------------------------------------------------------------------------------------
function ActorState_Fall( state )

	local index = 0;
	local ANIMPARAMLIST_FALLING			= index; index = index + 1;
	local ANIMPARAMLIST_LANDING			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FALLING				):SetAnim( "00002",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LANDING				):SetAnim( "00003",		380,	200,	300,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_DODGE_LEFT, STATE_DODGE_RIGHT, STATE_DODGE_FRONT, STATE_DODGE_BACK
-------------------------------------------------------------------------------------------------------------
function ActorState_Dodge( state )

	local index = 0;
	local ANIMPARAMLIST_DODGE_FRONT		= index; index = index + 1;
	local ANIMPARAMLIST_DODGE_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_DODGE_LEFT		= index; index = index + 1;
	local ANIMPARAMLIST_DODGE_RIGHT		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY_FRONT		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY_BACK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_DODGE_FRONT			):SetAnim( "00038",		0,	300,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DODGE_BACK			):SetAnim( "00041",		0,	300,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DODGE_LEFT			):SetAnim( "00005",		0,	300,	700,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DODGE_RIGHT			):SetAnim( "00056",		0,	300,	700,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY_FRONT			):SetAnim( "00039",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY_BACK			):SetAnim( "00042",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);		

end

-------------------------------------------------------------------------------------------------------------
-- STATE_STUN
-------------------------------------------------------------------------------------------------------------
function ActorState_Stun( state )

	state:AddSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500 );
	state:AddSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500, true  );		

	local index = 0;
	local ANIMPARAMLIST_PRECEDING		= index; index = index + 1;
	local ANIMPARAMLIST_STUN			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_PRECEDING				):SetAnim( "00006",		0,	0,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_STUN					):SetAnim( "00007",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_STIFFEN
-------------------------------------------------------------------------------------------------------------
function ActorState_Stiffen( state )

        state:AddSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500 );

	local index = 0;
	local ANIMPARAMLIST_PRECEDING		= index; index = index + 1;
	local ANIMPARAMLIST_STUN			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_PRECEDING				):SetAnim( "00006",		0,	0,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_STUN					):SetAnim( "00007",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_COUNTERATTACK_DAMAGE
-------------------------------------------------------------------------------------------------------------
function ActorState_CounterAttackDamage( state )


	state:AddSoundBySex( "Resources/Sound/voice_man_damage_3.ogg", "Resources/Sound/voice_girl_damage_3.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500 );		
	state:AddSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500, true  );		
		
	local index = 0;
	local ANIMPARAMLIST_PRECEDING		= index; index = index + 1;
	local ANIMPARAMLIST_STUN			= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_PRECEDING				):SetAnim( "00006",		0,	0,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_STUN					):SetAnim( "00007",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_DOWN
-------------------------------------------------------------------------------------------------------------
function ActorState_Down( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL			):SetAnim( "00021",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_STANDUP
-------------------------------------------------------------------------------------------------------------
function ActorState_Standup( state )

	state:AddSound( "Resources/Sound/get_up.ogg", "Bip01", 0, 2500 );
	
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL			):SetAnim( "00035",		0,	0,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_BLOW
-------------------------------------------------------------------------------------------------------------
function ActorState_Blow( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_damage_1.ogg", "Resources/Sound/voice_girl_damage_1.ogg", "Bip01", 0, 2500 );
	
	local index = 0;
	local ANIMPARAMLIST_BEGIN_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_BEGIN_DEATH		= index; index = index + 1;
	local ANIMPARAMLIST_MIDDLE_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_MIDDLE_DEATH	= index; index = index + 1;
	local ANIMPARAMLIST_END_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_END_DEATH		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN_NORMAL			):SetAnim( "00027",		0,	0,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BEGIN_DEATH			):SetAnim( "00026",		0,	0,		0,	LOOP_FALSE,	0.8, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MIDDLE_NORMAL			):SetAnim( "00026",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MIDDLE_DEATH			):SetAnim( "00026",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);		
	state:GetAnimParam( ANIMPARAMLIST_END_NORMAL			):SetAnim( "00024",		0,	400,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_END_DEATH				):SetAnim( "00026",		0,	400,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_BOUNDBLOW
-------------------------------------------------------------------------------------------------------------
function ActorState_BoundBlow( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_damage_2.ogg", "Resources/Sound/voice_girl_damage_2.ogg", "Bip01", 0, 2500 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_MIDDLE_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_END_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN_NORMAL			):SetAnim( "00070",		0,	100,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MIDDLE_NORMAL			):SetAnim( "00071",		0,	100,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_END_NORMAL			):SetAnim( "00072",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_DAMAGE
-------------------------------------------------------------------------------------------------------------
function ActorState_Damage( state )

	DamageState_WeaponUnused			( state:GetStatePerWeapon( WEAPONTYPE_UNUSED				) );
	DamageState_PlasmaSword				( state:GetStatePerWeapon( WEAPONTYPE_PLASMA_SWORD			) );
	DamageState_SubMachineGun			( state:GetStatePerWeapon( WEAPONTYPE_SUBMACHINE_GUN		) );
	DamageState_MachineGun				( state:GetStatePerWeapon( WEAPONTYPE_MACHINE_GUN			) );
	DamageState_Rifle					( state:GetStatePerWeapon( WEAPONTYPE_RIFLE					) );
	DamageState_SentryGunBuilder		( state:GetStatePerWeapon( WEAPONTYPE_SENTRYGUN_BUILDER		) );
	DamageState_MineLauncher			( state:GetStatePerWeapon( WEAPONTYPE_MINE_LAUNCHER			) );
	DamageState_MindEnergy				( state:GetStatePerWeapon( WEAPONTYPE_MIND_ENERGY			) );
	DamageState_CounterSword			( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD			) );
	DamageState_Revolver				( state:GetStatePerWeapon( WEAPONTYPE_REVOLVER				) );
	DamageState_SMG2					( state:GetStatePerWeapon( WEAPONTYPE_SMG2					) );
	DamageState_Cannonade				( state:GetStatePerWeapon( WEAPONTYPE_CANNONADE				) );
	DamageState_MinStorm				( state:GetStatePerWeapon( WEAPONTYPE_MIND_STROM			) );
	DamageState_SentiwallBuilder		( state:GetStatePerWeapon( WEAPONTYPE_SENTIWALL_BUILDER		) );
	DamageState_BatSword				( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD				) );
	DamageState_KatanaSword				( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD			) );
	DamageState_Card					( state:GetStatePerWeapon( WEAPONTYPE_CARD					) );
	DamageState_MG2						( state:GetStatePerWeapon( WEAPONTYPE_MG2					) );
	DamageState_SentinelBuilder			( state:GetStatePerWeapon( WEAPONTYPE_SENTINEL_BUILDER		) );
	DamageState_AssassinClaw			( state:GetStatePerWeapon( WEAPONTYPE_ASSASSIN_CLAW			) );
	DamageState_SMG3					( state:GetStatePerWeapon( WEAPONTYPE_SMG3					) );
	DamageState_Revolver2				( state:GetStatePerWeapon( WEAPONTYPE_REVOLVER2				) );
	DamageState_SMG4					( state:GetStatePerWeapon( WEAPONTYPE_SMG4					) );
	DamageState_SpyDagger					( state:GetStatePerWeapon( WEAPONTYPE_SPYDAGGER					) );
	DamageState_MindOrora					( state:GetStatePerWeapon( WEAPONTYPE_MIND_ORORA					) );
	DamageState_DoubleSword					( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD			) );
	DamageState_AIRGUN					( state:GetStatePerWeapon( WEAPONTYPE_AIR_GUN			) );
	DamageState_Breaker					( state:GetStatePerWeapon( WEAPONTYPE_BREAKER			) );
	DamageState_SigmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	DamageState_Katana_A_Sword			( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD			) );
	DamageState_StandardRailGun					( state:GetStatePerWeapon( WEAPONTYPE_STANDARD_RAILGUN					) );
	DamageState_DualGun					( state:GetStatePerWeapon( WEAPONTYPE_DUAL_GUN					) );

    -- ��ų�
    DamageState_DEATH_SCYTHE            ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );

    -- ���̾� ����
    DamageState_IRONBOOTS( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS ) );

	-- ���콺 ������ MK2
	DamageState_MG2						( state:GetStatePerWeapon( WEAPONTYPE_GAUSS_RIFLE_MK2		) );
	
	-- ���� ��ó
	DamageState_RocketLauncher			( state:GetStatePerWeapon( WEAPONTYPE_ROCKET_LAUNCHER		) );

	-- ������ ���ö���
--	DamageState_EnergySupplyBuilder		( state:GetStatePerWeapon( WEAPONTYPE_ENERGY_SUPPLY_BUILDER		) );	

	-- ���߾� �ǵ�
	DamageState_VirtualShield			( state:GetStatePerWeapon( WEAPONTYPE_VIRTUAL_SHIELD ) );
	
	-- �۸�ġ ���� �ñ׸� ���̵�
	DamageState_GlitchJoy_SigmaBlade		( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	
	-- ����Ż ��ũ
	DamageState_VitalShock			( state:GetStatePerWeapon( WEAPONTYPE_VITAL_SHOCK		) );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DOWNDAMAGE
-------------------------------------------------------------------------------------------------------------
function ActorState_DownDamage( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_damage_3.ogg", "Resources/Sound/voice_girl_damage_3.ogg", "Bip01", 0, 2500 );
	
	local index = 0;
	local ANIMPARAMLIST_UPSET_NORMAL	= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_UPSET_NORMAL		):SetAnim( "00023",		0,	100,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_DEATH
-------------------------------------------------------------------------------------------------------------
function ActorState_Death( state )

	state:AddSequence( 1, "Resources/Effects/dead_eff.seq", "", 1, 0 );

	local index = 0;
	local ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG		= index; index = index + 1;
	local ANIMPARAMLIST_FALLDOWN_BLOW				= index; index = index + 1;
	local ANIMPARAMLIST_FALLDOWN_BOUNDBLOW_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_LIEDOWN_BOUNDBLOW_NORMAL	= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK		):SetAnim( "00030",		0,	0,		0,	LOOP_FALSE,	1.3, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG	):SetAnim( "00069",		0,	0,		0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FALLDOWN_BLOW				):SetAnim( "00024",		0,	500,	0,	LOOP_FALSE,	1.5, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FALLDOWN_BOUNDBLOW_NORMAL	):SetAnim( "00071",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LIEDOWN_BOUNDBLOW_NORMAL	):SetAnim( "00072",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);		
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_IDLE
-------------------------------------------------------------------------------------------------------------
function ActorState_Idle( state )
end

-------------------------------------------------------------------------------------------------------------
-- STATE_DESTRUCTION
-------------------------------------------------------------------------------------------------------------
function ActorState_Destruction( state )
end

-------------------------------------------------------------------------------------------------------------
-- STATE_UPPERCUT
-------------------------------------------------------------------------------------------------------------
function ActorState_UpperCut( state )

    local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_END		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "GR005",		0,	200,	0,	    LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_END						):SetAnim( "GR006",		0,	200,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SPECTATE
-------------------------------------------------------------------------------------------------------------
function ActorState_Spectate( state )
end

-------------------------------------------------------------------------------------------------------------
-- STATE_GHOST
-------------------------------------------------------------------------------------------------------------
function ActorState_Ghost( state )
end

-------------------------------------------------------------------------------------------------------------
-- STATE_RESPAWN
-------------------------------------------------------------------------------------------------------------
function ActorState_Respawn( state )
end

-------------------------------------------------------------------------------------------------------------
-- STATE_WAIT
-------------------------------------------------------------------------------------------------------------
function ActorState_Wait( state )
end

-------------------------------------------------------------------------------------------------------------
-- STATE_RELOAD
-------------------------------------------------------------------------------------------------------------
function ActorState_Reload( state )

	ReloadState_MindEnergy				( state:GetStatePerWeapon( WEAPONTYPE_MIND_ENERGY			) );
	ReloadState_SubMachineGun			( state:GetStatePerWeapon( WEAPONTYPE_SUBMACHINE_GUN		) );
	ReloadState_MachineGun				( state:GetStatePerWeapon( WEAPONTYPE_MACHINE_GUN			) );
	ReloadState_Rifle					( state:GetStatePerWeapon( WEAPONTYPE_RIFLE					) );
	ReloadState_MineLauncher			( state:GetStatePerWeapon( WEAPONTYPE_MINE_LAUNCHER			) );
	ReloadState_Revolver				( state:GetStatePerWeapon( WEAPONTYPE_REVOLVER				) );
	ReloadState_SMG2					( state:GetStatePerWeapon( WEAPONTYPE_SMG2					) );
	ReloadState_Cannonade				( state:GetStatePerWeapon( WEAPONTYPE_CANNONADE				) );
	ReloadState_MinStorm				( state:GetStatePerWeapon( WEAPONTYPE_MIND_STROM			) );
	ReloadState_Card					( state:GetStatePerWeapon( WEAPONTYPE_CARD					) );
	ReloadState_MG2						( state:GetStatePerWeapon( WEAPONTYPE_MG2					) );
	ReloadState_SMG3					( state:GetStatePerWeapon( WEAPONTYPE_SMG3					) );
	ReloadState_Revolver2				( state:GetStatePerWeapon( WEAPONTYPE_REVOLVER2				) );
	ReloadState_SMG4					( state:GetStatePerWeapon( WEAPONTYPE_SMG4					) );
	ReloadState_MindOrora				( state:GetStatePerWeapon( WEAPONTYPE_MIND_ORORA			) );
	ReloadState_AIRGUN				( state:GetStatePerWeapon( WEAPONTYPE_AIR_GUN			) );
	ReloadState_SMG2				( state:GetStatePerWeapon( WEAPONTYPE_DEFFERED_TEMP			) );
	ReloadState_StandardRailGun					( state:GetStatePerWeapon( WEAPONTYPE_STANDARD_RAILGUN					) );
	ReloadState_DualGun					( state:GetStatePerWeapon( WEAPONTYPE_DUAL_GUN					) );

	-- ���콺 ������ MK2
	ReloadState_MG2						( state:GetStatePerWeapon( WEAPONTYPE_GAUSS_RIFLE_MK2	) );	

	-- ���� ��ó
	ReloadState_RocketLauncher			( state:GetStatePerWeapon( WEAPONTYPE_ROCKET_LAUNCHER		) );
	
	-- ���Ʈ ������ ����ũ
	ReloadState_ASSULT_RIFLE_UNIQUE		( state:GetStatePerWeapon( WEAPONTYPE_ASSULT_RIFLE_UNIQUE	) );  
	
	-- ���ϰ� ����ũ ��ƾ��ƽ
	ReloadState_Unipue_MARTINSTICK		( state:GetStatePerWeapon( WEAPONYTPE_RAIL_MARTINSTICK	) );  
	
	-- ���ε� ��ũ ����ũ
	ReloadState_MinStorm_Unique			( state:GetStatePerWeapon( WEAPONTYPE_MIND_STROM_UNIQUE			) );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_RELOAD_INSTALL
-------------------------------------------------------------------------------------------------------------
function ActorState_Reload_Install( state )
	
	ReloadState_SMG2				( state:GetStatePerWeapon( WEAPONTYPE_DEFFERED_TEMP			) );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1
-------------------------------------------------------------------------------------------------------------
function UseWeapon1( state )

	UseWeapon1State_AimedShotAttack		( state:GetStatePerWeapon( WEAPONTYPE_RIFLE					) );
	UseWeapon1State_SubMachineGunAttack	( state:GetStatePerWeapon( WEAPONTYPE_SUBMACHINE_GUN		) );
	UseWeapon1State_MachineGunAttack	( state:GetStatePerWeapon( WEAPONTYPE_MACHINE_GUN			) );
	UseWeapon1State_MindEnergy1			( state:GetStatePerWeapon( WEAPONTYPE_MIND_ENERGY			) );
	UseWeapon1State_MineLauncher		( state:GetStatePerWeapon( WEAPONTYPE_MINE_LAUNCHER			) );
	UseWeapon1State_SentryGunBuilder	( state:GetStatePerWeapon( WEAPONTYPE_SENTRYGUN_BUILDER		) );
	UseWeapon1State_Revolver			( state:GetStatePerWeapon( WEAPONTYPE_REVOLVER				) );
	UseWeapon1State_SMG2				( state:GetStatePerWeapon( WEAPONTYPE_SMG2					) );
	UseWeapon1State_Cannonade			( state:GetStatePerWeapon( WEAPONTYPE_CANNONADE				) );
	UseWeapon1State_MindStorm			( state:GetStatePerWeapon( WEAPONTYPE_MIND_STROM			) );
	UseWeapon1State_SentiwallBuilder	( state:GetStatePerWeapon( WEAPONTYPE_SENTIWALL_BUILDER		) );
	UseWeapon1State_SentinelBuilder		( state:GetStatePerWeapon( WEAPONTYPE_SENTINEL_BUILDER		) );
	UseWeapon1State_Card				( state:GetStatePerWeapon( WEAPONTYPE_CARD					) );
	UseWeapon1State_MG2					( state:GetStatePerWeapon( WEAPONTYPE_MG2					) );
	UseWeapon1State_AssassinClaw		( state:GetStatePerWeapon( WEAPONTYPE_ASSASSIN_CLAW		) );
	UseWeapon1State_Revolver2			( state:GetStatePerWeapon( WEAPONTYPE_REVOLVER2				) );
	UseWeapon1State_SMG4				( state:GetStatePerWeapon( WEAPONTYPE_SMG4					) );
	UseWeapon1State_SMG3Gun				( state:GetStatePerWeapon( WEAPONTYPE_SMG3					) );
	UseWeapon1State_MindOrora1			( state:GetStatePerWeapon( WEAPONTYPE_MIND_ORORA			) );
	UseWeapon1State_AIRGUN				( state:GetStatePerWeapon( WEAPONTYPE_AIR_GUN			) );
	UseWeapon1State_SpyDagger			( state:GetStatePerWeapon( WEAPONTYPE_SPYDAGGER				) );
	UseWeapon1State_SMG2				( state:GetStatePerWeapon( WEAPONTYPE_DEFFERED_TEMP					) );
	UseWeapon1State_StandardAimedShotAttack		( state:GetStatePerWeapon( WEAPONTYPE_STANDARD_RAILGUN					) );
	
	--!!! ���� ��
	Attack_NORMAL_RenewalDualMagnum( state:GetStatePerWeapon( WEAPONTYPE_DUAL_GUN ) );
	
	-- ���̾� ����
	ANI_IRONBOOTS_Dash_Kick_Attack( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS ) );
	
	-- ���콺 ������ MK2
	ANI_GaussRifleMK2_Standard	( state:GetStatePerWeapon( WEAPONTYPE_GAUSS_RIFLE_MK2		) );
	
	-- ���� ��ó
	ANI_UseWeapon1State_RocketLauncher ( state:GetStatePerWeapon( WEAPONTYPE_ROCKET_LAUNCHER ) );

	-- ������ ���ö���
--	ANI_LeftAttack_EnergySupplyBuilder( state:GetStatePerWeapon( WEAPONTYPE_ENERGY_SUPPLY_BUILDER		));
	
	-- ���Ʈ ������ ����ũ
	UseWeapon1State_ASSULT_RIFLE_UNIQUE( state:GetStatePerWeapon( WEAPONTYPE_ASSULT_RIFLE_UNIQUE		));
	
	-- ���ϰ� ����ũ ��ƾ��ƽ
	UseWeapon1State_RAIL_MARTINSTICK( state:GetStatePerWeapon( WEAPONYTPE_RAIL_MARTINSTICK		));
	
	-- ���ε� ��ũ ����ũ
	UseWeapon1State_MindStorm_Unique ( state:GetStatePerWeapon( WEAPONTYPE_MIND_STROM_UNIQUE	) );
	
	-- ����� ����ũ
	UseWeapon1State_AIRGUN_Unique	( state:GetStatePerWeapon( WEAPONTYPE_AIR_GUN			) );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_INSTALL
-------------------------------------------------------------------------------------------------------------
function UseWeapon1Install( state )
	
	UseWeapon1State_SMG2				( state:GetStatePerWeapon( WEAPONTYPE_DEFFERED_TEMP					) );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2
-------------------------------------------------------------------------------------------------------------
function UseWeapon2( state )

	UseWeapon2State_PlasmaSword			( state:GetStatePerWeapon( WEAPONTYPE_PLASMA_SWORD		) );
	-- UseWeapon2State_MindEnergy2			( state:GetStatePerWeapon( WEAPONTYPE_MIND_ENERGY			) );
	UseWeapon2State_CounterSwordGuard	( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD			) );
	-- UseWeapon2State_MindStorm			( state:GetStatePerWeapon( WEAPONTYPE_MIND_STROM			) );
	UseWeapon2State_BatSword			( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD			) );
	UseWeapon2State_KatanaSword			( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD		) );
	-- UseWeapon1State_MindOrora2			( state:GetStatePerWeapon( WEAPONTYPE_MIND_ORORA			) );

	UseWeapon2State_Double				( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD		) );
	UseWeapon2State_Breaker			( state:GetStatePerWeapon( WEAPONTYPE_BREAKER		) );
	
	UseWeapon2State_SpyDagger			( state:GetStatePerWeapon( WEAPONTYPE_SPYDAGGER					) );
	UseWeapon2State_SigmaBladeWeaponChange		( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE					) );
	UseWeapon2State_magmaBladeWeaponChange		( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE					) );
	UseWeapon2BackDash_Katana_A_Sword	( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD		) );
	
	-- ��ų� ������
	StrongUpperCutAttack_DEATHSCYTHE            ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );
	
	-- ����
	Attack_ROLLING_RenewalDualMagnum( state:GetStatePerWeapon( WEAPONTYPE_DUAL_GUN ) );
	
	-- ���̾� ����
	ANI_IRONBOOTS_Boost_Dash_Attack( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS ) );

    -- ���콺������MK2
	ANI_GaussRifleMK2_MultiShot	( state:GetStatePerWeapon( WEAPONTYPE_GAUSS_RIFLE_MK2 ) );

	-- ����� ����
	UseWeapon2State_VirtualShieldGuard	( state:GetStatePerWeapon( WEAPONTYPE_VIRTUAL_SHIELD ) );
	
	-- ��ų� ����ũ ������
	StrongUpperCutAttack_DEATHSCYTHE_Unique       ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );

	-- �۸�ġ ���� �ñ׸� ���̵�
	UseWeapon2State_GlitchJoySigmaBladeWeaponChange		( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE ) );
	
	-- ����Ż ��ũ ������ũ
	UseWeapon2State_VitalShock ( state:GetStatePerWeapon( WEAPONTYPE_VITAL_SHOCK			) );
	
	-- ���ϰ�
	UseWeapon2State_AimedShotAttack		( state:GetStatePerWeapon( WEAPONTYPE_RIFLE					) );

	-- ����ũ ���ϰ� ��¡
	UseWeapon2State_RAIL_MARTINSTICK		( state:GetStatePerWeapon( WEAPONYTPE_RAIL_MARTINSTICK ) );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2_INSTALL
-------------------------------------------------------------------------------------------------------------
function UseWeapon2Install( state )

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_FLY
-------------------------------------------------------------------------------------------------------------
function Skill_Fly( state )

	local index = 0;
	local ANIMPARAMLIST_BEGIN			= index; index = index + 1;
	local ANIMPARAMLIST_STANDBY			= index; index = index + 1;
	local ANIMPARAMLIST_RISE_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_RISE_LOOP		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "M0000",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_STANDBY					):SetAnim( "M0001",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RISE_BEGIN				):SetAnim( "M0002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RISE_LOOP					):SetAnim( "M0001",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_ANCHORING
-------------------------------------------------------------------------------------------------------------
function Skill_Anchoring( state )

	--state:AddSequence( 1, "Resources/Effects/skill_anchoring_start.seq", "", 0, 2500 );

	local index = 0;
	local ANIMPARAMLIST_AIMING		= index; index = index + 1;
	local ANIMPARAMLIST_SHOT		= index; index = index + 1;
	local ANIMPARAMLIST_WAITING		= index; index = index + 1;
	local ANIMPARAMLIST_PULLING		= index; index = index + 1;
	local ANIMPARAMLIST_DROP		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_AIMING					):SetAnim( "L0002",		0,	200,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHOT						):SetAnim( "L0000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_WAITING					):SetAnim( "L0002",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_PULLING					):SetAnim( "L0001",		0,	500,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DROP						):SetAnim( "00065",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_FASTRUN
-------------------------------------------------------------------------------------------------------------
function ActorState_FastRun( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_fastrun.ogg", "Resources/Sound/voice_girl_fastrun.ogg", "Bip01", 0, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/voice_man_fastrun.ogg", "Resources/Sound/voice_girl_fastrun.ogg", "Bip01", 0, 2500 );

    --- ���̾� ������ �����Ǿ� ���۵ǵ��� ��...
    state:SetAniPlaySpeed_IronBoots( 0.5, 1.0 ); -- ù��°�� Ghost ����(��뿡�� �������� ��), �ι�°�� �ڱ� �ڽ� ��� �ӵ�...
    ---

	local index = 0;
	local ANIMPARAMLIST_NORMAL		        = index; index = index + 1;
	local ANIMPARAMLIST_IRON_BOOTS_NORMAL   = index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL			):SetAnim( "00068",	0, 200,	0, LOOP_TRUE, 1.0, RESET_TRUE );
	state:GetAnimParam( ANIMPARAMLIST_IRON_BOOTS_NORMAL ):SetAnim( "IB068", 0, 200, 0, LOOP_TRUE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_STEALTH
-------------------------------------------------------------------------------------------------------------
function Skill_Stealth( state )

	state:AddSequence( 0, "Resources/Effects/skill_hacker_invisibility.seq", "", 00, 2500 );


	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "J0000",		0,	1000,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_SHIELD
-------------------------------------------------------------------------------------------------------------
function Skill_Shield( state )

	local index = 0;
	local ANIMPARAMLIST_BEGIN				= index; index = index + 1;
	local ANIMPARAMLIST_END					= index; index = index + 1;
	local ANIMPARAMLIST_IRON_BOOTS_BEGIN	= index; index = index + 1;
	local ANIMPARAMLIST_IRON_BOOTS_END		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_BEGIN						):SetAnim( "I0003",		0,	300,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_END						):SetAnim( "I0004",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);

	-- �Ϲ� ���� ��
	
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "I0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

	-- IRON BOOTS ���� ����
	
	state:GetAnimParam( ANIMPARAMLIST_IRON_BOOTS_BEGIN	):SetAnim( "I0003",		0,	300,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_IRON_BOOTS_END	):SetAnim( "I0004",		0,	1000,	0,	LOOP_TRUE,	1.0, RESET_TRUE	);
	
	lowerPartStateSet = state:GetLowerPartStateSet( 1 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "IB008_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "IB009_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "IB010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "IB011_1", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "IB012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "IB013", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "IB014", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "IB015", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "IB000", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );	
	
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_WALL_CREATION
-------------------------------------------------------------------------------------------------------------
function Skill_WallCreation( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "I0000",		750,	500,	1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "H0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "H0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "H0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "H0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "H0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "H0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "H0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "H0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "I0000", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_BIND
-------------------------------------------------------------------------------------------------------------
function Skill_Bind( state )

	--state:AddSequence( 0, "Resources/Effects/skill_bind1.seq", "Resources/Sound/press_shot.ogg", 0, 2500 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_RECOVERY	= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "S0000",		0,	300,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RECOVERY					):SetAnim( "S0001",		0,	300,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "I0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_METALIC
-------------------------------------------------------------------------------------------------------------
function Skill_Metalic( state )

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_LOOP		= index; index = index + 1;
	local ANIMPARAMLIST_RECOVERY	= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "U0000",		0,	300,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LOOP						):SetAnim( "U0001",		0,	300,	0,	LOOP_TRUE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RECOVERY					):SetAnim( "U0002",		0,	300,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_BERSERK
-------------------------------------------------------------------------------------------------------------
function Skill_Berserk( state )

	state:AddSoundBySex( "Resources/Sound/berserk_male.ogg", "Resources/Sound/berserk_female.ogg", "Bip01", 0, 2500 );

	state:AddSequence( 0, "Resources/Effects/skill_berserk1.seq", "", 0, 2500 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "T0000",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_TEMP_0
-------------------------------------------------------------------------------------------------------------
function Skill_Temp0( state )	
	
	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );
	
	state:AddSequence( 0, "Resources/Effects/skill_hacker_invisibility.seq", "", 00, 2500 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC008",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "H0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "H0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "H0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "H0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "H0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "H0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "H0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "H0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "S0000", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_TEMP_1    : sp burn
-------------------------------------------------------------------------------------------------------------
function Skill_Temp1( state )	

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );
	
	state:AddSequence( 0, "Resources/Effects/skill_hacker_invisibility.seq", "", 00, 2500 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC008",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "H0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "H0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "H0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "H0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "H0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "H0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "H0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "H0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "S0000", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_TEMP_2
-------------------------------------------------------------------------------------------------------------
function Skill_Temp2( state )	

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );
	
	state:AddSequence( 0, "Resources/Effects/skill_hacker_invisibility.seq", "", 00, 2500 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC008",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "H0004", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "H0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "H0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "H0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "H0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "H0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "H0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "H0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "S0000", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SKILL_TEMP_3
-------------------------------------------------------------------------------------------------------------
function Skill_Temp3( state )	

end



-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_WEAK
-------------------------------------------------------------------------------------------------------------
function UseWeapon1_Weak( state )

	SwordAtkWeakState_PlasmaSword				( state:GetStatePerWeapon( WEAPONTYPE_PLASMA_SWORD			) );
	SwordAtkAfterDash1State_CounterSword		( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD			) );
	SwordAtkStrongState_BatSword				( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD				) );
	UseWeapon1State_KatanaSword					( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD			) );
	SwordAtkAfterDash1State_DoubleSword			( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD			) );
	SwordAtkAfterDash1State_Breaker				( state:GetStatePerWeapon( WEAPONTYPE_BREAKER				) );
	SwordAtkAfterDash1State_SigmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	SwordAtkAfterDash1State_magmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	SwordAtkAfterDash1State_Katana_A_Sword		( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD		) );
	
	-- �ű� ���� ��ų�
	FirstBasicAttack_DEATHSCYTHE                ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE          ) );
	
	ANI_IRONBOOTS_First_Kick_Attack             ( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS            ) );

	-- ����� ��Ŭ
	SwordAtkAfterDash1State_CounterSword		( state:GetStatePerWeapon( WEAPONTYPE_DEMONIC_KNUCKLE		) );

	-- ����� ����
	SwordAtkAfterDash1State_VirtualShield		( state:GetStatePerWeapon( WEAPONTYPE_VIRTUAL_SHIELD ) );
	
	-- �űԹ��� ��ų� ����ũ
	FirstBasicAttack_DEATHSCYTHE_Unique         ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE          ) );
	
	-- �۸�ġ ���� �ñ׸� ���̵�
	SwordAtkAfterDash1State_GlitchJoySigmaBlade	( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );	

	-- ����Ż ��ũ ������ũ
	UseWeapon1WeakState_VitalShock			( state:GetStatePerWeapon( WEAPONTYPE_VITAL_SHOCK			) );

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_STRONG
-------------------------------------------------------------------------------------------------------------
function UseWeapon1_Strong( state )

	SwordAtkStrongState_PlasmaSword				( state:GetStatePerWeapon( WEAPONTYPE_PLASMA_SWORD			) );
	SwordAtkCounterAttack_CounterSword			( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD			) );
	SwordAtkStrongState_BatSword				( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD				) );
--	SwordAtkStrongState_KatanaSword				( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD			) );	

	SwordAtkStrongState_Breaker					( state:GetStatePerWeapon( WEAPONTYPE_BREAKER				) );
	SwordAtkCounterAttack_SigmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	SwordAtkCounterAttack_magmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	SwordAtkStrongState_Katana_A_Sword			( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD		) );
	
	-- ��ų� Ư�� ����
	SpecialAttack_DEATHSCYTHE                   ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );
	
	-- ���̾� ����
	ANI_IRONBOOTS_Upper_Kick_Attack             ( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS ) );
	
	-- ����� ����
	SwordAtkCounterAttack_VirtualShield			( state:GetStatePerWeapon( WEAPONTYPE_VIRTUAL_SHIELD 		) );
	
	-- ��ų� ����ũ Ư�� ����
	SpecialAttack_DEATHSCYTHE_Unique            ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );
	
	-- �۸�ġ ���� �ñ׸� ���̵�
	SwordAtkCounterAttack_GlitchJoySigmaBlade	( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
	
	-- ����Ż ��ũ ������ũ
	UseWeapon1StrongState_VitalShock			( state:GetStatePerWeapon( WEAPONTYPE_VITAL_SHOCK			) );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_JUMP
-------------------------------------------------------------------------------------------------------------
function UseWeapon1_Jump( state )

	SwordJumpAtkState_PlasmaSword				( state:GetStatePerWeapon( WEAPONTYPE_PLASMA_SWORD			) );
	SwordJumpAtkState_CounterSword				( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD			) );
	SwordJumpAtkState_BatSword				( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD				) );
	SwordJumpAtkState_KatanaSword				( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD			) );
--	SwordJumpAtkState_SpyDagger				( state:GetStatePerWeapon( WEAPONTYPE_SPYDAGGER				) );
	SwordJumpAtkState_DoubleSword				( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD			) );
	SwordJumpAtkState_Breaker				( state:GetStatePerWeapon( WEAPONTYPE_BREAKER			) );
	SwordJumpAtkState_SigmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	SwordJumpAtkState_Katana_A_Sword		( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD	) );
	SwordJumpAtkState_magmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE			) );
	
	-- ��ų� ���� ����
	JumpAttack_DEATHSCYTHE                  ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );
	
	-- ���̾� ����
	ANI_IRONBOOTS_Jump_Smash_Kick_Attack         ( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS ) );

	-- ���߾� �ǵ�
	SwordJumpAtkState_VirtualShield				( state:GetStatePerWeapon( WEAPONTYPE_VIRTUAL_SHIELD ) );
	
	-- ��ų� ����ũ ���� ����
	JumpAttack_DEATHSCYTHE_Unique               ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );
	
	-- �۸�ġ ���� �ñ׸� ���̵�
	SwordJumpAtkState_GlitchJoySigmaBlade		( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );

	-- ����Ż ��ũ ������ũ
	UseWeapon1JumpState_VitalShock			( state:GetStatePerWeapon( WEAPONTYPE_VITAL_SHOCK			) );
	
	SwordJumpAtkState_PlasmaSword_fish				( state:GetStatePerWeapon( WEAPONTYPE_PLASMA_SWORD			) );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_STRONG1
-------------------------------------------------------------------------------------------------------------
function UseWeapon1_Strong1( state )

	SwordAtkStrong1State_PlasmaSword			( state:GetStatePerWeapon( WEAPONTYPE_PLASMA_SWORD			) );
	SwordAtkStrong1State_BatSword				( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD				) );
--	SwordAtkStrong1Stat_KatanaSword				( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD			) );
	UseWeapon1Strong1State_VitalShock			( state:GetStatePerWeapon( WEAPONTYPE_VITAL_SHOCK			) );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK2
-------------------------------------------------------------------------------------------------------------
function UseWeapon1_Attack2( state )

	SwordAtkAfterDash2State_CounterSword			( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD		) );
	SwordAtkAfterDash2State_KatanaSword			( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD		) );
	SwordAtkAfterDash2State_Card				( state:GetStatePerWeapon( WEAPONTYPE_CARD				) );
	UseWeapon1Attack2State_BatSword				( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD			) );
	SwordAtkAfterDash2State_DoubleSword			( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD			) );
	SwordAtkAfterDash2State_SigmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
	SwordAtkAfterDash2State_magmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
	SwordAtkAfterDash2State_Katana_A_Sword		( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD		) );
	UseWeapon2State_DualGunAttack				( state:GetStatePerWeapon( WEAPONTYPE_DUAL_GUN		) );
	
	-- �ű� ���� ��ų�
    SecondBasicAttack_DEATHSCYTHE               ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );
    
    -- ���̾� ����
    ANI_IRONBOOTS_Second_Kick_Attack            ( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS ) );

	-- ���߾� �ǵ�
	SwordAtkAfterDash2State_VirtualShield(state:GetStatePerWeapon( WEAPONTYPE_VIRTUAL_SHIELD ) );
	
	-- �ű� ���� ��ų� ����ũ
    SecondBasicAttack_DEATHSCYTHE_Unique        ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );
	
	-- �۸�ġ ���� �ñ׸� ���̵�
	SwordAtkAfterDash2State_GlitchJoySigmaBlade	( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK3
-------------------------------------------------------------------------------------------------------------
function UseWeapon1_Attack3( state )

	SwordAtkAfterDash3State_CounterSword			( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD		) );
	SwordAtkAfterDash3State_KatanaSword			( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD		) );
	SwordAtkAfterDash3State_Card				( state:GetStatePerWeapon( WEAPONTYPE_CARD				) );
	UseWeapon1Attack3State_BatSword				( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD			) );

	SwordAtkAfterDash3State_DoubleSword			( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD			) );
	SwordAtkAfterDash3State_SigmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
	SwordAtkAfterDash3State_magmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
	SwordAtkAfterDash3State_Katana_A_Sword		( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD		) );
	UseWeapon3State_DualGunAttack				( state:GetStatePerWeapon( WEAPONTYPE_DUAL_GUN		) );
	
	-- �ű� ���� ��ų�
	ThirdBasicAttack_DEATHSCYTHE                ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );
	
	-- ���̾� ����
	ANI_IRONBOOTS_Third_Kick_Attack             ( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS ) );

	-- ���߾� �ǵ�
	SwordAtkAfterDash3State_VirtualShield(state:GetStatePerWeapon( WEAPONTYPE_VIRTUAL_SHIELD ) );
	
	-- �ű� ���� ��ų� ����ũ
	ThirdBasicAttack_DEATHSCYTHE_Unique         ( state:GetStatePerWeapon( WEAPONTYPE_DEATH_SCYTHE ) );
	
	-- �۸�ġ ���� �ñ׸� ���̵�
	SwordAtkAfterDash3State_GlitchJoySigmaBlade	( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK4
-------------------------------------------------------------------------------------------------------------
function UseWeapon1_Attack4( state )

	SwordAtkAfterDash4State_CounterSword			( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD		) );
	SwordAtkAfterDash4State_KatanaSword			( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD		) );
	SwordAtkAfterDash4State_Card				( state:GetStatePerWeapon( WEAPONTYPE_CARD				) );
	UseWeapon1Attack4State_BatSword				( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD			) );

	SwordAtkAfterDash4State_DoubleSword			( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD			) );
	SwordAtkAfterDash4State_Breaker				( state:GetStatePerWeapon( WEAPONTYPE_BREAKER			) );
	SwordAtkAfterDash4State_SigmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
	UseWeapon2Charge_Katana_A_Sword				( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD			) );
	SwordAtkAfterDash4State_magmaBlade			( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
	
	-- ���̾� ����
	ANI_IRONBOOTS_Fourth_Kick_Attack            ( state:GetStatePerWeapon( WEAPONTYPE_IRON_BOOTS ) );

	-- ���߾� �ǵ�
	SwordAtkAfterDash4State_VirtualShield		( state:GetStatePerWeapon( WEAPONTYPE_VIRTUAL_SHIELD ) );
	
	-- �۸�ġ ���� �ñ׸� ���̵�
	SwordAtkAfterDash4State_GlitchJoySigmaBlade	( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE ) );
end
-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_ATTACK5
-------------------------------------------------------------------------------------------------------------
function UseWeapon1_Attack5( state )

	SwordAtkAfterDash5State_KatanaSword			( state:GetStatePerWeapon( WEAPONTYPE_KATANA_SWORD		) );
	SwordAtkAfterDash5State_Card				( state:GetStatePerWeapon( WEAPONTYPE_CARD			) );
	UseWeapon1Attack5State_BatSword				( state:GetStatePerWeapon( WEAPONTYPE_BAT_SWORD			) );

	SwordAtkAfterDash5State_DoubleSword			( state:GetStatePerWeapon( WEAPONTYPE_DOUBLE_SWORD			) );
	SwordAtkAfterDash5State_Breaker				( state:GetStatePerWeapon( WEAPONTYPE_BREAKER			) );
	UseWeapon2Dash_Katana_A_Sword				( state:GetStatePerWeapon( WEAPONTYPE_KATANA_A_SWORD		) );
	
end
-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_COUNTERATTACK
-------------------------------------------------------------------------------------------------------------
function UseWeapon1_CounterAttack( state )

	SwordAtkCounterAttack_CounterSword		( state:GetStatePerWeapon( WEAPONTYPE_COUNTER_SWORD		) );
	SwordAtkCounterAttack_SigmaBlade		( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
	SwordAtkCounterAttack_magmaBlade		( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
	
	-- �۸�ġ ���� �ñ׸� ���̵�
	SwordAtkCounterAttack_GlitchJoySigmaBlade		( state:GetStatePerWeapon( WEAPONTYPE_SIGMA_BLADE		) );
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2_WEAK
-------------------------------------------------------------------------------------------------------------
function UseWeapon2_Weak( state )

	UseWeapon2WeakState_SMG3Sword			( state:GetStatePerWeapon( WEAPONTYPE_SMG3					) );
	UseWeapon1State_StandardAimedShotZoomIn	( state:GetStatePerWeapon( WEAPONTYPE_STANDARD_RAILGUN		) );
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2_STRONG
-------------------------------------------------------------------------------------------------------------
function UseWeapon2_Strong( state )

	UseWeapon2StrongState_SMG3Sword			( state:GetStatePerWeapon( WEAPONTYPE_SMG3					) );
	UseWeapon1State_StandardAimedShotZoomIn	( state:GetStatePerWeapon( WEAPONTYPE_STANDARD_RAILGUN		) );	
	
end

