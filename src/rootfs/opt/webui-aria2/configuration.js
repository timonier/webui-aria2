angular
    .module('webui.services.configuration', [])
    .constant('$name', 'Aria2 WebUI')
    .constant('$titlePattern', 'active: {active} - waiting: {waiting} - stopped: {stopped} — {name}')
    .constant('$pageSize', 11)
    .constant('$authconf', {
        host: '{{ default .Env.RPC_HOST "127.0.0.1" }}',
        path: '/jsonrpc',
        port: '{{ default .Env.RPC_PORT "6800" }}',
        encrypt: false,
        auth: {
            token: '{{ default .Env.RPC_SECRET "" }}'
        },
        directURL: ''
    })
    .constant('$enable', {
        torrent: true,
        metalink: true,
        sidebar: {
            show: true,
            stats: true,
            filters: true,
            starredProps: false
        }
    })
    .constant('$starredProps', [
        'dir', 'conf-path', 'auto-file-renaming', 'max-connection-per-server'
    ])
    .constant('$downloadProps', [
        'http-user', 'http-passwd', 'pause', 'dir', 'max-connection-per-server'
    ])
    .constant('$globalTimeout', 1000)
;
