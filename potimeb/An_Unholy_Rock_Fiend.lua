--An_Unholy_Rock_Fiend (223125)
--Phase 2 
--potimeb

function event_death_complete(e)
	--signal phase_two_controller
	eq.signal(223242,1);
end

function event_signal(e)
	--signal from A Windshapen Warlord
	if e.signal == 1 then
		e.self:SetSpecialAbility(25, 0);
		e.self:SetSpecialAbility(24, 0);
		e.self:SetBodyType(1, true);
	end
end
