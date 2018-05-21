visualcode_repo:
  file.managed:
    - source: salt://repos/vscode.repo
    - name: /etc/zypp/repos.d/vscode.repo

installed_packages:
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
      - file: visualcode_repo
