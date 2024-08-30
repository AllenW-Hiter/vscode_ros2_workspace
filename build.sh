#!/bin/bash
set -e

# 设置构建类型 【Release，Debug，RelWithDebInfo，MinSizeRel】
BUILD_TYPE=Release
# 安装属性配置：
# --install-base：指定安装的基础目录。默认情况下，所有构建输出将被安装到 install 目录中，可以通过此选项自定义安装目录。
# --symlink-install：在安装过程中使用符号链接而不是复制文件。这对于开发环境很有帮助，因为这样可以在修改源代码后立即生效，无需重新安装。
# --merge-install：将所有包的安装路径合并到一个公共路径下。这意味着所有包的文件（如可执行文件、库、头文件）都会被安装到同一个目录中。
colcon build \
        --symlink-install \
        --cmake-args "-DCMAKE_BUILD_TYPE=$BUILD_TYPE" "-DCMAKE_EXPORT_COMPILE_COMMANDS=On" \
        -Wall -Wextra -Wpedantic
