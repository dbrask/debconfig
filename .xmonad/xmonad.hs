import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myManageHook = composeAll
    [ className =? "Gimp"	--> doFloat
    , className =? "vlc" 	--> doFloat
    ]

main = do
    xmproc <- spawnPipe "xmobar /home/fobo/.xmobarrc"
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> myManageHook
		                   <+> manageHook defaultConfig
	, layoutHook = avoidStruts $ layoutHook defaultConfig
	, logHook = dynamicLogWithPP xmobarPP
			{ ppOutput = hPutStrLn xmproc
			, ppTitle = xmobarColor "green" "" . shorten 50
			}
	, modMask = mod4Mask -- Use Super instead of Alt
        , terminal = "gnome-terminal"
        } `additionalKeys`
	[ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
	, ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s -e 'mv $f ~/shots/'")
	, ((0, xK_Print), spawn "scrot -e 'mv $f ~/shots/'")
        ] 
