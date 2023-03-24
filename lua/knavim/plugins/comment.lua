-- configuration for Comment.nvim
local setup, comment = pcall(require, "Comment")
if not setup then 
  return
end

-- gcc can comment a line
-- gc9j comments 9 lines
comment.setup()
