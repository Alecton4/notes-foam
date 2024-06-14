# containerd

Last modified: 2024/03/06 UTC

- [Interesting posts](#interesting-posts)
- [Installation](#installation)
- [Manage images](#manage-images)
- [Networking](#networking)

## Interesting posts

- [containerd – An industry-standard container runtime with an emphasis on simplicity, robustness and portability](https://containerd.io/downloads/)
  - [Release: add static binaries · Issue #7296 · containerd/containerd](https://github.com/containerd/containerd/issues/7296)
- [What Is a Standard Container: Diving Into the OCI Runtime Spec](https://iximiuz.com/en/posts/oci-containers/)
- [nerdctl: Docker-compatible CLI for contaiNERD \| by Akihiro Suda \| nttlabs \| Medium](https://medium.com/nttlabs/nerdctl-359311b32d0e)
- [Docker vs Containerd vs RunC. Runc and Containerd are both… \| by Bibhu Mishra \| Medium](https://medium.com/@bibhup_mishra/docker-vs-containerd-vs-runc-c39ffd4156fb)

## Installation

```bash
# Uninstall all conflicting packages.
local non_official_pkgs=(
    docker.io
    docker-doc
    docker-compose
    docker-compose-v2
    podman-docker
    containerd
    runc
)
for pkg in "${non_official_pkgs[@]}"; do
    apt-get remove "$pkg"
done

# Install on Ubuntu 22.04 using apt
CONTAINERD_VERSION="1.6.28-1"
DOCKER_VERSION="5:25.0.3-1~ubuntu.22.04~jammy"
DOCKER_BUILDX_VERSION="0.12.1-1~ubuntu.22.04~jammy"
DOCKER_COMPOSE_VERSION="2.24.6-1~ubuntu.22.04~jammy"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |
    gpg --dearmor -o /etc/apt/keyrings/docker.gpg >/dev/null
chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |
    tee /etc/apt/sources.list.d/docker.list
apt-get update
apt-get --yes install \
    containerd.io=$CONTAINERD_VERSION \
    docker-ce=$DOCKER_VERSION \
    docker-ce-cli=$DOCKER_VERSION \
    docker-buildx-plugin=$DOCKER_BUILDX_VERSION \
    docker-compose-plugin=$DOCKER_COMPOSE_VERSION
apt-mark hold \
    containerd.io \
    docker-ce \
    docker-ce-cli \
    docker-buildx-plugin \
    docker-compose-plugin

# Using official binaries #1
CONTAINERD_VERSION="1.7.13"
# mkdir -p "$HOME"/containerd_download
# wget -P "$HOME"/containerd_download https://github.com/containerd/containerd/releases/download/v$CONTAINERD_VERSION/containerd-$CONTAINERD_VERSION-linux-amd64.tar.gz
# tar -xvf "$HOME"/containerd_download/containerd-$CONTAINERD_VERSION-linux-amd64.tar.gz -C "$HOME"/containerd_download
# mv "$HOME"/containerd_download/bin/* /usr/local/bin
# rm -rf "$HOME"/containerd_download

# Using official binaries #2
# wget -O- https://github.com/containerd/containerd/releases/download/v$CONTAINERD_VERSION/containerd-$CONTAINERD_VERSION-linux-amd64.tar.gz |
#     tar -zxv --overwrite -f - -C /usr/local/bin --strip-components=1

# Using official binaries #3
INSTALL_DIR="/usr/local/bin"
CURL_COMMON_OPTIONS=(
    --fail
    --location
    --show-error
    --silent
)
TAR_COMMON_OPTIONS=(
    --extract
    --gzip
    --overwrite
    --verbose

    --file -
    --directory "$INSTALL_DIR"
)
curl "${CURL_COMMON_OPTIONS[@]}" https://github.com/containerd/containerd/releases/download/v$CONTAINERD_VERSION/containerd-$CONTAINERD_VERSION-linux-amd64.tar.gz |
    tar "${TAR_COMMON_OPTIONS[@]}" --strip-components=1
```

*References*:

- [How to Install Containerd Container Runtime on Ubuntu 22.04](https://www.howtoforge.com/how-to-install-containerd-container-runtime-on-ubuntu-22-04/)
- [How to Install Containerd on Ubuntu 22.04 / Ubuntu 20.04 \| ITzGeek](https://www.itzgeek.com/how-tos/linux/ubuntu-how-tos/install-containerd-on-ubuntu-22-04.html)

## Manage images

*References*:

- [How to work with container images using ctr](https://labs.iximiuz.com/courses/containerd-cli/ctr/image-management)
- [Manually Loading Container Images with containerD - Scott's Weblog - The weblog of an IT pro focusing on cloud computing, Kubernetes, Linux, containers, and networking](https://blog.scottlowe.org/2020/01/25/manually-loading-container-images-with-containerd/)

## Networking

Challenges to review:

- [Access a Docker Container With No Published Ports \| Challenge](https://labs.iximiuz.com/challenges/access-docker-container-with-no-published-ports)