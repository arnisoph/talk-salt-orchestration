sync_custom_modules: # Manual Command: salt host123 saltutil.syncall
  local.saltutil.sync_all:
    - name: sync custom salt modules to minion
    - tgt: {{ data['id'] }}

bootstrap_minion: # Manual Command: salt host123 state.sls mods=orchestration.bootstrap
  local.state.sls:
    - name: bootstrap minion
    - tgt: {{ data['id'] }}
    - arg:
      - orchestration.bootstrap
