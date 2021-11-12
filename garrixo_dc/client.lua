Citizen.CreateThread(function()
	while true do
		local player = GetPlayerPed(-1)
		--Updates status every 5 seconds.
		Citizen.Wait(5*1000)
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(842076529617535056)

		-- Here you will get the actual street of the player every 5 seconds and will show it on his discord status.
		SetRichPresence("Actualmente en " .. GetStreetNameFromHashKey( GetStreetNameAtCoord ( table.unpack( GetEntityCoords(player)))))
        -- Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('andorra')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('Roleando en Andorra Vice como: ' .. GetPlayerName(PlayerId()))
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall()

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText()
        
            
		--Here you can add buttons that will display in your Discord Status.

        SetDiscordRichPresenceAction(0, "TWITTER", "https://twitter.com/andorravice")
	
	end
end)

