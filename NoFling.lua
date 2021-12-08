--no more fling!
--no noclip used.

local runservice = game["Run Service"]
local function preventfling()
   if game.Players.LocalPlayer.Character then
       for i,v in pairs(workspace:GetDescendants()) do
           if not v:IsDescendantOf(game.Players.LocalPlayer.Character) and v.ClassName == "Part" then
              v.Velocity = Vector3.new(0,0,0) --get rid of velocity (prime issue)
              v.RotVelocity = Vector3.new(0,0,0) --rotation velocity, what those skidded flingerz use.
           end
       end
    end
end
runservice.Stepped:connect(preventfling)
