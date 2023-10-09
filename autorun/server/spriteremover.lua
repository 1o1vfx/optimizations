local ATOMIC@1O1VFX_ENTITIES_REMOVE = {
    [ "ambient_generic" ]               = true,
    [ "ambient_music" ]               = true,
    [ "env_speaker" ]               = true,
    [ "env_soundscape" ]               = true,
    [ "env_fire" ]                      = true,
    [ "env_sprite" ]                    = true,
    [ "env_soundscape" ]                = true,
    [ "func_monitor" ]                  = true,
    [ "func_breakable_surf" ]           = true, -- Windows turn it off to keep windows on the server
    [ "lua_run" ]                       = true,
    [ "logic_timer" ]                   = true,
    [ "point_camera" ]                  = true,
    [ "point_template" ]                = true,
    [ "prop_physics_multiplayer" ]      = true,
    [ "prop_ragdoll" ]                  = true,
    [ "prop_physics" ]                  = true,
    [ "spotlight_end" ]                 = true,
    [ "light" ]                         = true,
    [ "point_spotlight" ]               = true,
    [ "beam" ]                          = true,
    [ "light_spot" ]                    = true,
    [ "func_tracktrain" ]               = true,
    [ "trigger_multiple" ]               = true,
}

hook.Add("InitPostEntity", "Remove_Sprites", function()
    local _IPAIRS_ = ents.GetAll()
    for _=1, #_IPAIRS_ do
        local v =_IPAIRS_[_]
        if IsValid(v) && (ATOMIC@1O1VFX_ENTITIES_REMOVE[v:GetClass()]) then
            v:Remove()
        end
    end
     hook.Remove("InitPostEntity", "Remove_Sprites")
end)


-- Optimizations made by 1o1vfx on discord

-- general optimizations for all maps