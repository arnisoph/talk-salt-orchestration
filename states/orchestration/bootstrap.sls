salt_minion:
  file:
    - managed
    - name: /etc/salt/minion
    - source: salt://orchestration/files/minion
    - user: root
    - group: root
    - mode: 640
    - template: jinja
    - watch_in:
      - service: salt_minion
  service:
    - running
    - name: salt-minion
    - enable: True

minion_config_updated:
  module:
    - run
    - name: state.highstate
    - watch:
      - file: salt_minion
    - require:
      - service: salt_minion
