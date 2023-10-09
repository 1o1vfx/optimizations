-- Adds a spawnmenu tabs 
spawnmenu.AddCreationTab( "Atlas - Store", function()
    local html = vgui.Create("DHTML", frame)
    html:Dock(FILL)
    html:OpenURL("http://atlasrp.cloud/") -- your store here
    return html


end, "icon16/control_repeat_blue.png", 200 )



--====== NEEDS CHROMIUM TO SEE