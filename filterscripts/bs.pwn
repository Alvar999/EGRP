#include <a_samp>
#pragma tabsize 0

forward TimerForRemoveObj(playerid);
new HitObjTime[MAX_PLAYERS];
new AdvTime[MAX_PLAYERS];

public OnPlayerConnect(playerid)
{
    HitObjTime[playerid] = 0;
    AdvTime[playerid] = 0;
        return 1;
}

public OnGameModeInit()
{
        return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid)
{
    if(weaponid != 18 && weaponid != 37 && weaponid != 41)
        {
            PlayerPlaySound(playerid,5202,0.0,0.0,0.0);
            PlayerPlaySound(issuerid,5202,0.0,0.0,0.0);
                if(IsPlayerAttachedObjectSlotUsed(playerid, 1)) RemovePlayerAttachedObject(playerid, 1);
            SetPlayerAttachedObject(playerid, 1, 18675, 1, 0.076999,0.052999,-1.553000);
            HitObjTime[playerid] = 1;
            SetTimerEx("TimerForRemoveObj", 1000, true, "i", playerid);

            AdvTime[playerid]++;
            if(AdvTime[playerid] == 50)
                {
                        SendClientMessage(playerid, -1, "[FS] Improved_damage by brawrr (Skype: Rev1se)");
                        AdvTime[playerid] = 0;
                }
        }
        return 1;
}

public TimerForRemoveObj(playerid)
{
        if(HitObjTime[playerid] == 1)
        {
                HitObjTime[playerid] = 0;
                if(IsPlayerAttachedObjectSlotUsed(playerid, 1)) RemovePlayerAttachedObject(playerid, 1);
        }
        return 1;
}
