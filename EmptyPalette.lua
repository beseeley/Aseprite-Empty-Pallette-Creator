--- Empty Pallete Creator ---
-- Makes a blank pallete with 3 colors: clear, white, and black 
 
local spr = app.activeSprite
--If no sprite open, can't work with the palette
if not spr then
  return app.alert("There is no active sprite")
end

app.transaction(
  function()
    local pal = spr.palettes[1]
    pal:resize(3)
    pal:setColor(0, Color{r=0,g=0,b=0,a=0})
    pal:setColor(1, Color{r=0,g=0,b=0,a=255})
    pal:setColor(2, Color{r=255,g=255,b=255,a=255})
  end)

app.refresh()

