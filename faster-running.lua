-- name: Faster Running
-- description: Everyone runs faster.

-- Logic loop that scales the velocity of every character active in the server
local function mario_update(m)
    -- Check if Mario is moving on a solid surface before applying the speed boost
    if m.floor ~= nil then
        -- Boost forward speed if the character is actively walking or running
        if m.forwardVel > 1.0 then
            -- Multiply existing velocity smoothly by 1.5x
            m.forwardVel = m.forwardVel * 1.5
        end
    end
end

-- Hook the update function directly into the core character physics loop
hook_event(HOOK_MARIO_UPDATE, mario_update)
