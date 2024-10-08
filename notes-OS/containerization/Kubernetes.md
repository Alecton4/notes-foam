---
sitemap:
  lastmod: 2024-07-19 +0000
---

# Kubernetes

Last modified: 2024-07-19 +0000

- [Interesting posts](#interesting-posts)
- [Versioning](#versioning)
- [Installation](#installation)
- [Management tool](#management-tool)
- [`kubectl`](#kubectl)
- [`kuztomize`](#kuztomize)
- [Cluster status](#cluster-status)
- [Storage](#storage)
- [Node label](#node-label)
- [Remove nodes](#remove-nodes)
- [Debug pods](#debug-pods)
- [Remove pods](#remove-pods)
- [Get shells to running pods](#get-shells-to-running-pods)
- [Get files inside pods](#get-files-inside-pods)
- [Port forward](#port-forward)
- [Helm](#helm)
    - [Troubleshooting releases](#troubleshooting-releases)

## Interesting posts

- [Borg: The Predecessor to Kubernetes \| Kubernetes](https://kubernetes.io/blog/2015/04/borg-predecessor-to-kubernetes/)
- [Introduction - Kubernetes CSI Developer Documentation](https://kubernetes-csi.github.io/docs/)
- [Kubernetes Node Vs. Pod Vs. Cluster: Key Differencestext](https://www.cloudzero.com/blog/kubernetes-node-vs-pod/)
- [A 5,5 years retrospective of working with Bare Metal Kubernetes, or To there and back \| Geek Culture](https://medium.com/geekculture/a-retrospective-of-working-with-bare-metal-kubernetes-or-to-there-and-back-1868c0356eff)
- [Demystifying Container Orchestration: A Beginner's Guide \| SUSE Communities](https://www.suse.com/c/rancher_blog/demystifying-container-orchestration-a-beginners-guide/)
- [Why is learning Kubernetes so intimidating? : devops](https://www.reddit.com/r/devops/comments/o7w9yn/why_is_learning_kubernetes_so_intimidating/)
- [Why Is Kubernetes So Hard - 4 Reasons Why And What to do About it — Release](https://release.com/blog/why-kubernetes-is-so-hard)
- [Error installing from official repos onto Ubuntu · Issue #3219 · kubernetes/release](https://github.com/kubernetes/release/issues/3219)
- [Demo Systems Infrastructure - Kubernetes \| GitLab](https://about.gitlab.com/handbook/customer-success/demo-systems/infrastructure/kubernetes/)
- [Why disable swap on kubernetes - Server Fault](https://serverfault.com/questions/881517/why-disable-swap-on-kubernetes)
- [Why Kubernetes Hates Linux Swap?. A typical computer system has two types… \| by Bhargav Bhikkaji \| Tailwinds-MajorDomo \| Medium](https://medium.com/tailwinds-navigator/kubernetes-tip-why-disable-swap-on-linux-3505f0250263)
- [deployments do not support (honor) container restartPolicy · Issue #24725 · kubernetes/kubernetes](https://github.com/kubernetes/kubernetes/issues/24725)
- [kubectl apply: Syntax, Examples, kubectl apply vs. create/replace](https://komodor.com/learn/kubectl-apply-syntax-examples-and-kubectl-apply-vs-create-vs-replace/)
- [Assign Pods to Nodes \| Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/assign-pods-nodes/)
- [Resource Management for Pods and Containers \| Kubernetes](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu)
- Mind Maps:
  - [DevOps in Kubernetes Mind Map](https://github.com/metaleapca/metaleap-devops-in-k8s/blob/main/metaleap-devops-in-k8s.pdf)
  - [Kubernetes Tools Mind Map](https://github.com/metaleapca/metaleap-k8s-tools/blob/main/metaleap-k8s-tools.pdf)
  - [K8s Troubleshooting Mind Map](https://github.com/metaleapca/metaleap-k8s-troubleshooting/blob/main/metaleap-k8s-troubleshooting.pdf)
- [Medium parser - K8s Troubleshooting — Insufficient Node Resources \| by Tony \| Geek Culture \| Medium](http://webcache.googleusercontent.com/search?q=cache:https://medium.com/geekculture/k8s-troubleshooting-insufficient-node-resources-d336968a45b0&strip=0&vwsrc=1&referer=medium-parser)
- [How to force delete a Kubernetes Namespace \| ComputingForGeeks](https://computingforgeeks.com/how-to-force-delete-a-kubernetes-namespace/)
- [Test an insecure registry \| CNCF Distribution](https://distribution.github.io/distribution/about/insecure/)
- [docker - ErrImagePull: x509: certificate signed by unknown authority - Stack Overflow](https://stackoverflow.com/questions/73136370/errimagepull-x509-certificate-signed-by-unknown-authority)
- [Red Hat OpenShift vs. OKD](https://www.redhat.com/en/topics/containers/red-hat-openshift-okd)
- [Head-first k8s](https://head-first-kubernetes.github.io/)
- [kubernetes video Series' Articles - DEV Community](https://dev.to/techworld_with_nana/series/4349)
- [Learn Kubernetes and Containers \| Rancher](https://www.rancher.com/learn-the-basics)
- [Connecting Applications with Services \| Kubernetes](https://kubernetes.io/docs/tutorials/services/connect-applications-service/)
- [mmumshad/kubernetes-the-hard-way: Bootstrap Kubernetes the hard way on Vagrant on Local Machine. No scripts.](https://github.com/mmumshad/kubernetes-the-hard-way)
- [chaseSpace/k8s-tutorial-cn: The most(might) detailed Kubernetes tutorials in Chinese. 全网最（可能）详细的Kubernetes中文教程。](https://github.com/chaseSpace/k8s-tutorial-cn)
- [easzlab/kubeasz: 使用Ansible脚本安装K8S集群，介绍组件交互原理，方便直接，不受国内网络环境影响](https://github.com/easzlab/kubeasz)
- [How to Deploy Kubernetes with Kubeadm and containerd - The New Stack](https://thenewstack.io/how-to-deploy-kubernetes-with-kubeadm-and-containerd/)
- [How to Install a Multi-Node Kubernetes Cluster on Ubuntu](https://www.atlantic.net/dedicated-server-hosting/how-to-set-up-three-node-kubernetes-cluster-on-ubuntu/)

API:

- [Kubernetes Deprecation Policy \| Kubernetes](https://kubernetes.io/docs/reference/using-api/deprecation-policy/)
- [了解 Kubernetes 中的認證機制 \| 小信豬的原始部落](https://godleon.github.io/blog/Kubernetes/k8s-API-Authentication/)

Networking:

- [Kubernetes networking model - IBM Documentation](https://www.ibm.com/docs/en/cloud-private/3.2.x?topic=networking-kubernetes-network-model)
- [CIDR Update in Kubernetes](https://kubeops.net/blog/cidr-update-in-kubernetes)

Storage:

- [Container Storage Interface (CSI) for Kubernetes GA \| Kubernetes](https://kubernetes.io/blog/2019/01/15/container-storage-interface-ga/)
- [Why K8s Secret and ConfigMap are limited to 1MiB in size \| by Able Lv \| Medium](https://able8.medium.com/why-k8s-secret-and-configmap-are-limited-to-1mib-in-size-ba79d86b0372)
- [Using Secrets as files from a Pod - Secrets \| Kubernetes](https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets-as-files-from-a-pod)
  - [Create a Pod that has access to the secret data through a Volume - Distribute Credentials Securely Using Secrets \| Kubernetes](https://kubernetes.io/docs/tasks/inject-data-application/distribute-credentials-secure/#create-a-pod-that-has-access-to-the-secret-data-through-a-volume)

Career Certifications:

- [Frequently Asked Questions: CKA and CKAD & CKS \| T&C DOCS (Candidate Facing Resources)](https://docs.linuxfoundation.org/tc-docs/certification/faq-cka-ckad-cks)
- [Introduction to Kubernetes (LFS158x) - Linux Foundation - Training](https://training.linuxfoundation.org/training/introduction-to-kubernetes/)
- [I just passed the CKA!! Here are some tips (2022) : r/kubernetes](https://www.reddit.com/r/kubernetes/comments/rzpu5i/i_just_passed_the_cka_here_are_some_tips_2022/)
- [CKA or CKAD which one is easier? : r/kubernetes](https://www.reddit.com/r/kubernetes/comments/re37bb/cka_or_ckad_which_one_is_easier/)
- [How I passed Kubernetes KCNA, CKAD, CKA, and CKS exams. My experience. Exam tips and tricks.](https://gist.github.com/bakavets/05681473ca617579156de033ba40ee7a)
- [Do I really need a CKA certification?: Naeem Gitonga](https://naeemgitonga.com/articles/do-i-need-a-cka)

## Versioning

*References*:

- [kubernetes/CHANGELOG/CHANGELOG-1.28.md at master · kubernetes/kubernetes](https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG/CHANGELOG-1.28.md)
- [Releases \| Kubernetes](https://kubernetes.io/releases/)
- [Version Skew Policy \| Kubernetes](https://kubernetes.io/releases/version-skew-policy/)

## Installation

```bash
# Install on Ubuntu 22.04 using apt
K8S_VERSION="v1.29"
K8S_TOOL_VERSION="1.29.2-1.1"
curl -fsSL https://pkgs.k8s.io/core:/stable:/$K8S_VERSION/deb/Release.key |
    gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg >/dev/null
chmod a+r /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/$K8S_VERSION/deb/ /" |
    tee /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get --yes install \
    kubelet=$K8S_TOOL_VERSION \
    kubeadm=$K8S_TOOL_VERSION \
    kubectl=$K8S_TOOL_VERSION
apt-mark hold \
    kubelet \
    kubeadm \
    kubectl

# Using official binaries
K8S_VERSION="1.28.6"
ETCD_VERSION="3.5.10"
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
curl "${CURL_COMMON_OPTIONS[@]}" https://dl.k8s.io/v$K8S_VERSION/kubernetes-node-linux-amd64.tar.gz |
    tar "${TAR_COMMON_OPTIONS[@]}" --strip-components=3 --wildcards 'kubernetes/node/bin/*'
curl "${CURL_COMMON_OPTIONS[@]}" https://github.com/etcd-io/etcd/releases/download/v$ETCD_VERSION/etcd-v$ETCD_VERSION-linux-amd64.tar.gz |
    tar "${TAR_COMMON_OPTIONS[@]}" --strip-components=1 --wildcards 'etcd-v*/etcd*'
```

```bash
# Install on Ubuntu 22.04 using apt
HELM_VERSION="3.14.2-1"
curl https://baltocdn.com/helm/signing.asc |
    gpg --dearmor |
    tee /usr/share/keyrings/helm.gpg >/dev/null
chmod a+r /usr/share/keyrings/helm.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" |
    tee /etc/apt/sources.list.d/helm-stable-debian.list
apt-get update
apt-get --yes install helm=$HELM_VERSION
apt-mark hold helm

# Using official binaries
HELM_VERSION="3.13.1"
curl "${CURL_COMMON_OPTIONS[@]}" https://get.helm.sh/helm-v$HELM_VERSION-linux-amd64.tar.gz |
    tar "${TAR_COMMON_OPTIONS[@]}" --strip-components 1 --wildcards 'linux-amd64/helm'
```

## Management tool

*References*:

- [Kubernetes technologies: Kubeadm vs MiniKube, Kind and K3S](https://www.padok.fr/en/blog/minikube-kubeadm-kind-k3s)

## `kubectl`

*References*:

- [Command line tool (kubectl) \| Kubernetes](https://kubernetes.io/docs/reference/kubectl/)
- [kubectl Usage Conventions \| Kubernetes](https://kubernetes.io/docs/reference/kubectl/conventions/)
- [Kubectl Reference Docs](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)

## `kuztomize`

*References*:

- Official site: [Kustomize - Kubernetes native configuration management](https://kustomize.io/)
- Official guide: [Kustomize \| SIG CLI](https://kubectl.docs.kubernetes.io/guides/introduction/kustomize/)
- Official reference: [Kustomize \| SIG CLI](https://kubectl.docs.kubernetes.io/references/kustomize/)
- [kubectl kustomize \| Kubernetes](https://kubernetes.io/docs/reference/kubectl/generated/kubectl_kustomize/)
- [Declarative Management of Kubernetes Objects Using Kustomize \| Kubernetes](https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization/)
- [Managing Secrets using Kustomize \| Kubernetes](https://kubernetes.io/docs/tasks/configmap-secret/managing-secret-using-kustomize/)
- [Configure Kubernetes with Kustomize  \|  Config Sync  \|  Google Cloud](https://cloud.google.com/kubernetes-engine/enterprise/config-sync/docs/concepts/kustomize)
- [A Quick Introduction to Kustomize \| by Neron Joseph \| Medium](https://neron-joseph.medium.com/a-quick-introduction-to-kustomize-172a6512beaf)

## Cluster status

*References*:

- [My worker node status is Ready,SchedulingDisabled](https://stackoverflow.com/questions/55432764/my-worker-node-status-is-ready-schedulingdisabled)
- [How to List All Pods and Its Nodes in Kubernetes \| Baeldung on Ops](https://www.baeldung.com/ops/kubernetes-list-every-pod-node)
- [componentstatuses doesn't work when Scheduler and Controller Manager are running on secure port · Issue #93342 · kubernetes/kubernetes](https://github.com/kubernetes/kubernetes/issues/93342)
  - [kubernetes/CHANGELOG/CHANGELOG-1.19.md at master · kubernetes/kubernetes](https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG/CHANGELOG-1.19.md#deprecation):
    > Kube-apiserver: the componentstatus API is deprecated. This API provided status of etcd, kube-scheduler, and kube-controller-manager components, but only worked when those components were local to the API server, and when kube-scheduler and kube-controller-manager exposed unsecured health endpoints. Instead of this API, etcd health is included in the kube-apiserver health check and kube-scheduler/kube-controller-manager health checks can be made directly against those components' health endpoints.
- [List All Resources in a Namespace in Kubernetes \| Baeldung on Ops](https://www.baeldung.com/ops/kubernetes-list-all-resources)
- [kubectl - How do you find the cluster & service CIDR of a Kubernetes cluster? - Stack Overflow](https://stackoverflow.com/questions/44190607/how-do-you-find-the-cluster-service-cidr-of-a-kubernetes-cluster)

## Storage

*References*:

- [`hostPath`](https://kubernetes.io/docs/concepts/storage/volumes/#hostpath)

## Node label

*References*:

- [How to Label Kubernetes Nodes (and Remove it Later)](https://linuxhandbook.com/kubectl-label-node/)

## Remove nodes

*References*:

- [How to gracefully remove a node from Kubernetes?](https://stackoverflow.com/questions/35757620/how-to-gracefully-remove-a-node-from-kubernetes)

## Debug pods

*References*:

- [Monitoring, Logging, and Debugging \| Kubernetes](https://kubernetes.io/docs/tasks/debug/)
- [Debug Init Containers \| Kubernetes](https://kubernetes.io/docs/tasks/debug/debug-application/debug-init-containers/)
- [Kubectl Reference Docs](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#logs)
- [Kubernetes troubleshooting: 6 ways to find and fix issues \| Enable Sysadmin](https://www.redhat.com/sysadmin/kubernetes-troubleshooting)
- [How to Debug Kubernetes Pending Pods and Scheduling Failures \| Datadog](https://www.datadoghq.com/blog/debug-kubernetes-pending-pods/)
- [docker - K8s cannot schedule new pods to worker nodes even though there are enough resources - Stack Overflow](https://stackoverflow.com/questions/71733396/k8s-cannot-schedule-new-pods-to-worker-nodes-even-though-there-are-enough-resour)

## Remove pods

*References*:

- [Force Delete StatefulSet Pods \| Kubernetes](https://kubernetes.io/docs/tasks/run-application/force-delete-stateful-set-pod/)
- [Remove Daemonset pod from a node](https://stackoverflow.com/questions/48078196/remove-daemonset-pod-from-a-node)

## Get shells to running pods

Use the following commands:

```bash
kubectl exec -it POD_NAME -- bash

# full form
kubectl exec --stdin --tty POD_NAME --container CONTAINER_NAME -- /bin/bash
```

*References*:

- [Get a Shell to a Running Container \| Kubernetes](https://kubernetes.io/docs/tasks/debug/debug-application/get-shell-running-container/)

## Get files inside pods

```bash
# Copy /tmp/foo_dir local directory to /tmp/bar_dir in a remote pod in the default namespace
kubectl cp /tmp/foo_dir SOME_POD:/tmp/bar_dir

# Copy /tmp/foo local file to /tmp/bar in a remote pod in a specific container
kubectl cp /tmp/foo SOME_POD:/tmp/bar -c SPECIFIC_CONTAINER

# Copy /tmp/foo local file to /tmp/bar in a remote pod in namespace <some-namespace>
kubectl cp /tmp/foo SOME_NAMESPACE/SOME_POD:/tmp/bar

# Copy /tmp/bar from a remote pod to /tmp/foo locally
kubectl cp SOME_NAMESPACE/SOME_POD:/tmp/bar /tmp/foo
```

*References*:

- [azure aks - How to copy files from kubernetes Pods to local system - Stack Overflow](https://stackoverflow.com/questions/52407277/how-to-copy-files-from-kubernetes-pods-to-local-system)

## Port forward

*References*:

- [Use Port Forwarding to Access Applications in a Cluster \| Kubernetes](https://kubernetes.io/docs/tasks/access-application-cluster/port-forward-access-application-cluster/)
- [kubernetes - how to undo a kubectl port-forward - Stack Overflow](https://stackoverflow.com/questions/37288500/how-to-undo-a-kubectl-port-forward)

## Helm

*References*:

- [Helm \| Built-in Objects](https://helm.sh/docs/chart_template_guide/builtin_objects/)
- [Helm \| Helm Dependency](https://helm.sh/docs/helm/helm_dependency/)
- All about “Helm”- The Package Manager for Kubernetes:
  - [All about Helm- The Package Manager for Kubernetes Part 1 - BuildPiper](https://www.buildpiper.io/blogs/all-about-helm-the-package-manager-for-kubernetes-part-1/)
  - [All about Helm- The Package Manager for Kubernetes Part 2 - BuildPiper](https://www.buildpiper.io/blogs/all-about-helm-the-package-manager-for-kubernetes-part-2/)
- [kubernetes - UPGRADE FAILED: another operation (install/upgrade/rollback) is in progress - Stack Overflow](https://stackoverflow.com/questions/71599858/upgrade-failed-another-operation-install-upgrade-rollback-is-in-progress)
- [Helm 'delete' doesn't delete PVCs · Issue #5156 · helm/helm](https://github.com/helm/helm/issues/5156)
- [Helm delete all releases - Stack Overflow](https://stackoverflow.com/questions/47817818/helm-delete-all-releases)

### Troubleshooting releases

- `helm get manifest RELEASE`
- `helm install --debug --dry-run RELEASE ./CHART`
