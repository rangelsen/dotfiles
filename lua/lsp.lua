local lspconfig = require('lspconfig')
lspconfig.hls.setup {
    haskell = {
        formattingProvider = "stylish-haskell"
    }
}
lspconfig.gopls.setup {
    go = {
        formattingProvider = "gofmt"
    }
}

