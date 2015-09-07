import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeysP)
import System.IO

main = do
  xmproc <- spawnPipe "xmobar"
  xmonad $ defaultConfig
         { manageHook = manageDocks <+> manageHook defaultConfig
         , layoutHook = avoidStruts  $  layoutHook defaultConfig
         , logHook = dynamicLogWithPP xmobarPP
                   { ppOutput = hPutStrLn xmproc
                   , ppTitle = xmobarColor "grey" "" . shorten 50
                   }
         , modMask = mod4Mask  -- Rebinds Mod to Command (cmd) key
         } `additionalKeysP`
         [ ("M-z", spawn "xscreensaver-command -lock")
         ]
