require "Resources/Script/ActorStates_Constants.lua"

SOCIAL_WIN = 0;
SOCIAL_LOSE = 1;
SOCIAL_CRY = 7;

-------------------------------------------------------------------------------------------------------------
-- 미리보기용 액터 애니메이션
-------------------------------------------------------------------------------------------------------------
function PreviewActorAnimSetting()

	--PreviewActor:SetDefaultAnim( "00029", 1 );
	PreviewActor:SetFemaleDefaultAnim( "00029", 1);
	PreviewActor:SetMaleDefaultAnim( "00074", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_PLASMA_SWORD,		"A0013", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_COUNTER_SWORD,		"R0004", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_VIRTUAL_SHIELD,		"R0004", 1 );	
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SUBMACHINE_GUN,		"D0026", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_REVOLVER,			"Q0000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SMG2,				"W0000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_MACHINE_GUN,			"F0002", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_RIFLE,				"E0018", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_CANNONADE,			"E0018", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SENTRYGUN_BUILDER,	"00029", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SENTIWALL_BUILDER,	"00029", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_MINE_LAUNCHER,		"G0014", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_MIND_ENERGY,			"00029", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_MIND_STROM,			"00029", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_BAT_SWORD,			"A0013", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_KATANA_SWORD,		"X0012", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_CARD,				"Y0000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_MG2,					"Z0000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SENTINEL_BUILDER,	"00029", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_ASSASSIN_CLAW,		"C0011", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SMG3,				"DD000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_REVOLVER2,			"QQ000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SMG4,				"SS000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SPYDAGGER,				"SN002", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_MIND_ORORA,			"00029", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_DOUBLE_SWORD,		"SG003", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_AIR_GUN,				"AW000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SMG2_HOMING,				"W0000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SPARK_RIFLE,				"SP000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_CHAIN_LIGHT_GUN,			"CH000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_BREAKER,		"HM000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_CLASSICRIFLE,			"AS000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_TURRET,				"TR002", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_RESCUEGUN,				"RC000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_SIGMA_BLADE,			"DC000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_KATANA_A_SWORD,		"KT004", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_STANDARD_RAILGUN,	"NS000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_DUAL_GUN,		"DU000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_IRON_BOOTS,		"IB000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_GAUSS_RIFLE_MK2,	"Z0000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_ROCKET_LAUNCHER,	"RL014", 1 );	
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_RESCUEGUN_MK2,	"RC000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_DEMONIC_KNUCKLE,	"KN000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_CHAIN_LIGHT_GUN_MK2,	"CH000", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_ASSULT_RIFLE_UNIQUE,  "AS000_1", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONYTPE_RAIL_MARTINSTICK,  "E0018_1", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_ENERGY_SUPPLY_BUILDER,	"00029_2", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_MIND_STROM_UNIQUE,	"00029", 1 );
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_VITAL_SHOCK,	"C0011", 1 );
	-- 순서를 지켜주세요.
	-- 1. SetAnimWithWeapon
	-- 2. SetAnimByCharacter
	-- 순서로 사용합니다.
	
	-- 디폴트 설정이라고 생각하고 꼭 넣어줍니다.
	PreviewActor:SetAnimWithWeapon( WEAPONTYPE_DEATH_SCYTHE,    "GR000", 1 );
	
	-- 성별에 따른 애니메이션 차이를 두고 싶다면 이것을 사용합니다.
	PreviewActor:SetAnimByCharacter( WEAPONTYPE_DEATH_SCYTHE, "GR000", "GR000_1", true );
	                              -- 무기 타입,               남자,    여자,    성별에 따른 적용 여부

	
	-- 서브타입 애니메이션 적용
	PreviewActor:SetAnimWithWeaponSubType( WEAPONTYPE_EARTH_BOMB,		2050002, "GB014", 1 );
	PreviewActor:SetAnimWithWeaponSubType( WEAPONTYPE_LIGHT_BOMB,		2050003, "GB014", 1 );
	PreviewActor:SetAnimWithWeaponSubType( WEAPONTYPE_EARTH_BOMB,		2050006, "GB014", 1 );
	PreviewActor:SetAnimWithWeaponSubType( WEAPONTYPE_LIGHT_BOMB,		2050007, "GB014", 1 );
	PreviewActor:SetAnimWithWeaponSubType( WEAPONTYPE_EARTH_BOMB,		2050011, "GB014", 1 );
	PreviewActor:SetAnimWithWeaponSubType( WEAPONTYPE_EARTH_BOMB,		2050012, "GB014", 1 );
	-- 글리치 파괴 라이트닝봄버
	PreviewActor:SetAnimWithWeaponSubType( WEAPONTYPE_LIGHT_BOMB,		2050013, "GB014", 1 );
	PreviewActor:SetAnimWithWeaponSubType( WEAPONTYPE_EARTH_BOMB,		2050014, "GB014", 1 );
	
	PreviewActor:SetSocialAnim( SOCIAL_WIN,		"O0000" );
	PreviewActor:SetSocialAnim( SOCIAL_LOSE,	"O0001" );
	PreviewActor:SetSocialAnim( SOCIAL_CRY,		"O0007" );
end
