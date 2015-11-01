redis:
  pkg:
    - installed
    - pkgs:
      - redis-server
  file:
    - managed
{% if salt['grains.get']('os_family') == 'Debian' %}
    - name: /etc/redis/redis.conf
{% else %}
    - name: /etc/redis.conf
{% endif %}
    - user: redis
    - group: redis
    - mode: 644
    - contents: |
        bind 0.0.0.0
    - watch_in:
      - service: redis
  service:
    - running
    - name: redis-server
    - enable: True
