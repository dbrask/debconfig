-- minimal Ubuntu config file: ~/.xmonad/xmonad.hs
import XMonad
 
main = xmonad def
  { modMask     = mod1Mask -- set 'Mod' to windows key
  , terminal    = "terminator" -- for Mod + Shift + Enter
  }
