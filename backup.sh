# Backup all of /home and /var/www except a few
# excluded directories
borg create -v --stats --progress                         \
    /Volumes/stacky/oxygen::'{now:%Y-%m-%d}'    \
    /                                       \
    --patterns-from="/Users/neelredkar/borg-exclude.lst"
