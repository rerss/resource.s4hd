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

    -- ��ġ�ٿ�
    if iMode == 2 then
        rValue = 1.4;
        gValue = 1.4;
        bValue = 1.4;
    -- Ư�� ��忡 ��¦�̴� ȿ���� �߰� �ϰ� ������... �Ʒ� --�� �����ϰ� "��� ����" �κп� ���ϴ� ��� ���� �Է��ϸ� �˴ϴ�.
    -- ��... ü�̼��� �⺻������ ��¦�̴� ȿ���� �����߱� ������ �ְ� ������ ������ Ŭ�� �۾��� �ʿ�...
    --elseif iMode == ��� ���� then
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
