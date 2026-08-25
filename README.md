# CoreELEC Homatics Edition

这是基于 CoreELEC 22（Piers）定制的 Homatics Box R 4K Plus 固件项目。

## 目标设备

- 设备：Homatics Box R 4K Plus
- SoC：Amlogic S905X4-K
- DTB：`sc2_s905x4_sei_smb_280.dtb`
- 构建方向：CoreELEC 22 Amlogic-no

## 固件特性

- ✅ Homatics 4K Plus 专用优化
- ✅ U 盘写入后直接启动
- ✅ 简体中文默认环境
- ✅ 网络优化
- ✅ Jellyfin Kodi 库支持
- ✅ Emby Kodi 库支持
- ✅ Dolby Vision 优化
- ✅ dovi.ko 自动加载支持

## Dolby Vision

集成：

```
5.15_2.6_dovi_patched_fix_fel.ko
```

用于改善 Homatics Box R 4K Plus 的 Dolby Vision FEL 播放支持。

## 自动编译

本项目使用 GitHub Actions 自动构建。

每次成功构建后：

- 自动生成固件镜像
- 自动上传 Release
- 固件名称包含编译日期

示例：

```
CoreELEC-Homatics-4K-Plus-20260825.img.gz
```

## 使用方法

1. 下载 Release 中最新固件
2. 使用镜像工具写入 U 盘
3. 插入 Homatics Box R 4K Plus
4. 使用 Android Recovery 方式启动 CoreELEC

## 注意

本项目为个人定制版本，仅针对 Homatics Box R 4K Plus 测试。

