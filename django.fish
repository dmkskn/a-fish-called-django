function django -d "Use the command `django` instead of `python manage.py` or `django-admin`"
    if not command -v django-admin
        echo "Django has not been found."
        return 127
    end

    if test -e "$PWD/manage.py"
        python manage.py $argv
    else
        django-admin $argv
    end
end

