/etc/nginx/sites-available/webapp:
  file:
    - managed
    - source: salt://nginx/sites-enabled/webapp
    - user: root
    - group: root
    - mode: 644
    - makedirs: True

nginx: 
  pkg: 
    - installed 
  service: 
    - running 
    - watch: 
      - pkg: nginx 
      - file: /etc/nginx/nginx.conf

/etc/nginx/nginx.conf: 
  file:
    - managed
    - source: salt://nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx


