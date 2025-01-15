backup_folder=$(date '+%Y-%m-%d_%I%p') ### ex. 2024-11-26_02PM
working_dir=/home/plyadmin/repos/gitlab_self_hosted
# backup_dir=$working_dir/gitlab_backups/$backup_folder
backup_dir=$working_dir/$backup_folder
cp $working_dir/srv/gitlab/config/gitlab-secrets.json $backup_dir

new_folder=/mnt/ply-fp-11_it/polygit_backups/$backup_folder/
mkdir $new_folder

cp $working_dir/$backup_folder/* $new_folder
mv $backup_dir $working_dir/gitlab_backups