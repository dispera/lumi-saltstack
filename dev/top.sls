dev:          # Apply SLS files from the directory root for the 'dev' environment
  '*':      # All minions wwill have the above state files
    - flask   # Apply the state file named 'flask.sls'
    - gunicorn
    - nginx
