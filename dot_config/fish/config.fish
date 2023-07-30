if status is-interactive
    if test -n "$COLORSCHEME_FISH"
        set colorscheme $COLORSCHEME_FISH
    else
        set colorscheme 'kanagawa.fish'
    end
    source "$__fish_config_dir/themes/$colorscheme"
    source "$__fish_config_dir/chronon_secrets.fish"
    source "$__fish_config_dir/chronon_settings.fish"
    source "$__fish_config_dir/chronon_abbreviations.fish"
    source "$__fish_config_dir/loadsys_abbreviations.fish"

    # functions
    function dcmach
        if not string length -q -- $argv[1]
            echo 'Usage: dcmach [STACK]'
            return 0
        end

        set -l stack $argv[1]
        set -l args $argv[2]
        set -l flags $argv[3]

        docker compose -f compose-$stack.yml $args $flags
    end

    function battail
        if not string length -q -- $argv
            echo 'Usage: battail [PATH]'
            return 0
        end
        tail -f $argv | bat --paging=never --style=numbers --language log
    end

    fzf_configure_bindings --history=\e\cr
end
