repo-for-visualcode:
  cmd.run:
    - name: sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

repo-content-for-visualcode:
  cmd.run:
    - name: sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/zypp/repos.d/vscode.repo'
    - require:
      - cmd: repo-for-visualcode

installed-packages:
  pkg.installed:
    - names:
      - vim
      - nmap
      - git
      - code
      - MozillaFirefox
      - MozillaThunderbird
      - skypeforlinux
    - require:
      - cmd: repo-content-for-visualcode
