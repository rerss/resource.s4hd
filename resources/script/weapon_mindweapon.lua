require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
		마인드 쇼크, 마인드 에너지
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
				, u32 eLimitedTarget	--피아구분	0 : 적, 1 : 아군, 2: 전부
				);
	
]]--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--[[
	마인드 쇼크
]]--
-------------------------------------------------------------------------------
function MindAttack(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, true, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_STROM, ATTACKATTRIB_MINDSTORM_ATTACK1, 0 );
	-- 타겟이 적인가?
	STATE:SetFindEnemy( true );
	-- 적 탐색시 최대 거리, 각도 ( 인자 1: 제한거리, 인자2: 제한 각도 ) WEAPON.xml의 RANGE가 적용됨
	STATE:SetFindLimit( 2000, 45 );	
	-- 탐지된 타겟을 유지하는 거리, 각도 ( 인자1: 제한거리, 인자2: 각도 ) WEAPON.xml의 RANGE가 적용됨
	STATE:SetRangeLimit( 2000, 45 );
	--[[
		데미지, 힐량 구하는 공식 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = 데미지 배율( 각도차)
	]]
	--데미지 최소, 최대 
	STATE:SetDamageHP( 0, 15 );
	-- 힐 최소, 최대
	STATE:SetHealingHP( 0, 3 );--0.375
	
end

-------------------------------------------------------------------------------
--[[
	마인드 에너지
]]--
-------------------------------------------------------------------------------
function MindHeal(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, false, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_ENERGY, ATTACKATTRIB_MIND_ENERGY, 1 );
	
	-- 타겟이 적인가?
	STATE:SetFindEnemy( false );
	-- 적 탐색시 최대 거리, 각도 ( 인자 1: 제한거리, 인자2: 제한 각도 ) 기존엔 WEAPON.xml의 RANGE가 적용됨
	STATE:SetFindLimit( 3000, 45 );	
	-- 탐지된 타겟을 유지하는 거리, 각도 ( 인자1: 제한거리, 인자2: 각도 ) 기존엔 WEAPON.xml의 RANGE가 적용됨
	STATE:SetRangeLimit( 3000, 45 );
	
	--[[
		데미지, 힐량 구하는 공식 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = 데미지 배율( 각도차)
	]]
	
	--데미지 최소, 최대 
	STATE:SetDamageHP( 0, 0 );
	-- 힐 최소, 최대
	STATE:SetHealingHP( 0, 15 );
	
end

-------------------------------------------------------------------------------
--[[

	앨리스 쇼크
	타입이 기존 마인드 쇼크와 동일 함( WEAPONTYPE_MIND_STROM ) 
]]--
-------------------------------------------------------------------------------
function MindAttackAlice(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, true, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_STROM, ATTACKATTRIB_MINDSTORM_ATTACK1, 0 );
	-- 타겟이 적인가?
	STATE:SetFindEnemy( true );
	-- 적 탐색시 최대 거리, 각도 ( 인자 1: 제한거리, 인자2: 제한 각도 ) WEAPON.xml의 RANGE가 적용됨
	STATE:SetFindLimit( 2000, 45 );	
	-- 탐지된 타겟을 유지하는 거리, 각도 ( 인자1: 제한거리, 인자2: 각도 ) WEAPON.xml의 RANGE가 적용됨
	STATE:SetRangeLimit( 2000, 45 );
	--[[
		데미지, 힐량 구하는 공식 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = 데미지 배율( 각도차)
	]]
	--데미지 최소, 최대 
	STATE:SetDamageHP( 0, 15 );
	-- 힐 최소, 최대
	STATE:SetHealingHP( 0, 3 ); --0.375
	
end

-------------------------------------------------------------------------------
--[[
	마인드 에너지 유니크
	 매직 큐브
]]--
-------------------------------------------------------------------------------
function MindHealUnique(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, false, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_ENERGY, ATTACKATTRIB_MIND_ENERGY, 1 );
	
	-- 타겟이 적인가?
	STATE:SetFindEnemy( false );
	-- 적 탐색시 최대 거리, 각도 ( 인자 1: 제한거리, 인자2: 제한 각도 ) 기존엔 WEAPON.xml의 RANGE가 적용됨
	STATE:SetFindLimit( 3000, 45 );	
	-- 탐지된 타겟을 유지하는 거리, 각도 ( 인자1: 제한거리, 인자2: 각도 ) 기존엔 WEAPON.xml의 RANGE가 적용됨
	STATE:SetRangeLimit( 3000, 45 );
	
	--[[
		데미지, 힐량 구하는 공식 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = 데미지 배율( 각도차)
	]]
	
	--데미지 최소, 최대 
	STATE:SetDamageHP( 0, 0 );
	-- 힐 최소, 최대
	STATE:SetHealingHP( 0, 15 );
	
end

-------------------------------------------------------------------------------
--[[
	
	하트 오브 프린세스
	-- 기존 마인드 에너지와 타입이 다름
	
]]--
-------------------------------------------------------------------------------
function MindHealOrora(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, false, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_ORORA, ATTACKATTRIB_MIND_ENERGY, 1 );	--새타입
	
	-- 타겟이 적인가?
	STATE:SetFindEnemy( false );
	-- 적 탐색시 최대 거리, 각도 ( 인자 1: 제한거리, 인자2: 제한 각도 ) 기존엔 WEAPON.xml의 RANGE가 적용됨
	STATE:SetFindLimit( 3000, 45 );	
	-- 탐지된 타겟을 유지하는 거리, 각도 ( 인자1: 제한거리, 인자2: 각도 ) 기존엔 WEAPON.xml의 RANGE가 적용됨
	STATE:SetRangeLimit( 3000, 45 );
	
	--[[
		데미지, 힐량 구하는 공식 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = 데미지 배율( 각도차)
	]]
	
	--데미지 최소, 최대 
	STATE:SetDamageHP( 0, 0 );
	-- 힐 최소, 최대
	STATE:SetHealingHP( 0, 15 );
	
end

-------------------------------------------------------------------------------
--[[
	솔로 무기( 새로운 타입 )
]]--
-------------------------------------------------------------------------------
function MindAttackUnique(  OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:InitMindEnergyLua1( 200, 1500, 500, 260, true, 1700 );
	STATE:InitMindEnergyLua2( WEAPONTYPE_MIND_STROM_UNIQUE, ATTACKATTRIB_MINDSTORM_UNIQUE_ATTACK1, 0 );	--새타입, 새 ATTACKATTRIB
	-- 타겟이 적인가?
	STATE:SetFindEnemy( true );
	-- 적 탐색시 최대 거리, 각도 ( 인자 1: 제한거리, 인자2: 제한 각도 ) WEAPON.xml의 RANGE가 적용됨
	STATE:SetFindLimit( 2000, 45 );	
	-- 탐지된 타겟을 유지하는 거리, 각도 ( 인자1: 제한거리, 인자2: 각도 ) WEAPON.xml의 RANGE가 적용됨
	STATE:SetRangeLimit( 2000, 45 );
	--[[
		데미지, 힐량 구하는 공식 
		fCurrentDamage = m_fDamageHPMin + ( m_fDamageHPMax - m_fDamageHPMin ) * fDamageRate;
		fDamageRate = 데미지 배율( 각도차)
	]]
	--데미지 최소, 최대 
	STATE:SetDamageHP( 0, 15 );
	-- 힐 최소, 최대
	STATE:SetHealingHP( 0, 3 );--0.375
	
end