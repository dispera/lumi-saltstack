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

restart-webapp:
  cmd.run:
    name: 'stop webapp && start webapp'
