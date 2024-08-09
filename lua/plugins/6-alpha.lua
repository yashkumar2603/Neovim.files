return {
  "goolord/alpha-nvim",
  config = function()
    local dashboard = require("alpha.themes.dashboard")

    -- Define your custom ASCII art
    dashboard.section.header.val = {
      "        .#####. 022PO6WM 2.2.0 (x64) #19041 4th of July 00:48:59 ",
      '       .## ^ ##. "2HREDZLQ6LC4KWE48WS" - (J888K) - 234NG738&jf*jwk             ',
      "       ## / \\ ##  9SX6HATY8UCZTFP `3I6B0MYQ03` ( 66OC8VHW@3I6B0MYQ03.i35d9 )",
      "       ## \\ / ##  > http://4I5Z22719.3I6B0MYQ03.f9j45mx/022PO6WM ",
      "       '## v ##' KVY3O5BG9LH90CH             ( EWGZ4I5Z22719E0QZJTNFIJF )",
      "        '#####' > VOIN6NBQ5J7P55TZBTT4H / WXFFZUHZ5JPERL93VZ3VC1W",
      --"                                                                ",
      "                On the 4th of July, we're all gonna die",
    }

    -- Add the fortune to the footer
    dashboard.section.footer.val = require("alpha.fortune")()

    -- Set up alpha with the modified dashboard
    require("alpha").setup(dashboard.opts)
  end,
}
