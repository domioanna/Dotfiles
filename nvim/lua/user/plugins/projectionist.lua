vim.g.projectionist_heuristics = {
    artisan = {
        ['*'] = {
            start = 'php artisan serve',
            console = 'php artisan tinker',
        },
        ['app/*.php'] = {
            type = 'source',
            alternate = {
                'tests/Unit/{}Test.php',
                'tests/Feature/{}Test.php',
            },
        },
        ['src/*.php'] = {
            type = 'source',
            alternate = {
                'tests/Unit/{}Test.php',
                'tests/Feature/{}Test.php',
            },
        },
        ['test/Feature/*Test.php'] = {
            type = 'test',
            alternate = {
                'app/{}.php',
                'src/{}.php',
            },
        },
        ['test/Unit/*Test.php'] = {
            type = 'test',
            alternate = {
                'app/{}.php',
                'src/{}.php',
            },
        },
        ['app/Models/*.php'] = {
            type = 'model',
        },
        ['app/Http/Controllers/*.php'] = {
            type = 'controller',
        },
        ['routes/*.php'] = {
            type = 'route',
        },
        ['database/migration/*.php'] = {
            type = 'migration',
        },
    }
}
