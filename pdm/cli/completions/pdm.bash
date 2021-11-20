# BASH completion script for pdm
# Generated by pycomplete 0.3.2

_pdm_25182a7ef85b840e_complete()
{
    local cur script coms opts com
    COMPREPLY=()
    _get_comp_words_by_ref -n : cur words

    # for an alias, get the real script behind it
    if [[ $(type -t ${words[0]}) == "alias" ]]; then
        script=$(alias ${words[0]} | sed -E "s/alias ${words[0]}='(.*)'/\\1/")
    else
        script=${words[0]}
    fi

    # lookup for command
    for word in ${words[@]:1}; do
        if [[ $word != -* ]]; then
            com=$word
            break
        fi
    done

    # completing for an option
    if [[ ${cur} == --* ]] ; then
        opts="--help --ignore-python --pep582 --verbose --version"

        case "$com" in

            (add)
            opts="--dev --editable --global --dry-run --group --help --no-editable --no-self --no-sync --project --save-compatible --save-exact --save-wildcard --save-minimum --unconstrained --update-eager --update-reuse --verbose --no-isolation"
            ;;

            (build)
            opts="--config-setting --dest --help --no-clean --no-sdist --no-wheel --project --verbose --no-isolation"
            ;;

            (cache)
            opts="--help --verbose"
            ;;

            (completion)
            opts="--help"
            ;;

            (config)
            opts="--delete --global --help --local --project --verbose"
            ;;

            (export)
            opts="--dev --format --global --group --help --no-default --output --production --project --pyproject --verbose --without-hashes"
            ;;

            (import)
            opts="--dev --format --global --group --help --project --verbose"
            ;;

            (info)
            opts="--env --global --help --packages --project --python --verbose --where"
            ;;

            (init)
            opts="--global --help --non-interactive --project --verbose"
            ;;

            (install)
            opts="--dev --global --group --help --dry-run --no-default --no-editable --no-lock --no-self --production --project --verbose --no-isolation"
            ;;

            (list)
            opts="--freeze --global --graph --help --json --project --reverse --verbose"
            ;;

            (lock)
            opts="--global --help --project --verbose --no-isolation"
            ;;

            (plugin)
            opts="--help --verbose"
            ;;

            (remove)
            opts="--dev --global --group --help--dry-run --no-editable --no-self --no-sync --project --verbose --no-isolation"
            ;;

            (run)
            opts="--global --help --list --project --verbose --site-packages"
            ;;

            (search)
            opts="--help --verbose"
            ;;

            (show)
            opts="--global --help --keywords --license --name --platform --project --summary --verbose --version"
            ;;

            (sync)
            opts="--clean --dev --dry-run --global --group --help --no-clean --no-default --no-editable --no-self --production --project --reinstall --verbose --no-isolation"
            ;;

            (update)
            opts="--dev --global --group --help --no-default --no-editable --no-sync --no-self --outdated --production --project --save-compatible --save-exact --save-wildcard --save-minimum --top --unconstrained --update-eager --update-reuse --verbose --no-isolation"
            ;;

            (use)
            opts="--first --global --help --project --verbose"
            ;;

        esac

        COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        __ltrim_colon_completions "$cur"

        return 0;
    fi

    # completing for a command
    if [[ $cur == $com ]]; then
        coms="add build cache completion config export import info init install list lock plugin remove run search show sync update use"

        COMPREPLY=($(compgen -W "${coms}" -- ${cur}))
        __ltrim_colon_completions "$cur"

        return 0
    fi
}

complete -o default -F _pdm_25182a7ef85b840e_complete pdm
