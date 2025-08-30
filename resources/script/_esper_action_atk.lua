require "Resources/Script/ActorStates_Constants.lua"

------------------------------------------------ ������ �׼� ���� �⺻ --------------------------------------
--STATE:SetStateMinSp( 0 );								-- ������Ʈ ���� ���� �ּ� SP
--STATE:SetCoolTime( 0 );								-- ��Ÿ�� 10000 : 1��
--STATE:SetUseAttack( true ); 							-- ������ ���� ��ų �Ǵ� : ������ ��, ���ϰ��� ������ ���Ƿ� true
--STATE:EnableCameraShake( true, false, 600 );		 	-- ( ��Ŀ��������, �����ΰ�, �غ�ð� );
--STATE:SetCameraShakeFactor1( 200, 50, 30 );			-- ( ����ð�, ȸ���ð�, Ȯ�� );
--STATE:SetCameraShakeFactor2( 10, 60, 2000, 3000 ); 	-- ( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
-------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
-- EsperBeam ȿ��.
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperBeam(  Power  )

	STATE:SetMoveBoxMultiplier( 1.0 );					 -- ( �̵��Ÿ� ���� );
	STATE:EnableCameraShake( true, false, 200 );		 -- ( ��Ŀ��������, �����ΰ�, �غ�ð� );
	STATE:SetCameraShakeFactor1( 200, 50, 30 );			 -- ( ����ð�, ȸ���ð�, Ȯ�� );
	STATE:SetCameraShakeFactor2( 10, 60, 1000, 1500 ); 	 -- ( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
	STATE:SetUseAttack( true ); 						 -- ���� ����ϴ� ������Ĩ Ÿ��

	STATE:SetStateMinSp( 0 ); 							 -- �Ҹ� sp -> xml �� ���� �۾� ����. ( ��ŷ�̽� )
	STATE:SetCoolTime( 120000 ); 							 -- ��Ÿ�� : 60��(60000)

	STATE:InitLua( 700, 300 , true ); 					 -- �ִϸ��̼� Ÿ�� , ������ Ÿ�� , ���鿡���� �ߵ� ����

	STATE:SetEtcSkillStateEnter( true );				 -- �ö��� , ��Ŀ���� ������ ��� ��ų������϶� ĵ�� �� ��ų ��� ����.
	STATE:SetFlyAnchoringStateEnter( false );			 -- �ö��� , ��Ŀ�� ��ų ������� �� ĵ�� �� ��ų ��� ����.

	local range = ACTION:GetRange(); 					 -- Range -> EsperAction.xml ���Ͽ� ����Ǿ����� �ε����� 2��.

    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_UNUSED , ATTACKATTRIB_ESPERSKILL_ESPERBEAM, 300, Power*25, 0 ); 								  -- ( ����Ÿ��, ���ݼӼ�ID, �߻�ð�, ������, �����ۿ����� �߰������� );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3( 0,250,-60 ), MAKEVECTOR3( 0,0,-1 ), range*0.6, range*0.8, range*4.0 ), 1, 1, false );  --�浹 �ڽ� ���� ( �浹����(����/����/�Ÿ�650), 1, 1, �����õ���  );
--  Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3( 0,250,-60 ), MAKEVECTOR3( 0,0,-1 ), range*1.2, range*0.8, range*2.6 ), 1, 1, false );  --�浹 �ڽ� ���� ( �浹����(����/����/�Ÿ�650), 1, 1, �����õ���  );

--  Attack1:AddStunCondition( 1200, 1600, 0, 500 );			-- ���� ( �ּҽð� �ִ�ð� �ּҰŸ� �ִ�Ÿ� ) - �Ÿ������� ���Ͻð�.
--	Attack1:AddBlowCondition( 6000, 800 );			-- ��ο� ����� ����.
--  Attack1:AddPushCondition( 300, 1500, -3000 );

    AddAttack( ATTACKS, Attack1 );
end


-- ������ ���� �ʴ� ȿ���� ��Ʒ� �������� ���� �׽�Ʈ�� ���Ͽ� ��Ʒ� ���� ���� - ���Ŀ� ���� ����
-- EsperAction.xml ���� ���� �ʿ�.
-------------------------------------------------------------------------------------------------------------
-- EsperCoat ȿ��.
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperCoat(  Power  )

	--STATE:SetStealthCancel( true );						 -- ��ų�ߵ��� ����ȭ ���.
	STATE:SetStateMinSp( 10 ); 							 -- �Ҹ� sp -> xml �� ���� �۾� ����. ( ��ŷ�̽� )

	STATE:InitLua( 500, 0, true ); 					 -- �ִϸ��̼� Ÿ�� , ������ Ÿ�� , ���鿡���� �ߵ� ����
	STATE:SetCoolTime( 30000 ); 							 -- ��Ÿ�� : 60�� - 30�ʷ� ����

	STATE:SetEtcSkillStateEnter( true );				 -- �ö��� , ��Ŀ���� ������ ��� ��ų������϶� ĵ�� �� ��ų ��� ����.
	STATE:SetFlyAnchoringStateEnter( false );			 -- �ö��� , ��Ŀ�� ��ų ������� �� ĵ�� �� ��ų ��� ����.

	STATE:SetConditionTime( 5000 );						-- ����� Ÿ�� : 5��

end

-------------------------------------------------------------------------------------------------------------
-- EsperBomb ȿ��.
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperBomb(  Power  )
	-- STATE -> CAttackState

	--STATE:SetDrop( 500, MAKEVECTOR3( 0, -4000, 0 ) ); -- �ι�° ���� : �����ؼ� ���� ���� ����(���⼭�� �Ʒ��� ���� ��´�.)
	STATE:SetMoveBoxMultiplier( 0.5 );		--�̵��Ÿ� 600
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 200, 50, 30 );
	STATE:SetCameraShakeFactor2( 10, 60, 2000, 3000 );
	STATE:SetUseAttack( true ); 						 -- ���� ����ϴ� ������Ĩ Ÿ��
	STATE:SetStateMinSp( 0 ); 							 -- �Ҹ� sp -> xml �� ���� �۾� ����. ( ��ŷ�̽� )

	STATE:SetEtcSkillStateEnter( true );				 -- �ö��� , ��Ŀ���� ������ ��� ��ų������϶� ĵ�� �� ��ų ��� ����.
	STATE:SetFlyAnchoringStateEnter( true );			 -- �ö��� , ��Ŀ�� ��ų ������� �� ĵ�� �� ��ų ��� ����.

	STATE:SetMidAirAttackState( false );				-- ���� , ���� ���� �̺�ȭ ���� true: ���ڸ� / false : �̵�
	STATE:SetIgnoreActorCollision( true );				-- ���� �� ���Ϳ��� �浹 ����

	STATE:InitLua( 1000, 0,  1000 , false );  -- InitLua( u32 uiNormalTime, u32 uiDelayTime , bool bOnlyVStateNormal )

	STATE:SetCoolTime( 60000 );

	local range = ACTION:GetRange(); -- weapon.xlsx -> weapon_limit -> range �� �����. ���� ���⼭ ���� �־ ��.

    Attack1 = CreateCAttack();
  	Attack1:InitAttack1( WEAPONTYPE_UNUSED, ATTACKATTRIB_ESPERSKILL_ESPER_BOMB, 550, Power , 0 ); -- ������ �ڽ� �����ð�
	  Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0,200,0), 800, range*1 ), 1, 1, false  );
  	  Attack1:AddLightningBombMK2Condition(5000, 0.5);  --SP BURN : 5�� / 1=100% / 0.2 = 80% ����
	  Attack1:AddBlowCondition( 1000,4000 );

    AddAttack( ATTACKS, Attack1 );

--		Attack1:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.7, range*0.35, range*0.85, 60 ), 1, 1, false );	-- �� �ʺ� ;  ����(0.25>0.35)-����-����
-- 		MAKEFAN( MAKEVECTOR3(0,80,0), MAKEVECTOR2(0,-1), range*0.8, range*0.7, range*1.7, 60 ), 1, 1, false ����
--		MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.7, range*0.25, range*0.85, 120 ), 1, 1, false

--		Attack2 = CreateCAttack();
-- 		Attack2:InitAttack1( WEAPONTYPE_UNUSED, ATTACKATTRIB_ESPERSKILL_ESPER_BOMB, 550, Power , 0 ); -- ������ �ڽ� �����ð�
--		Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), range*0.5, range*0.85, range*1.2 ), 1, 1, false  );	--����/����/����
-- 		Attack2:AddStunCondition( 1200, 1600, 0, 500 ); -- ����
--	  AddAttack( ATTACKS, Attack2 );

end

-------------------------------------------------------------------------------------------------------------
-- KneeSliding ȿ��.
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperKneeSlide(  Power  )

	STATE:SetMoveBoxMultiplier( 0.65 );					 -- ( �̵��Ÿ� ���� 1.0 = 1300);

	STATE:SetStateMinSp( 25 ); 							 -- �Ҹ� sp 20 - 25�� ����
	STATE:SetCoolTime( 0 );

	STATE:SetEtcSkillStateEnter( true );				 -- �ö��� , ��Ŀ���� ������ ��� ��ų������϶� ĵ�� �� ��ų ��� ����.
	STATE:SetFlyAnchoringStateEnter( false );			 -- �ö��� , ��Ŀ�� ��ų ������� �� ĵ�� �� ��ų ��� ����.

	STATE:SetLotateLimit( false , 0 , 0 );				 -- ī�޶� �����̼� ���� �Լ� ( �����̼����� Ȱ��ȭ����-true ī�޶� ���� ���� / false ī�޶� �������� , X�� ���� , Y�� ���� )
	STATE:SetDirectionLimit( false );					 -- ī�޶� �������� �𷺼� ����. true : �𷺼� ������ false : �𷺼� ���� ǰ.

	STATE:InitLua( 600 , 0 , false ); 					 -- �ִϸ��̼� Ÿ�� , ������ Ÿ�� , ���鿡���� �ߵ� ���� , �ִϸ��̼� Ÿ���� ���� �� �̵��Ÿ��� �þ�� �ȴ�.
end


-------------------------------------------------------------------------------------------------------------
function AttackAttribute_EsperSetSkill()

	-- ������ ��
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_ESPERSKILL_ESPERBEAM );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_10 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_UNUSED ); -- ����Ÿ���� ������ �ƴϹǷ� Unused
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE ); -- ī��Ʈ �������� ������¿� ���� �� �ڽ��� ���� ���ϴ� �� ���� ENABLE : ���� ����, DISABLE : ���� ������ ����
	currAttackAttrib:SetGuardData			( 0 , GUARDCRUSH_ENABLE ); --ī���� �������� ���带 ���� �� �ִ� �� ����  ENABLE : ����, DISABLE : ���� ����
	currAttackAttrib:SetDamageData			( 1, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );
	--(���� ���� �� ������ ���� ��ų �� �ִ� �ð� 1000=1��, ����� �̵��� �����ϴ� �� ����, �Ӹ�/����/�� �� ������ ���� �������� �Դ� �� ����(����� �Ӹ� �ܿ��� ������ ���� �������� �ƴ� ������������ ������ �۾��Ǿ� ����)

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/weapon_mindshock_body.seq", "Resources/Effects/weapon_mindshock_body.seq", "Resources/Sound/rail_blast.ogg", "Resources/Sound/rail_blast.ogg" );
	--(��븦 ������ �� ����ϴ� ������, ���� ������ �� ����ϴ� ������, ��븦 ������ �� ����ϴ� ����, ���� ������ �� ����ϴ� ������)
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "Resources/Sound/bsword_s.ogg" );
	--(����� ���� �� ����ϴ� ������, ����� ���� �� ����ϴ� ����)
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/EsperAction/Esperaction.png", 32, 32 ); -- KillImage & widthSize , HeightSize
	--(��� ų �� ���� ��ܿ� ����ϴ� ������, ������ ������X, ������ ������Y)

	-- ������ ��
	currAttackAttrib	= AttackAttribIndexer:GetAttackAttrib( ATTACKATTRIB_ESPERSKILL_ESPER_BOMB );

	currAttackAttrib:SetDir					( DIR_FRONT, PART_MIDDLE );
	currAttackAttrib:SetPower				( POWER_STRONG, DESTROY_BLASTOBJECT_DAMAGE_50 );
	currAttackAttrib:SetWeaponType			( WEAPONTYPE_UNUSED );
	currAttackAttrib:SetCounterAttack		( COUNTERATTACK_DISABLE );	--���� ������ ������ ���� ������ ����
	currAttackAttrib:SetGuardData			( 0, GUARDCRUSH_ENABLE );	-- ���� ����
	currAttackAttrib:SetDamageData			( 1000, DAMAGEMOVING_DISABLE, DAMAGEBYPART_DISABLE );

	currAttackAttrib:SetDamageSequence		( "Resources/Effects/backattack_sword_s.seq", "Resources/Effects/backattack_sword_s.seq", "Resources/Sound/airgun_blast.ogg", "Resources/Sound/airgun_blast.ogg" );
	currAttackAttrib:SetAttackSequence		( "Resources/Effects/blank_1sec.seq", "" );
	currAttackAttrib:SetKillMessageImage	( "Resources/Image/EsperAction/Esperaction.png", 32, 32 );

end