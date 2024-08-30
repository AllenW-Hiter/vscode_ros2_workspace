# VSCode ROS2 Workspace Template

此模板将帮助你使用 VSCode 作为 IDE 设置 ROS2。（汉化修改版本）

> 来源
>
> - 博客： [how I develop with vscode and ros2](https://www.allisonthackston.com/articles/vscode_docker_ros2.html) 
> - 原版本：https://github.com/athackst/vscode_ros2_workspace

## 1. 功能描述

### 格式化工具

IDE 中包含了 ROS2 认可的格式化工具。 

* **C++** 使用 uncrustify；配置文件来自 `ament_uncrustify`
* **Python** 使用 autopep8；vscode 的设置与[样式指南](https://docs.ros.org/en/humble/The-ROS2-Project/Contributing/Code-Style-Language-Versions.html)保持一致

### 任务

有许多预定义的任务，完整列表请参见 [`.vscode/tasks.json`](.vscode/tasks.json)。你可以根据需要调整它们。

可以参考一下[我如何使用任务进行开发](https://www.allisonthackston.com/articles/vscode_tasks.html)，了解我在开发中如何使用这些任务。

### 调试

此模板为 Python 文件、C++ 程序的 gdb 以及 ROS 启动文件设置了调试功能。配置详情请参见 [`.vscode/launch.json`](.vscode/launch.json)。

### 持续集成

该模板还设置了基本的持续集成功能。请参见 [`.github/workflows/ros.yaml`]()。

要移除某个 linter，只需从以下行中删除它的名称：

```yaml
      matrix:
          linter: [cppcheck, cpplint, uncrustify, lint_cmake, xmllint, flake8, pep257]
```

## 2. 如何使用此模板

### 2.1 前提条件

你的系统上应已安装 Docker 和 VSCode 及其远程容器插件。

* [docker](https://docs.docker.com/engine/install/)
* [vscode](https://code.visualstudio.com/)
* [vscode remote containers plugin](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### 2.2 获取模板并打开

- **获取模板**

```bash
git clone https://github.com/AllenW-Hiter/vscode_ros2_workspace.git  <你要编写代码的工作空间地址>
```

- **在 vscode 中打开模板**

```bash
cd <你要编写代码的工作空间地址>
code .
```

此时，vscode将打开模板文件夹。你将会看到一个提示：

![截图 2024-08-30 19-57-50](README.assets/README_IMAGE01.png)

- 第一回建议关闭，可以先进行修改配置文件（容器的类型等）
- 若不使用容器可以无视该项（并删除掉 `.devcontainer`）
- 若使用从容器则点击`在容器中重新打开`

### 2.3 使用 .sh 使构建更便捷

模板根目录下提供了三个 `.sh` 文件：

- `setup.sh` 用于你的代码的设置命令。默认使用`rosdep`安装依赖项。

- `build.sh` 用于你的代码的构建命令。默认使用 `--symlink-install` 选项。

- `test.sh` 用于你的代码的测试命令。
