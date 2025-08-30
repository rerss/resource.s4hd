--�Խ�Ʈ�鿡�� hostarg������ ��û�Ѵ�.( ȣ��Ʈ�� ���� ��ũ��Ʈ���� Init() ȣ������� ��! )
function LuaInitHostArg( ArcadeSystem, HostController )

	HostController:InitHostArgCommand();

end


--�����̵� ��尡 ����ɶ� �� ���������� ���Ѵ�. 
function LuaTotalStage( ArcadeSystem, HostController, u8TotalStage )
    
    InputArg = ArcadeSystem:GetInputArg();

	    InputArg:PushLU32( "TOTAL_STAGE", u8TotalStage );

    HostController:SetTotalStage( InputArg );
    
end

--���������� Ŭ�������� �� ȣ��
function LuaRequestStageClear( ArcadeSystem, HostController )
   
    HostController:RequestStageClear();
    
end

--���������� �������� �� ȣ��
function LuaRequestStageFailed( ArcadeSystem, HostController )
   
    HostController:RequestStageFailed();
    
end

--�������� ��������
function LuaSetStageInfo( ArcadeSystem, HostController, u32StageID, u32StageTime )

	InputArg = ArcadeSystem:GetInputArg();

		InputArg:PushLU32( "STAGE_ID", u32StageID );
	    InputArg:PushLU32( "STAGE_TIME", u32StageTime );

    HostController:SetStageInfo( InputArg );

	
end

--host, guest�� �����͸� ����ȭ��Ű�� �Լ�, ���� ������ ����ؼ� ����ȭ�����ش�.
function LuaSyncHostData( ArcadeSystem, HostController, strDataSetName )

    InputArg = ArcadeSystem:GetInputArg();

	    InputArg:PushLStr( "SYNC_HOST_DATA", strDataSetName );

    HostController:SyncHostData( InputArg );

end

--AI������ ų �������� �����ش�!
function LuaKillProgressReg( ArcadeSystem, HostController, szAIActorName, u32TotalCount )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLStr( "KILLPROG_REG_TYPE", szAIActorName );
	    InputArg:PushLU32( "KILLPROG_TOT", u32TotalCount );

    HostController:KillProgressReg( InputArg );

end

--AI������ ų �������� ���ش�.
function LuaKillProgressUnreg( ArcadeSystem, HostController, szAIActorName )

    InputArg = ArcadeSystem:GetInputArg();  
    
		InputArg:PushLStr( "KILLPROG_UNREG_TYPE", szAIActorName );

    HostController:KillProgressUnreg( InputArg );

end

--AI ų �������� ��� ���ش�.
function LuaKillProgressUnregAll( ArcadeSystem, HostController )

    InputArg = ArcadeSystem:GetInputArg();  

    HostController:KillProgressUnregAll( InputArg );

end

--���� �÷������ִ��Լ�
function LuaMoviePlay( ArcadeSystem, HostController, u32MovieID )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLU32( "MOVIESYSTEM_ID",u32MovieID );

    HostController:PlayMovie( InputArg );

end

--�̼� ���̵� �������ִ� �Լ�
function LuaChangeMissionID( ArcadeSystem, HostController, u32MissionID )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLU32( "MISSION_ID", u32MissionID );

    HostController:ChangeMissionID( InputArg );

end

--�̼� ������ �����ִ� �Լ�
function LuaViewMissionInfo( ArcadeSystem, HostController, u32MissionID, fRed, fGreen, fBlue, fAlpha, u32LifeTime )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLU32( "MISSIONINFO_ID", u32MissionID );
	    InputArg:PushLFloat( "MISSIONINFO_R", fRed );
	    InputArg:PushLFloat( "MISSIONINFO_G", fGreen );
	    InputArg:PushLFloat( "MISSIONINFO_B", fBlue );
	    InputArg:PushLFloat( "MISSIONINFO_A", fAlpha );
	    InputArg:PushLU32( "MISSIONINFO_LIFETIME", u32LifeTime );

    HostController:ViewMissionInfo( InputArg );

end

--bgm�� �÷������ִ� �Լ�
function LuaPlayBGM( ArcadeSystem, HostController, szBGM )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLStr( "BGM_FILE", szBGM );

    HostController:PlayBGM( InputArg );

end

--bgm�� ������Ű�� �Լ�
function LuaStopBGM( ArcadeSystem, HostController )

    InputArg = ArcadeSystem:GetInputArg();  

    HostController:StopBGM( InputArg );

end

--ȿ������ �÷������ִ� �Լ�
function LuaPlaySFX( ArcadeSystem, HostController, szSFX )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLStr( "SFX_FILE", szSFX );

    HostController:PlaySFX( InputArg );

end

--���� �Ӽ��� �������ִ� �Լ�
function LuaChangeFogProperty( ArcadeSystem, HostController, fFogMinDist, fFogMaxDist, fFogR, fFogG, fFogB )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLFloat( "FOG_MINDIST", fFogMinDist );
	    InputArg:PushLFloat( "FOG_MAXDIST", fFogMaxDist );
	    InputArg:PushLFloat( "FOG_R", fFogR );
	    InputArg:PushLFloat( "FOG_G", fFogG );
	    InputArg:PushLFloat( "FOG_B", fFogB );

    HostController:ChangeFogProperty( InputArg );

end

--���� �Ӽ��� ������� �������ִ� �Լ�
function LuaRestoreFogProperty( ArcadeSystem, HostController )

    InputArg = ArcadeSystem:GetInputArg();  

    HostController:RestoreFogProperty( InputArg );

end

--��ī�̹ڽ��� �������� �������ִ� �Լ�.
function LuaShowSkyBox( ArcadeSystem, HostController, bShowSkyBox )

    InputArg = ArcadeSystem:GetInputArg();  
    
		InputArg:PushLBool( "SHOW", bShowSkyBox );

    HostController:ShowSkyBox( InputArg );

end



--������ ��ġ�� �������� ������Ų��.
function LuaItemSpawn( ArcadeSystem, HostController, u32ItemID, bRandomShow, fPosX, fPosY, fPosZ, fDirX, fDirY, fDirZ )
	
    InputArg = ArcadeSystem:GetInputArg();
    
		InputArg:PushLU32( "ITEM_ID", u32ItemID );
		InputArg:PushLBool( "RANDOM_SHOW", bRandomShow );
    	InputArg:PushLFloat( "POS_X", fPosX );
		InputArg:PushLFloat( "POS_Y", fPosY  );
		InputArg:PushLFloat( "POS_Z", fPosZ );	
		InputArg:PushLFloat( "DIR_X", fDirX );
		InputArg:PushLFloat( "DIR_Y", fDirY  );
		InputArg:PushLFloat( "DIR_Z", fDirZ );	
			
	HostController:SpawnItem( InputArg );

end

--Ư�� ��忡 �������� ������Ų��.
function LuaItemSpawnByNode( ArcadeSystem, HostController, u32ItemID, bRandomShow, strSpawnNode )
	
    InputArg = ArcadeSystem:GetInputArg();

		InputArg:PushLU32( "ITEM_ID", u32ItemID );
		InputArg:PushLBool( "RANDOM_SHOW", bRandomShow );
		InputArg:PushLStr( "SPAWN_NODE", strSpawnNode );
			
	HostController:SpawnItembyNode( InputArg );

end

--AI��������ġ�� �������� ������Ų��.
function LuaItemSpawnByAIActor( ArcadeSystem, HostController, u32ItemID, bRandomShow, pAIActor )
	
    InputArg = ArcadeSystem:GetInputArg();

		InputArg:PushLU32( "ITEM_ID", u32ItemID );
		InputArg:PushLBool( "RANDOM_SHOW", bRandomShow );
		InputArg:PushLVoid( "AI_ACTOR", pAIActor );
			
	HostController:SpawnItemByAIActor( InputArg );

end

--������ �����۵��� ��� �����.
function LuaRemoveAllItem( ArcadeSystem, HostController )
			
	HostController:RemoveAllItem();

end

--Ư����忡 player�� ������Ų��.
function LuaPlayerSpawnByNode( ArcadeSystem, HostController, strSpawnNode )

    InputArg = ArcadeSystem:GetInputArg();

		InputArg:PushLStr( "SPAWN_NODE", strSpawnNode );
			
	HostController:PlayerSpawnByNode( InputArg );
	
end


--Ư����ǥ�� ai�� ��ȯ�Ѵ�.
function LuaSpawnAIActor( ArcadeSystem, HostController, strAITypeName, strActorTypeName, fPosX, fPosY, fPosZ, fDirX, fDirY, fDirZ )
    
    InputArg = ArcadeSystem:GetInputArg();
    
		InputArg:PushLStr( "AI_TYPE", strAITypeName );
		InputArg:PushLStr( "ACTOR_TYPE", strActorTypeName );
		InputArg:PushLFloat( "POS_X", fPosX );
		InputArg:PushLFloat( "POS_Y", fPosY  );
		InputArg:PushLFloat( "POS_Z", fPosZ );	
		InputArg:PushLFloat( "DIR_X", fDirX );
		InputArg:PushLFloat( "DIR_Y", fDirY  );
		InputArg:PushLFloat( "DIR_Z", fDirZ );	
			
	HostController:SpawnAIActor( InputArg );
	
end
--Ư����忡 ai�� ��ȯ�Ѵ�.
function LuaSpawnAIActorByNode( ArcadeSystem, HostController, strAITypeName, strActorTypeName, strSpawnNode )
    
    InputArg = ArcadeSystem:GetInputArg();
    
		InputArg:PushLStr( "AI_TYPE", strAITypeName );
		InputArg:PushLStr( "ACTOR_TYPE", strActorTypeName );
		InputArg:PushLStr( "SPAWN_NODE", strSpawnNode );
			
	HostController:SpawnAIActorByNode( InputArg );
	
end
--Ư�������� ��ġ�� ai�� ��ȯ�Ѵ�.
function LuaSpawnAIActorByActorPos( ArcadeSystem, HostController, strAITypeName, strActorTypeName, pActor )
    
    InputArg = ArcadeSystem:GetInputArg();
    
		InputArg:PushLStr( "AI_TYPE", strAITypeName );
		InputArg:PushLStr( "ACTOR_TYPE", strActorTypeName );
		InputArg:PushLVoid( "TARGET_ACTOR", pActor );
			
	HostController:SpawnAIActorByActorPos( InputArg );
	
end
--�ش� Ÿ���� ��� ai�� ������.
function LuaRemoveAllAIActorByType( ArcadeSystem, HostController, strAITypeName )
    
    InputArg = ArcadeSystem:GetInputArg();
    
		InputArg:PushLStr( "AI_TYPE", strAITypeName );
			
	HostController:RemoveAllAIActorByType( InputArg );
	
end

--��� ai�� ������.
function LuaRemoveAllAIActor( ArcadeSystem, HostController )
    		
	HostController:RemoveAllAIActor();
	
end

--������ ���͸� ����
function Command_Attack( pAIActor, pTargetActor, szAttackType, bRotateToTarget, fAimOffset )

	Arg = pAIActor:GetArg();

		Arg:SetLStr( "COMMAND", "ATTACK" );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLStr( "ATTACK_TYPE", szAttackType );
		Arg:SetLBool( "ROTATE_TO_TARGET", bRotateToTarget );
		Arg:SetLFloat( "AIM_OFFSET", fAimOffset );
	
	pAIActor:Command();
	
end

--������ ��ġ�� �̵��ϸ鼭 ����
function Command_MovingAttack_ToPos( pAIActor, u32CommandTime, pTargetActor, szAttackType, bRotateToTarget, fTargetPosX, fTargetPosY, fTargetPosZ, fOffsetPosX, fOffsetPosZ, fAimOffset )

	Arg = pAIActor:GetArg();

		Arg:SetLStr( "COMMAND", "MOVINGATTACK_POS" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLStr( "ATTACK_TYPE", szAttackType );
		Arg:SetLBool( "ROTATE_TO_TARGET", bRotateToTarget );
		Arg:SetLFloat( "TARGETPOS_X", fTargetPosX );
		Arg:SetLFloat( "TARGETPOS_Y", fTargetPosY );
		Arg:SetLFloat( "TARGETPOS_Z", fTargetPosZ );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
		Arg:SetLFloat( "AIM_OFFSET", fAimOffset );
	
	pAIActor:Command();
	
end

--������ �����ġ�� �̵��ϸ鼭 ����
function Command_MovingAttack_ToNode( pAIActor, u32CommandTime, pTargetActor, szAttackType, bRotateToTarget, szNode, fOffsetPosX, fOffsetPosZ, fAimOffset )

	Arg = pAIActor:GetArg();

		Arg:SetLStr( "COMMAND", "MOVINGATTACK_NODE" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLStr( "ATTACK_TYPE", szAttackType );
		Arg:SetLBool( "ROTATE_TO_TARGET", bRotateToTarget );
		Arg:SetLStr( "NODE_NAME", szNode );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
		Arg:SetLFloat( "AIM_OFFSET", fAimOffset );
	
	pAIActor:Command();
	
end

--������ ���͸� ���� �̵��ϸ鼭 ����
function Command_MovingAttack_ToActor( pAIActor, u32CommandTime, pTargetActor, szAttackType, bRotateToTarget, fOffsetPosX, fOffsetPosZ, fAimOffset )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "MOVINGATTACK_ACTOR" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLStr( "ATTACK_TYPE", szAttackType );
		Arg:SetLBool( "ROTATE_TO_TARGET", bRotateToTarget );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
		Arg:SetLFloat( "AIM_OFFSET", fAimOffset );
	
	pAIActor:Command();
	
end

--������ ���� �ݴ븦 ���� �̵��ϸ鼭 ����
function Command_BackMovingAttack_ToActor( pAIActor, u32CommandTime, pTargetActor, szAttackType, bRotateToTarget, fMoveDist, fOffsetPosX, fOffsetPosZ, fAimOffset )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "BACKMOVINGATTACK_ACTOR" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLStr( "ATTACK_TYPE", szAttackType );
		Arg:SetLBool( "ROTATE_TO_TARGET", bRotateToTarget );
		Arg:SetLFloat( "COMMON_VALUE_3", fMoveDist );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
		Arg:SetLFloat( "AIM_OFFSET", fAimOffset );
	
	pAIActor:Command();
	
end

--������ ��ġ�� �̵�
function Command_Move_ToPos( pAIActor, u32CommandTime, fTargetPosX, fTargetPosY, fTargetPosZ, fOffsetPosX, fOffsetPosZ )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "MOVE_POS" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetLFloat( "TARGETPOS_X", fTargetPosX );
		Arg:SetLFloat( "TARGETPOS_Y", fTargetPosY );
		Arg:SetLFloat( "TARGETPOS_Z", fTargetPosZ );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
	
	pAIActor:Command();
	
end

--������ �����ġ�� �̵�
function Command_Move_ToNode( pAIActor, u32CommandTime, szNode, fOffsetPosX, fOffsetPosZ )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "MOVE_NODE" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetLStr( "NODE_NAME", szNode );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
	
	pAIActor:Command();
	
end

--����� ������ġ�� �̵�
function Command_Move_ToAttackArea( pAIActor, u32CommandTime,fOffsetPosX, fOffsetPosZ )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "MOVE_ATTACKAREA" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
	
	pAIActor:Command();
	
end

--����� ������ġ�� �̵�
function Command_Move_ToDefenseArea( pAIActor, u32CommandTime,fOffsetPosX, fOffsetPosZ )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "MOVE_DEFENSEAREA" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
	
	pAIActor:Command();
	
end

--������ ���͸� ���� �̵�
function Command_Move_ToActor( pAIActor, u32CommandTime, pTargetActor, fOffsetPosX, fOffsetPosZ )

	Arg = pAIActor:GetArg();

		Arg:SetLStr( "COMMAND", "MOVE_ACTOR" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
	
	pAIActor:Command();
	
end

--������ ���� �ݴ븦 ���� �̵�
function Command_BackMove_ToActor( pAIActor, u32CommandTime, pTargetActor, fMoveDist, fOffsetPosX, fOffsetPosZ )

	Arg = pAIActor:GetArg();

		Arg:SetLStr( "COMMAND", "BACKMOVE_ACTOR" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLFloat( "COMMON_VALUE_3", fMoveDist );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
	
	pAIActor:Command();
	
end

--������ ���� ���� �̵�
function Command_Teleport_ToNode( pAIActor, szNode )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "TELEPORT_NODE" );
		Arg:SetLStr( "NODE_NAME", szNode );
	
	pAIActor:Command();
	
end

--���� ��ġ���� ���
function Command_Stop( pAIActor )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "STOP" );
	
	pAIActor:Command();
	
end

--����
function Command_Death( pAIActor )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "DEATH" );
	
	pAIActor:Command();
	
end

--ȸ��
function Command_Dodge( pAIActor, bLeft )

	fDodgeDirValue = 1;
	
	if bLeft == false then
		fDodgeDirValue = -1;
	end

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "DODGE" );
		Arg:SetLFloat( "COMMON_VALUE_1", fDodgeDirValue );
	
	pAIActor:Command();
	
end

--������ ���͸� �������� �ٶ󺸰� ȸ��
function Command_Dodge_ToActor( pAIActor, pTargetActor, bLeft )

	fDodgeDirValue = 1;
	
	if bLeft == false then
		fDodgeDirValue = -1;
	end

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "DODGE_ACTOR" );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLFloat( "COMMON_VALUE_1", fDodgeDirValue );
	
	pAIActor:Command();
	
end

--������ ���Ϳ��� ���ε彺ų�� ���
function Command_SkillBind( pAIActor, pTargetActor, fAimOffset )

	Arg = pAIActor:GetArg();

		Arg:SetLStr( "COMMAND", "SKILL_BIND" );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLFloat( "AIM_OFFSET", fAimOffset );
	
	pAIActor:Command();
	
end

--����ȭ��ų �¿���
function Command_SkillInvisible( pAIActor, bOnOff )

	fOnOffValue = 1;
	
	if bOnOff == false then
		fOnOffValue = -1;
	end

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "SKILL_INVISIBLE" );
		Arg:SetLFloat( "COMMON_VALUE_1", fOnOffValue );
	
	pAIActor:Command();
	
end

--AI�� HP�� ����
function Command_ChangeHP( pAIActor, fHPRate )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "CHANGE_HP" );
		Arg:SetLFloat( "COMMON_VALUE_1", fHPRate );
	
	pAIActor:Command();
	
end

function LuaRegistArcadeActor( ArcadeSystem, HostController, szAIType, szActorType, uiCount )

	InputArg = ArcadeSystem:GetInputArg();

	    InputArg:PushLStr( "AI_TYPE", szAIType );
		InputArg:PushLStr( "ACTOR_TYPE", szActorType );
		InputArg:PushLU32( "COUNT", uiCount );

    HostController:RegistArcadeActor( InputArg );
	
end