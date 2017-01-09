gunicorn:
  pkg:
    - installed

/etc/lumiserv:
  file.directory:
    - user: ubuntu
    - group: www-data
    - mode: 755
    - makedirs: True

/etc/lumiserv/wsgi.py:
  file:
    - managed
    - source: salt://gunicorn/wsgi.py
    - makedirs: True

/etc/init/webapp.conf:
  file:
    - managed
    - source: salt://gunicorn/webapp.conf

/etc/lumiserv/restart-webapp.sh:
  file:
    - managed
    - source: salt://gunicorn/restart-webapp.sh
    - user: root
    - group: root
    - mode: 744
  cmd.run:
    - name: /etc/lumiserv/restart-webapp.sh
    - onchanges:
      - file: /etc/lumiserv/webapp.py
