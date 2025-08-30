function GetColorValue( iMode )
	--GAMERULE_DEATHMATCH		= 1,
	--GAMERULE_FOOTBALL			= 2,
	--GAMERULE_SURVIVAL			= 3,
	--GAMERULE_MISSION			= 4,
	--GAMERULE_TUTORIAL			= 5,
	--GAMERULE_SEMI_TD			= 6,
	--GAMERULE_ARCADE			= 7,
	--GAMERULE_SLAUGHTER		= 8,
	--GAMERULE_FREEFORALL		= 9,
	--GAMERULE_CAPTAIN			= 10,
	--GAMERULE_SEIZE			= 11,
	--GAMERULE_HORDE			= 12,
	--GAMERULE_CHALLENGE		= 13,

    local rValue = 1.0;
    local gValue = 1.0;
    local bValue = 1.0;

    -- 터치다운
    if iMode == 2 then
        rValue = 1.4;
        gValue = 1.4;
        bValue = 1.4;
    -- 특정 모드에 반짝이는 효과를 추가 하고 싶으면... 아래 --를 삭제하고 "모드 숫자" 부분에 원하는 모드 값을 입력하면 됩니다.
    -- 단... 체이서는 기본적으로 반짝이는 효과를 제거했기 때문에 넣고 싶으면 별도의 클라 작업이 필요...
    --elseif iMode == 모드 숫자 then
    --    rValue = 1.0;
    --    gValue = 1.0;
    --    bValue = 1.0;
    else
        rValue = 3.0;
        gValue = 3.0;
        bValue = 3.0;
    end

    BURNINGCOLOR( rValue, gValue, bValue );
end
