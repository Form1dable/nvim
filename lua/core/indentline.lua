local ok, indentline = pcall(require, "ibl")
if not ok then
  return
end

indentline.setup {}
