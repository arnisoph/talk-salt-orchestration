base:
  '*':
    - match: compound
    - orchestration.common
    - orchestration.private
    - orchestration.zsh

  'E@mw[0-9]+':
    - match: compound
    - orchestration.node

  'E@db[0-9]+':
    - match: compound
    - orchestration.redis
