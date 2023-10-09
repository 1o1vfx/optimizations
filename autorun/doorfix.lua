local goThroughDoor = {
prop_physics=true,
sammyservers_textscreen=true,
Keypad=true
}
hook.Add( "ShouldCollide", "SADMIN_COLLIDE", function( ent1, ent2 )
if (goThroughDoor[ent1:GetClass()] != nil or ent1:GetClass() == "prop_door_rotating") and (goThroughDoor[ent2:GetClass()] != nil or ent2:GetClass() == "prop_door_rotating") then
  return false
end
return true
end)
hook.Add("OnEntityCreated","SADMIN_CREATE",function(ent)
if(goThroughDoor[ent:GetClass()]) then ent:SetCustomCollisionCheck(true) end
end)

-- Optimization made by 1o1vfx on discord

-- This lets props and textscreens to be used without letting the doors on building being stuck 