#  Docker 使用 althack/ros2:humble-dev 作为基础镜像。这个镜像通常已经包含了 ROS 2 humble 版本的开发环境。
FROM althack/ros2:humble-dev 

# ** [可选] 在镜像中安装额外的软件包 **
#
# ENV DEBIAN_FRONTEND=noninteractive 
# RUN apt-get update \
#    && apt-get -y install --no-install-recommends <your-package-list-here> \
#    #
#    # Clean up
#    && apt-get autoremove -y \
#    && apt-get clean -y \
#    && rm -rf /var/lib/apt/lists/*
# ENV DEBIAN_FRONTEND=dialog

# 为 ROS2 使用者构建一个工作空间
ARG WORKSPACE
RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc
