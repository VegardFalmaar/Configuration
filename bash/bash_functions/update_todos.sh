archive_notes () {
    if [[ "${#}" == "0" ]]; then
        echo "Supply the new filename as an argument."
        return 1
    fi

    old_fname="9999-current.md"
    new_fname=$1

    read -p "Archive current todos as '${new_fname}'? Type 'yes' to confirm: " ansr

    d1="${HOME}/Dropbox/Vegard og Kamilla/TODO"
    d2="${HOME}/Dropbox/TODO"

    if [[ $ansr == "yes" ]]; then
        for d in "${d1}" "${d2}"; do
            echo "Copying \"${d}/${old_fname}\" \"${d}/${new_fname}\""
            cp "${d}/${old_fname}" "${d}/${new_fname}"
        done
    fi

    return 0
}
