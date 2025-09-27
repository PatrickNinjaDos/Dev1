game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local playtime = Instance.new("StringValue")
	playtime.Name = "playtime"
	playtime.Parent = leaderstats
	playtime.Value = "00:00"

	local playtime_seconds = Instance.new("IntValue")
	playtime_seconds.Parent = playtime
	playtime_seconds.Name = "seconds"
	playtime_seconds.Value = 0

	local playtime_minutes = Instance.new("IntValue")
	playtime_minutes.Parent = playtime
	playtime_minutes.Name = "minutes"
	playtime_minutes.Value = 0

	while true do
		wait(1)
		playtime_seconds.Value = playtime_seconds.Value + 1
		if playtime_seconds.Value == 60 then
			playtime_minutes.Value = playtime_minutes.Value + 1
			playtime_seconds.Value = 0
		end

		if playtime_minutes.Value >= 9 then
			if playtime_seconds.Value >= 9 then
				playtime.Value = tostring(playtime_minutes.Value) .. ":" .. tostring(playtime_seconds.Value)
			else
				playtime.Value = tostring(playtime_minutes.Value) .. ":0" .. tostring(playtime_seconds.Value)
			end
		else
			if playtime_seconds.Value >= 9 then
				playtime.Value = "0" .. tostring(playtime_minutes.Value) .. ":" .. tostring(playtime_seconds.Value)
			else
				playtime.Value = "0" .. tostring(playtime_minutes.Value) .. ":0" .. tostring(playtime_seconds.Value)
			end
		end
	end
end)
