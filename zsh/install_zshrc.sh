set +x
ZSHRC_FILE=~/.zshrc
ZSHRC_BACKUP_FILE=~/.zshrc.backup

if test -f "$ZSHRC_FILE"; then
    cp $ZSHRC_FILE $ZSHRC_BACKUP_FILE
fi

SCRIPT_DIR=$(cd -P -- "$(dirname -- "$0")" && printf '%s\n' "$(pwd -P)/$(basename -- "$0")")
SCRIPT_DIR="$(dirname -- $SCRIPT_DIR)"
cp $SCRIPT_DIR/.zshrc $ZSHRC_FILE
