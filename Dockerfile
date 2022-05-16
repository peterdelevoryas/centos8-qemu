FROM centos:8
RUN dnf --disablerepo '*' --enablerepo=extras swap centos-linux-repos centos-stream-repos -y
RUN dnf distro-sync -y
RUN dnf install 'dnf-command(config-manager)' -y
RUN dnf config-manager --set-enabled powertools
RUN dnf install -y git python36 make ninja-build gcc glib2-devel pixman-devel bzip2 zlib-devel perl-Test-Harness
