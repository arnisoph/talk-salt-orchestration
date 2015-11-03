update_haproxy_config: # Manual Command: salt host123 state.sls mods=orchestration.haproxy
  local.state.sls:
    - name: update haproxy config
    - tgt: fe*
    - arg:
      - orchestration.haproxy
