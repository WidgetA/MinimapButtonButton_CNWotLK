# MinimapButtonButton_CNWotLK
Personal modified version

Start From [MinimapButtonButton 1.20.7](https://github.com/syndenbock/MinimapButtonButton/tree/1.20.7)

# 修改原因
国服怀旧服目前插件接口的版本和海外插件接口版本不一致，导致海外 WLK 可用的插件无法在国服使用，或者有各种报错。

## Change Log
### 2025/2/1
在 `Skins/ElvUI.lua`中，使用了较新的 `C_AddOns.IsAddOnLoaded` 接口，检测为中国大陆服务器时，替换为旧版的 `IsAddOnLoaded`。

### 2025/2/17
更新至 1.21 版
