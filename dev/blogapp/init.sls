/etc/lumiserv/webapp.py:
  file:
    - managed
    - source: salt://blogapp/webapp.py
    - user: root
    - group: root
    - mode: 644
    - makedirs: True

restart-webapp:
  cmd.run:
    - name: 'stop webapp && start webapp 2>/dev/null'
