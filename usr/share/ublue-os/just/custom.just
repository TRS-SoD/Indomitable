!include /usr/share/ublue-os/just/bling.just

setup-flatpaks:
  #!/usr/bin/env bash
  echo 'Installing flatpaks from the ublue recipe ...'
  flatpaks=$(yq -- '.firstboot.flatpaks[]' "/usr/share/ublue-os/recipe.yml")
  for pkg in $flatpaks; do \
      echo "Installing: ${pkg}" && \
      flatpak install --user --noninteractive flathub $pkg; \
  done

# Include some of your custom scripts here!

setup-flatpak-repos:
  #!/usr/bin/env bash
  echo 'Enabling flatpak repos'
  flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo
  flatpak remote-add --if-not-exists --user flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
  flatpak remote-add --if-not-exists --user kdeapps-nightly https://distribute.kde.org/kdeapps.flatpakrepo
  flatpak remote-add --if-not-exists --user gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo
  flatpak remote-add --if-not-exists --user elemenetoryos-appcenter https://flatpak.elementary.io/repo.flatpakrepo
