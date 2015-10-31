haproxy:
  pkg:
    - installed
    - pkgs:
      - haproxy
  file:
    - managed
    - name: /etc/haproxy/haproxy.cfg
    - source: salt://orchestration/files/haproxy.cfg
    - user: root
    - group: root
    - mode: 640
    - template: jinja
    - watch_in:
      - service: haproxy
  service:
    - running
    - enable: True
