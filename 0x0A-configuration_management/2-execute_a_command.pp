# kill s process
exec { 'killmenow_process':
    command => '/usr/bin/pkill killmenow'
}
