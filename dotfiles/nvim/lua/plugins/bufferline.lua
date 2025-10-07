-- Top line of buffers and tabs
return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      numbers = "buffer_id"
    }
  }
}