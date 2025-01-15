
backup_folder=$(date '+%Y-%m-%d_%I%p') ### ex. 2024-11-26_02PM
working_dir=/home/plyadmin/repos/gitlab_self_hosted/
# backup_dir=$working_dir/gitlab_backups/$backup_folder
backup_dir=$working_dir/$backup_folder
mkdir $backup_dir

docker exec -it gitlab gitlab-backup create
mv $working_dir/srv/gitlab/data/backups/* $backup_dir

chown -R plyadmin $backup_dir/