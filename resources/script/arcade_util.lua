--게스트들에게 hostarg리셋을 요청한다.( 호스트는 직접 스크립트에서 Init() 호출해줘야 함! )
function LuaInitHostArg( ArcadeSystem, HostController )

	HostController:InitHostArgCommand();

end


--아케이드 모드가 실행될때 총 스테이지를 정한다. 
function LuaTotalStage( ArcadeSystem, HostController, u8TotalStage )
    
    InputArg = ArcadeSystem:GetInputArg();

	    InputArg:PushLU32( "TOTAL_STAGE", u8TotalStage );

    HostController:SetTotalStage( InputArg );
    
end

--스테이지를 클리어했을 때 호출
function LuaRequestStageClear( ArcadeSystem, HostController )
   
    HostController:RequestStageClear();
    
end

--스테이지를 실패했을 때 호출
function LuaRequestStageFailed( ArcadeSystem, HostController )
   
    HostController:RequestStageFailed();
    
end

--스테이지 정보설정
function LuaSetStageInfo( ArcadeSystem, HostController, u32StageID, u32StageTime )

	InputArg = ArcadeSystem:GetInputArg();

		InputArg:PushLU32( "STAGE_ID", u32StageID );
	    InputArg:PushLU32( "STAGE_TIME", u32StageTime );

    HostController:SetStageInfo( InputArg );

	
end

--host, guest의 데이터를 동기화시키는 함수, 방장 이전을 대비해서 동기화시켜준다.
function LuaSyncHostData( ArcadeSystem, HostController, strDataSetName )

    InputArg = ArcadeSystem:GetInputArg();

	    InputArg:PushLStr( "SYNC_HOST_DATA", strDataSetName );

    HostController:SyncHostData( InputArg );

end

--AI액터의 킬 진행율을 보여준다!
function LuaKillProgressReg( ArcadeSystem, HostController, szAIActorName, u32TotalCount )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLStr( "KILLPROG_REG_TYPE", szAIActorName );
	    InputArg:PushLU32( "KILLPROG_TOT", u32TotalCount );

    HostController:KillProgressReg( InputArg );

end

--AI액터의 킬 진행율을 없앤다.
function LuaKillProgressUnreg( ArcadeSystem, HostController, szAIActorName )

    InputArg = ArcadeSystem:GetInputArg();  
    
		InputArg:PushLStr( "KILLPROG_UNREG_TYPE", szAIActorName );

    HostController:KillProgressUnreg( InputArg );

end

--AI 킬 진행율을 모두 없앤다.
function LuaKillProgressUnregAll( ArcadeSystem, HostController )

    InputArg = ArcadeSystem:GetInputArg();  

    HostController:KillProgressUnregAll( InputArg );

end

--무비를 플레이해주는함수
function LuaMoviePlay( ArcadeSystem, HostController, u32MovieID )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLU32( "MOVIESYSTEM_ID",u32MovieID );

    HostController:PlayMovie( InputArg );

end

--미션 아이디를 설정해주는 함수
function LuaChangeMissionID( ArcadeSystem, HostController, u32MissionID )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLU32( "MISSION_ID", u32MissionID );

    HostController:ChangeMissionID( InputArg );

end

--미션 인포를 보여주는 함수
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

--bgm을 플레이해주는 함수
function LuaPlayBGM( ArcadeSystem, HostController, szBGM )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLStr( "BGM_FILE", szBGM );

    HostController:PlayBGM( InputArg );

end

--bgm을 정지시키는 함수
function LuaStopBGM( ArcadeSystem, HostController )

    InputArg = ArcadeSystem:GetInputArg();  

    HostController:StopBGM( InputArg );

end

--효과음을 플레이해주는 함수
function LuaPlaySFX( ArcadeSystem, HostController, szSFX )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLStr( "SFX_FILE", szSFX );

    HostController:PlaySFX( InputArg );

end

--포그 속성을 변경해주는 함수
function LuaChangeFogProperty( ArcadeSystem, HostController, fFogMinDist, fFogMaxDist, fFogR, fFogG, fFogB )

    InputArg = ArcadeSystem:GetInputArg();  

	    InputArg:PushLFloat( "FOG_MINDIST", fFogMinDist );
	    InputArg:PushLFloat( "FOG_MAXDIST", fFogMaxDist );
	    InputArg:PushLFloat( "FOG_R", fFogR );
	    InputArg:PushLFloat( "FOG_G", fFogG );
	    InputArg:PushLFloat( "FOG_B", fFogB );

    HostController:ChangeFogProperty( InputArg );

end

--포그 속성을 원래대로 복원해주는 함수
function LuaRestoreFogProperty( ArcadeSystem, HostController )

    InputArg = ArcadeSystem:GetInputArg();  

    HostController:RestoreFogProperty( InputArg );

end

--스카이박스를 숨길지를 설정해주는 함수.
function LuaShowSkyBox( ArcadeSystem, HostController, bShowSkyBox )

    InputArg = ArcadeSystem:GetInputArg();  
    
		InputArg:PushLBool( "SHOW", bShowSkyBox );

    HostController:ShowSkyBox( InputArg );

end



--지정한 위치에 아이템을 스폰시킨다.
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

--특정 노드에 아이템을 스폰시킨다.
function LuaItemSpawnByNode( ArcadeSystem, HostController, u32ItemID, bRandomShow, strSpawnNode )
	
    InputArg = ArcadeSystem:GetInputArg();

		InputArg:PushLU32( "ITEM_ID", u32ItemID );
		InputArg:PushLBool( "RANDOM_SHOW", bRandomShow );
		InputArg:PushLStr( "SPAWN_NODE", strSpawnNode );
			
	HostController:SpawnItembyNode( InputArg );

end

--AI액터의위치에 아이템을 스폰시킨다.
function LuaItemSpawnByAIActor( ArcadeSystem, HostController, u32ItemID, bRandomShow, pAIActor )
	
    InputArg = ArcadeSystem:GetInputArg();

		InputArg:PushLU32( "ITEM_ID", u32ItemID );
		InputArg:PushLBool( "RANDOM_SHOW", bRandomShow );
		InputArg:PushLVoid( "AI_ACTOR", pAIActor );
			
	HostController:SpawnItemByAIActor( InputArg );

end

--스폰된 아이템들을 모두 지운다.
function LuaRemoveAllItem( ArcadeSystem, HostController )
			
	HostController:RemoveAllItem();

end

--특정노드에 player를 스폰시킨다.
function LuaPlayerSpawnByNode( ArcadeSystem, HostController, strSpawnNode )

    InputArg = ArcadeSystem:GetInputArg();

		InputArg:PushLStr( "SPAWN_NODE", strSpawnNode );
			
	HostController:PlayerSpawnByNode( InputArg );
	
end


--특정좌표에 ai를 소환한다.
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
--특정노드에 ai를 소환한다.
function LuaSpawnAIActorByNode( ArcadeSystem, HostController, strAITypeName, strActorTypeName, strSpawnNode )
    
    InputArg = ArcadeSystem:GetInputArg();
    
		InputArg:PushLStr( "AI_TYPE", strAITypeName );
		InputArg:PushLStr( "ACTOR_TYPE", strActorTypeName );
		InputArg:PushLStr( "SPAWN_NODE", strSpawnNode );
			
	HostController:SpawnAIActorByNode( InputArg );
	
end
--특정액터의 위치에 ai를 소환한다.
function LuaSpawnAIActorByActorPos( ArcadeSystem, HostController, strAITypeName, strActorTypeName, pActor )
    
    InputArg = ArcadeSystem:GetInputArg();
    
		InputArg:PushLStr( "AI_TYPE", strAITypeName );
		InputArg:PushLStr( "ACTOR_TYPE", strActorTypeName );
		InputArg:PushLVoid( "TARGET_ACTOR", pActor );
			
	HostController:SpawnAIActorByActorPos( InputArg );
	
end
--해당 타입의 모든 ai를 없엔다.
function LuaRemoveAllAIActorByType( ArcadeSystem, HostController, strAITypeName )
    
    InputArg = ArcadeSystem:GetInputArg();
    
		InputArg:PushLStr( "AI_TYPE", strAITypeName );
			
	HostController:RemoveAllAIActorByType( InputArg );
	
end

--모든 ai를 없엔다.
function LuaRemoveAllAIActor( ArcadeSystem, HostController )
    		
	HostController:RemoveAllAIActor();
	
end

--지정한 액터를 공격
function Command_Attack( pAIActor, pTargetActor, szAttackType, bRotateToTarget, fAimOffset )

	Arg = pAIActor:GetArg();

		Arg:SetLStr( "COMMAND", "ATTACK" );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLStr( "ATTACK_TYPE", szAttackType );
		Arg:SetLBool( "ROTATE_TO_TARGET", bRotateToTarget );
		Arg:SetLFloat( "AIM_OFFSET", fAimOffset );
	
	pAIActor:Command();
	
end

--지정한 위치로 이동하면서 공격
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

--지정한 노드위치로 이동하면서 공격
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

--지정한 액터를 향해 이동하면서 공격
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

--지정한 액터 반대를 향해 이동하면서 공격
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

--지정한 위치로 이동
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

--지정한 노드위치로 이동
function Command_Move_ToNode( pAIActor, u32CommandTime, szNode, fOffsetPosX, fOffsetPosZ )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "MOVE_NODE" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetLStr( "NODE_NAME", szNode );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
	
	pAIActor:Command();
	
end

--가까운 공격위치로 이동
function Command_Move_ToAttackArea( pAIActor, u32CommandTime,fOffsetPosX, fOffsetPosZ )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "MOVE_ATTACKAREA" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
	
	pAIActor:Command();
	
end

--가까운 수비위치로 이동
function Command_Move_ToDefenseArea( pAIActor, u32CommandTime,fOffsetPosX, fOffsetPosZ )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "MOVE_DEFENSEAREA" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
	
	pAIActor:Command();
	
end

--지정한 액터를 향해 이동
function Command_Move_ToActor( pAIActor, u32CommandTime, pTargetActor, fOffsetPosX, fOffsetPosZ )

	Arg = pAIActor:GetArg();

		Arg:SetLStr( "COMMAND", "MOVE_ACTOR" );
		Arg:SetLU32( "COMMAND_TIME", u32CommandTime );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLFloat( "COMMON_VALUE_1", fOffsetPosX );
		Arg:SetLFloat( "COMMON_VALUE_2", fOffsetPosZ );
	
	pAIActor:Command();
	
end

--지정한 액터 반대를 향해 이동
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

--지정한 노드로 순간 이동
function Command_Teleport_ToNode( pAIActor, szNode )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "TELEPORT_NODE" );
		Arg:SetLStr( "NODE_NAME", szNode );
	
	pAIActor:Command();
	
end

--현재 위치에서 대기
function Command_Stop( pAIActor )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "STOP" );
	
	pAIActor:Command();
	
end

--죽음
function Command_Death( pAIActor )

	Arg = pAIActor:GetArg();
	
		Arg:SetLStr( "COMMAND", "DEATH" );
	
	pAIActor:Command();
	
end

--회피
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

--지정한 액터를 정면으로 바라보고 회피
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

--지정한 액터에게 바인드스킬을 사용
function Command_SkillBind( pAIActor, pTargetActor, fAimOffset )

	Arg = pAIActor:GetArg();

		Arg:SetLStr( "COMMAND", "SKILL_BIND" );
		Arg:SetActor( "TARGET_ACTOR", pTargetActor );
		Arg:SetLFloat( "AIM_OFFSET", fAimOffset );
	
	pAIActor:Command();
	
end

--투명화스킬 온오프
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

--AI의 HP를 변경
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