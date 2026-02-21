:: map name, case sensitive
set map_cs=SContentMart
:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\Resources\%map_cs%.dsres"
del "%ds%\DSLOA\%map_cs% LoA.dsres"
:: also map file
del "%ds%\Maps\%map_cs%.dsmap"
