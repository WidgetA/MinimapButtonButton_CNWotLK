local _, addon = ...;

if GetCVar('portal') == 'CN' then
  AddOnLoadFunction = IsAddOnLoaded
else
  AddOnLoadFunction = C_AddOns.IsAddOnLoaded
end

if (not AddOnLoadFunction('Tukui')
    or not addon.import('Skins/Main').reserveSkin()) then return end

local function skinFrame (frame, config)
  local media = config.Medias;
  local edgeSize = 3;

  local backdrop = {
    bgFile = media.Blank,
    edgeFile = media.Glow,
    edgeSize = edgeSize,
    insets = {
      left = edgeSize,
      right = edgeSize,
      top = edgeSize,
      bottom = edgeSize,
    }
  };

  frame:SetBackdrop(backdrop);
  frame:SetBackdropColor(unpack(media.BackdropColor));
  frame:SetBackdropBorderColor(unpack(media.BorderColor));
  addon.import('Layouts/Main').setEdgeOffsets(2, 0);
end

addon.import('Core/Events').registerEvent('PLAYER_LOGIN', function ()
  local CONFIG = _G.Tukui[2];
  local Main = addon.import('Logic/Main');

  skinFrame(Main.buttonContainer, CONFIG);
  skinFrame(Main.mainButton, CONFIG);
  Main.logo:SetVertexColor(unpack(CONFIG.Medias.BorderColor));
  return true;
end);
