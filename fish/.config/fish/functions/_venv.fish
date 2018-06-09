# Defined in /tmp/fish.6lbRWI/_venv.fish @ line 1
function _venv --on-variable PWD
	if set -q VIRTUAL_ENV
      and string match "$VIRTUAL_ENV/" "$PWD/"
        return
    end

    set -l current_dir (readlink -f "$PWD")
    set -l venv

    while test -z "$venv" -a "$current_dir" != "/"
        if test -d "$current_dir/.venv"
            set venv "$current_dir/.venv"
        end
        set current_dir (dirname "$current_dir")
    end

    if test -n "$venv"
        source "$venv/bin/activate.fish"
    else if set -q VIRTUAL_ENV
        deactivate
    end
end
