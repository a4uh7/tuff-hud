return {
   CommandDesc = {
      seatbelt = "Toggle Seatbelt",
      engine   = "Toggle Engine"
   },
   Editor = {
      Title       = "EDITOR MODE",
      Description = "Customize the hud elements to your liking",
      Drag        = "Drag to Reposition",
      Scale       = "Scale to Resize",
      ESC         = "ESC to Go Back"
   },
   Settings = {
      Title       = "Hud Settings",
      Description = "Customize the hud settings to your liking",
      Category = {
         general     = "General",
         speedometer = "Speedometer",
         status      = "Status Icons & Player Info"
      },
      General = {
         Editor = {
            title       = "Open Editor Mode",
            description = "Customize the hud elements size & positions to your liking",
            reset       = "Reset",
            edit        = "Edit"
         },
         Performance = {
            title       = "Performance Mode",
            description = "Adjust the hud fps to match your performance"
         },
         Map = {
            title       = "Map Visibility",
            description = "Customize the visibility of the map",
            never       = "never",
            always      = "always",
            car         = "Only In Car"
         },
         Compass = {
            title       = "Hide Compass",
            description = "Hide or Show the compass"
         },
         Cinematic = {
            title       = "Enable Cinematics",
            description = "Enable or Disable the cinematics bar"
         }
      },
      Speedometer = {
         Title       = "Select Speedometer Style",
         Description = "Choose the speedometer to your liking",
         Speedometers = {
            select   = "Select",
            selected = "Selected",
            One = {
               name = "Speedometer name"
            },
            Two = {
               name = "Speedometer name"
            }
         },
         SpeedUnit = {
            title       = "Set Speed Unit",
            description = "Customize the speedometer unit"
         },
         HideSpeedometer = {
            title       = "Hide Speedometer",
            description = "Hide or Show the entire speedometer"
         },
         SeatbeltAlert = {
            title       = "Enable Seatbelt Alert",
            description = "Enable or Disable alert when seatbelt is not attached"
         }
      },
      Status = {
         ShowPlayerInfo = {
            title       = "Show Player Info",
            description = "Hide or Show the player info"
         },
         PlayerInfoStyle = {
            title       = "Player Info Style",
            description = "Choose different style for player info",
            style       = "Style "
         },
         EditPlayerInfo = {
            title       = "Edit Player Info",
            description = "Hide or show specific player info",
            reset       = "Reset",
            edit        = "Edit",
            Medal       = {
               title       = "Edit Player Info",
               description = "Hide or show specific player info",
               serverLogo  = "Server Logo",
               playerID    = "Player ID",
               time        = "Time",
               bank        = "Bank",
               cash        = "Cash",
               job         = "Job"
            }
         },
         HideStatusIcon = {
            title       = "Hide Status Icons",
            description = "Hide or Show the status icons"
         },
         IconsVisibility = {
            title       = "Icons Visibility",
            description = "Hide or Show icons on certain %"
         },
         EditStatusIconsColors = {
            title       = "Edit Status Icons Colors",
            description = "Customize the status icons colors"
         }
      },
      ResetEverything = "Reset everything",
      ApplyChanges    = "Apply changes"
   }
}