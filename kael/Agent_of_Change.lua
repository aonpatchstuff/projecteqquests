local aoc_raid = {
    expedition = { name="Wakening Lands", min_players=1, max_players=72},
    instance   = { zone="wakening", version=0, duration=eq.seconds("8h") }, -- zone lasts 8 hours
    safereturn = { zone="kael", x=528.11, y=-149.99, z=-196.88, h=227.0 }, --outside portal
    zonein     = { x=-5013.87, y=-561, z=-193.04, h=260 },
}

function event_say(e)
	local dz = e.other:GetExpedition()
	if(e.message:findi("hail")) then
		if dz.valid and dz:GetZoneName() == aoc_raid.instance.zone then
			e.self:Say("Tell me when you're [" .. eq.say_link("ready") .. "] to enter")
		else
			e.self:Say("Would you like to [" .. eq.say_link("request") .. "] the expedition?")
		end
	elseif(e.message:findi("request")) then
		local dz = e.other:CreateExpedition(aoc_raid)
		dz:AddReplayLockout(eq.seconds("9h")) -- 9 hour lockout
		e.self:Say("Tell me when you're [" .. eq.say_link("ready") .. "] to enter")
	elseif(dz:GetZoneName() == aoc_raid.instance.zone and e.message:findi("ready")) then
		e.other:MovePCDynamicZone(aoc_raid.instance.zone)
	end
end