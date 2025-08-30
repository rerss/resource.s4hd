require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
		���ε� ��ũ, ���ε� ������
]]--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--[[
		InitLua1( u32 uiBeginTime
				, u32 uiMisFiringTime
				, u32 uiEndTime
				, float fHeightOffset
				, bool bOneShot
				, u32 uiCoolTime
				);
		
		InitLua2( u32 iCurrentWeaponType
				, s32 iAttackAttribID	
				, u32 eLimitedTarget	--�ǾƱ���	0 : ��, 1 : �Ʊ�, 2: ����
				);
	
]]--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--[[
	���ε� ��ũ
]]--
-------------------------------------------------------------------------------
function MindAttack(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, true, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_STROM, ATTACKATTRIB_MINDSTORM_ATTACK1, 0 );
	-- Ÿ���� ���ΰ�?
	STATE:SetFindEnemy( true );
	-- �� Ž���� �ִ� �Ÿ�, ���� ( ���� 1: ���ѰŸ�, ����2: ���� ���� ) WEAPON.xml�� RANGE�� �����
	STATE:SetFindLimit( 2000, 45 );	
	-- Ž���� Ÿ���� �����ϴ� �Ÿ�, ���� ( ����1: ���ѰŸ�, ����2: ���� ) WEAPON.xml�� RANGE�� �����
	STATE:SetRangeLimit( 2000, 45 );
	--[[
		������, ���� ���ϴ� ���� 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = ������ ����( ������)
	]]
	--������ �ּ�, �ִ� 
	STATE:SetDamageHP( 0, 15 );
	-- �� �ּ�, �ִ�
	STATE:SetHealingHP( 0, 3 );--0.375
	
end

-------------------------------------------------------------------------------
--[[
	���ε� ������
]]--
-------------------------------------------------------------------------------
function MindHeal(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, false, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_ENERGY, ATTACKATTRIB_MIND_ENERGY, 1 );
	
	-- Ÿ���� ���ΰ�?
	STATE:SetFindEnemy( false );
	-- �� Ž���� �ִ� �Ÿ�, ���� ( ���� 1: ���ѰŸ�, ����2: ���� ���� ) ������ WEAPON.xml�� RANGE�� �����
	STATE:SetFindLimit( 3000, 45 );	
	-- Ž���� Ÿ���� �����ϴ� �Ÿ�, ���� ( ����1: ���ѰŸ�, ����2: ���� ) ������ WEAPON.xml�� RANGE�� �����
	STATE:SetRangeLimit( 3000, 45 );
	
	--[[
		������, ���� ���ϴ� ���� 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = ������ ����( ������)
	]]
	
	--������ �ּ�, �ִ� 
	STATE:SetDamageHP( 0, 0 );
	-- �� �ּ�, �ִ�
	STATE:SetHealingHP( 0, 15 );
	
end

-------------------------------------------------------------------------------
--[[

	�ٸ��� ��ũ
	Ÿ���� ���� ���ε� ��ũ�� ���� ��( WEAPONTYPE_MIND_STROM ) 
]]--
-------------------------------------------------------------------------------
function MindAttackAlice(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, true, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_STROM, ATTACKATTRIB_MINDSTORM_ATTACK1, 0 );
	-- Ÿ���� ���ΰ�?
	STATE:SetFindEnemy( true );
	-- �� Ž���� �ִ� �Ÿ�, ���� ( ���� 1: ���ѰŸ�, ����2: ���� ���� ) WEAPON.xml�� RANGE�� �����
	STATE:SetFindLimit( 2000, 45 );	
	-- Ž���� Ÿ���� �����ϴ� �Ÿ�, ���� ( ����1: ���ѰŸ�, ����2: ���� ) WEAPON.xml�� RANGE�� �����
	STATE:SetRangeLimit( 2000, 45 );
	--[[
		������, ���� ���ϴ� ���� 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = ������ ����( ������)
	]]
	--������ �ּ�, �ִ� 
	STATE:SetDamageHP( 0, 15 );
	-- �� �ּ�, �ִ�
	STATE:SetHealingHP( 0, 3 ); --0.375
	
end

-------------------------------------------------------------------------------
--[[
	���ε� ������ ����ũ
	 ���� ť��
]]--
-------------------------------------------------------------------------------
function MindHealUnique(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, false, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_ENERGY, ATTACKATTRIB_MIND_ENERGY, 1 );
	
	-- Ÿ���� ���ΰ�?
	STATE:SetFindEnemy( false );
	-- �� Ž���� �ִ� �Ÿ�, ���� ( ���� 1: ���ѰŸ�, ����2: ���� ���� ) ������ WEAPON.xml�� RANGE�� �����
	STATE:SetFindLimit( 3000, 45 );	
	-- Ž���� Ÿ���� �����ϴ� �Ÿ�, ���� ( ����1: ���ѰŸ�, ����2: ���� ) ������ WEAPON.xml�� RANGE�� �����
	STATE:SetRangeLimit( 3000, 45 );
	
	--[[
		������, ���� ���ϴ� ���� 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = ������ ����( ������)
	]]
	
	--������ �ּ�, �ִ� 
	STATE:SetDamageHP( 0, 0 );
	-- �� �ּ�, �ִ�
	STATE:SetHealingHP( 0, 15 );
	
end

-------------------------------------------------------------------------------
--[[
	
	��Ʈ ���� ��������
	-- ���� ���ε� �������� Ÿ���� �ٸ�
	
]]--
-------------------------------------------------------------------------------
function MindHealOrora(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, false, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_ORORA, ATTACKATTRIB_MIND_ENERGY, 1 );	--��Ÿ��
	
	-- Ÿ���� ���ΰ�?
	STATE:SetFindEnemy( false );
	-- �� Ž���� �ִ� �Ÿ�, ���� ( ���� 1: ���ѰŸ�, ����2: ���� ���� ) ������ WEAPON.xml�� RANGE�� �����
	STATE:SetFindLimit( 3000, 45 );	
	-- Ž���� Ÿ���� �����ϴ� �Ÿ�, ���� ( ����1: ���ѰŸ�, ����2: ���� ) ������ WEAPON.xml�� RANGE�� �����
	STATE:SetRangeLimit( 3000, 45 );
	
	--[[
		������, ���� ���ϴ� ���� 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = ������ ����( ������)
	]]
	
	--������ �ּ�, �ִ� 
	STATE:SetDamageHP( 0, 0 );
	-- �� �ּ�, �ִ�
	STATE:SetHealingHP( 0, 15 );
	
end

-------------------------------------------------------------------------------
--[[
	�ַ� ����( ���ο� Ÿ�� )
]]--
-------------------------------------------------------------------------------
function MindAttackUnique(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, true, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_STROM_UNIQUE, ATTACKATTRIB_MINDSTORM_UNIQUE_ATTACK1, 0 );	--��Ÿ��, �� ATTACKATTRIB
	-- Ÿ���� ���ΰ�?
	STATE:SetFindEnemy( true );
	-- �� Ž���� �ִ� �Ÿ�, ���� ( ���� 1: ���ѰŸ�, ����2: ���� ���� ) WEAPON.xml�� RANGE�� �����
	STATE:SetFindLimit( 2000, 45 );	
	-- Ž���� Ÿ���� �����ϴ� �Ÿ�, ���� ( ����1: ���ѰŸ�, ����2: ���� ) WEAPON.xml�� RANGE�� �����
	STATE:SetRangeLimit( 2000, 45 );
	--[[
		������, ���� ���ϴ� ���� 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = ������ ����( ������)
	]]
	--������ �ּ�, �ִ� 
	STATE:SetDamageHP( 0, 15 );
	-- �� �ּ�, �ִ�
	STATE:SetHealingHP( 0, 3 );--0.375
	
end