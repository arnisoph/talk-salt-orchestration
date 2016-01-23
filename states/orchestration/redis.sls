redis:
  pkg:
    - installed
    - pkgs:
      - redis
  file:
    - managed
{% if salt['grains.get']('os_family') == 'Debian' %}
    - name: /etc/redis/redis.conf
{% else %}
    - name: /etc/redis.conf
{% endif %}
    - source: salt://orchestration/files/redis.conf
    - user: redis
    - group: redis
    - mode: 644
    - watch_in:
      - service: redis
  service:
    - running
    - name: redis-server
    - enable: True
