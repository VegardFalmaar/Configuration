# install onedrive

set_up_teams_folder () {
    team=$1
    dir_name=$2
    echo Setting up local folder $dir_name for SharePoint folder
    echo $team
    echo

    config_folder="/home/vegard/.config/${dir_name}"
    local_folder="/home/vegard/Teams/${dir_name}"

    echo Creating config folder $config_folder
    mkdir -p $config_folder
    echo Creating local folder $local_folder
    mkdir -p $local_folder

    onedrive --get-O365-drive-id "${team}"
    read -p 'Enter drive_id: ' drive_id

    wget https://raw.githubusercontent.com/abraunegg/onedrive/master/config -O "${config_folder}/config"
    echo sync_dir = \"${local_folder}\" >> "${config_folder}/config"
    echo drive_id = \"${drive_id}\" >> "${config_folder}/config"

    onedrive --confdir="${config_folder}" --display-config

    echo
    echo Verify config details \(config path, config file found, drive_id, sync_dir\) and run
    echo onedrive --confdir=\"${config_folder}\" --synchronize
    echo if everything is all right
}

# set_up_teams_folder "BÆ Matematikk 1T 1A 2023-24 Vegard Falmår" "Undervisningsmateriell_1T_23-24"
set_up_teams_folder "BÆ Matematikk S1 Gr 1 2023-24 Vegard Falmår" "Undervisningsmateriell_S1_23-24"
