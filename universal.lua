local Universal =
    GUI:Tab({Name = "Universal", Icon = "rbxassetid://4483345998"})

Universal:Button({
    Name = "UNC Test",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/refs/heads/main/UNCCheckEnv.lua"))()
    end
})
Universal:Button({
    Name = "SUNC Test",
    Callback = function()
        loadstring(game:HttpGet("https://gitlab.com/sens3/nebunu/-/raw/main/HummingBird8's_sUNC_yes_i_moved_to_gitlab_because_my_github_acc_got_brickedd/sUNCm0m3n7.lua"))()
    end
})
Universal:Button({
    Name = "Chat Bypasser",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua"))()
    end
})
if (string.find(identifyexecutor(), 'Seliware')) then
	Universal:Button({
    Name = "SeliXide",
    Callback = function()
        getgenv().bypass_adonis = false
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Absu245/SeliXide/refs/heads/main/hydroxide.lua'))()
    end
})
else
	Universal:Button({
    Name = "Hydroxide",
    Callback = function()
        local owner = "Upbolt"
        local branch = "revision"
        local function webImport(file)
            return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
        end
        webImport("init")
        webImport("ui/main")
    end
})
end