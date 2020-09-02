#!/bin/sh
rsync -avzP --delete /home/hm/Nutstore /run/media/hm/Media/nutstore
rsync -avzP --delete --exclude-from /home/hm/tools/backup-fedora.exclude.list /home/hm /run/media/hm/backup/fedora/home/
