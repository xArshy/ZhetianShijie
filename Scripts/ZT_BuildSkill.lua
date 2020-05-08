GameUlt = GameUlt or {}

function GameUlt.ZhaoLanwsst(region)
    local re = region:GetReligion(-1)
    local human = 1
    if re then
        if re.Population < 10000 then
            human = WorldLua:RandomInt(9, 16)
        else
            human = math.floor(re.Population / 1000) + WorldLua:RandomInt(0, 11) - 5
        end
    end
    local DaySecond = World.DaySecond
    local p = DaySecond / DAY_SECOND

    human = math.sin(p * math.pi) * human
    human = math.min(100, human)
    human = math.max(5, human)

    local timesec = ""
    if (p < 12 / 24) then
        timesec = "morning"
    elseif (DaySecond < 14 / 24) then
        timesec = "noon"
    elseif DaySecond < 20 / 24 then
        timesec = "in the afternoon"
    else
        timesec = "at night"
    end

    local pmname = nil

    if not region.UnionData then
        pmname = region.UnionData:GetPMName()
    end

    local humandesc = ""
    if (human < 10) then
        humandesc = "Only a few people came"
    elseif (human < 50) then
        humandesc = "The believers who came came shoulder to shoulder"
    else
        humandesc = "Crowds of people on the square at one time"
    end

    human = math.ceil(human)

    local desc = nil
    if not pmname then
        desc =
            string.format(
            "Nowadays%s, %s started to recruit disciples，%s。Number of agents，Total%s people come。",
            timesec,
            region.DisplayName,
            humandesc,
            human
        )
    else
        desc =
            string.format(
            "Nowadays%s, %s agent%s started to recruit disciples，%s。Number of agents，Total%s people come。",
            timesec,
            region.DisplayName,
            pmname,
            humandesc,
            human
        )
    end

    WorldLua:ShowStoryBox(
        desc,
        "Solicit",
        {"Solicit"},
        function(index)
            CS.Wnd_ZhaoLanWindow.GetNpc(human, 10, region.RegionName)
        end
    )
end