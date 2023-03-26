-- configuration for startup
local setup, startup = pcall(require, "startup")
if not setup then
  return
end

startup.setup({ theme = "dashboard" })
