# Use the official Fedora Kinoite (KDE) base image
FROM quay.io/fedora-ostree-desktops/kinoite:44

# Add third-party repositories if needed (e.g., RPM Fusion)
RUN dnf config-manager --add-repo https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-freeflow.repo

# Install native packages directly into the image
RUN dnf install -y \
    distrobox \
    merkuro \
    && dnf clean all

# Copy system configurations directly to /etc or /usr
# Example: Adding a custom policy or configuration file
# COPY custom-policy.json /etc/containers/policy.json

# If you need to enable systemd services, do it here
#RUN systemctl enable tailscaled.service || true
