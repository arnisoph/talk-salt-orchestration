base:
  '*':
    - match: compound
    - git
    - repos
    - tools
    - users
    - vim
    - zsh

  'E@fe[0-9]+':
    - match: compound
    - orchestration.haproxy

  'E@mw[0-9]+':
    - match: compound
    - orchestration.node
    - orchestration.haste

  'E@db[0-9]+':
    - match: compound
    - orchestration.redis
