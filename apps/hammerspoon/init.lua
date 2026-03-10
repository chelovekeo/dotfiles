Hammerspoon config: chlvk.com

--
-- 1. Hotkeys for applications
--

hs.hotkey.bind({"cmd"}, "1", function() hs.application.launchOrFocus("Finder") end)
hs.hotkey.bind({"cmd"}, "2", function() hs.application.launchOrFocus("Chrome") end)
hs.hotkey.bind({"cmd"}, "3", function() hs.application.launchOrFocus("Telegram") end)
hs.hotkey.bind({"cmd"}, "4", function() hs.application.launchOrFocus("Anytype") end)
hs.hotkey.bind({"cmd"}, "5", function() hs.application.launchOrFocus("Zed") end)
hs.hotkey.bind({"cmd"}, "6", function() hs.application.launchOrFocus("Arc") end)
hs.hotkey.bind({"cmd"}, "7", function() hs.execute("open https://claude.ai") end)
hs.hotkey.bind({"cmd"}, "8", function() hs.execute("open https://chat.openai.com") end)

--
-- 2. Terminal: ⌘ + return
--

hs.hotkey.bind({"cmd"}, "return", function()
    hs.application.launchOrFocus("Terminal")
end)

--
-- 3. Reload config hotkey: ⌘ + ⌥ + R
--

hs.hotkey.bind({"cmd","alt","ctrl"}, "R", function()
    hs.alert.show("Hammerspoon config reloaded!")
    hs.reload()
end)
