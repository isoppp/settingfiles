set -x PGDATA /usr/local/var/postgres
status --is-interactive; and source (nodenv init -|psub)
status --is-interactive; and source (rbenv init -|psub)
