--no more fling!
--no noclip used.

local runservice = game["Run Service"]
local function preventfling()
   if game.Players.LocalPlayer.Character then
       for i,v in pairs(game.Players:GetPlayers()) do
           if not v == game.Players.LocalPlayer and v.Character then
              for i,v in pairs(v.Character:GetDescendants()) do
                 if v.ClassName == "Part" then
                    v.Velocity = Vector3.new(0,0,0) --get rid of velocity (prime issue)
                    v.RotVelocity = Vector3.new(0,0,0) --rotation velocity, what those skidded flingerz use.
                 end
              end
           end
       end
    end
end
runservice.Heartbeat:connect(preventfling)
