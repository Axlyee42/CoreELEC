# CoreELEC Homatics Edition

这是基于 CoreELEC 22（Piers）定制的 Homatics Box R 4K Plus 固件项目。

## 目标设备

- 设备：Homatics Box R 4K Plus
- SoC：Amlogic S905X4-K
- DTB：`sc2_s905x4_sei_smb_280.dtb`
- 构建方向：CoreELEC 22 Amlogic-no

## 固件特性

- ✅ Homatics Box R 4K Plus 专用配置
- ✅ U 盘写入后内置 Homatics DTB，可直接启动
- ✅ 简体中文默认环境
- ✅ 官方 CoreELEC 网络与驱动
- ✅ Jellyfin Kodi 插件/库支持
- ✅ Emby Kodi 插件/库支持
- ⏳ Dolby Vision / FEL：第一版采用官方 CoreELEC 实现，后续可手动替换 dovi.ko

## 构建原则

第一阶段保持 CoreELEC 22 官方 Amlogic-no 基线，不集成第三方 dovi.ko 或 FEL patch，优先验证 Homatics Box R 4K Plus 的启动、网络、Kodi 和媒体播放稳定性。

## 自动编译

本项目使用 GitHub Actions 自动构建。

每次成功构建后：

- 自动生成 Homatics 固件镜像
- 自动上传 GitHub Release
- 固件名称包含编译日期
- 同时生成 SHA256 校验文件

示例：

```text
CoreELEC-Homatics-4K-Plus-20260825.img.gz
```

## 使用方法

1. 下载 Release 中最新固件
2. 使用镜像工具写入 U 盘
3. 插入 Homatics Box R 4K Plus
4. 使用 Android Recovery / Reset 方式启动 CoreELEC

## 注意

本项目为个人定制版本，仅针对 Homatics Box R 4K Plus 测试。
