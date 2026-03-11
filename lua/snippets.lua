-- The actual snippets are defined here.
--
-- Docs: https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md#adding-snippets
--
-- https://www.youtube.com/watch?v=Dn800rlPIho
-- https://www.youtube.com/watch?v=KtQZRAkgLqo
--
--

local ls = require 'luasnip'
-- This loads a bunch of local variables so we don't have to define them here
ls.setup_snip_env()

-- This key is so that during testing of these we can interactively reload them
-- via the keymap and add_snippets() replaces only these instead of appending
-- to the list of snippets which would duplicate them. I'm not sure if they
-- need to have different keys, but it looks like they are all available even
-- if they have the same key.
local key = 'my_snippets'

-- ls.add_snippets('all', {
--   s('ddd', { t(os.date '%Y-%m-%d') }),
-- }, { key = key })

ls.add_snippets('nix', {
  -- mod for module
  s(
    'mod',
    fmt(
      [[
      {{ config, lib, pkgs, {}... }}:
      {{
        {}
      }}
    ]],
      { i(1), i(2) }
    )
  ),
  -- f for field
  s('f', fmt('{} = {};', { i(1), i(2) })),
  -- m for map
  s(
    'm',
    fmt(
      [[
      {} = {{
        {}
      }};
      ]],
      { i(1), i(2) }
    )
  ),
}, { key = key })
