require "Resources/Script/ActorStates_Constants.lua"


function StandardSentryMineAttack( CollisionTimeStart , uiCollisionTimePeriod , DamageOnce, DistLimit )


Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_SENTRYBOMB_BUILDER, ATTACKATTRIB_SENTRYBOMB_BUILDER, CollisionTimeStart + uiCollisionTimePeriod*0 , DamageOnce + 15, 0 ); 
	Attack1:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0,170,0 ), DistLimit ), 1, 1, false  );
	Attack1:SetCollisionRangeAdjust( false, false );
	AddAttack( ATTACKS, Attack1 );


    Attack2 = CreateCAttack();
	Attack2:InitAttack1( WEAPONTYPE_SENTRYBOMB_BUILDER, ATTACKATTRIB_SENTRYBOMB_BUILDER, CollisionTimeStart + uiCollisionTimePeriod+1000 , DamageOnce + 30, 0 ); 
	Attack2:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0,170,0 ), DistLimit ), 1, 1, false  );
	Attack2:SetCollisionRangeAdjust( false, false );
	AddAttack( ATTACKS, Attack2 );


    Attack3 = CreateCAttack();
	Attack3:InitAttack1( WEAPONTYPE_SENTRYBOMB_BUILDER, ATTACKATTRIB_SENTRYBOMB_BUILDER, CollisionTimeStart + uiCollisionTimePeriod+3000 , DamageOnce + 60, 0 ); 
	Attack3:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0,170,0 ), DistLimit ), 1, 1, false  );
	Attack3:SetCollisionRangeAdjust( false, false );
	AddAttack( ATTACKS, Attack3 );	


end