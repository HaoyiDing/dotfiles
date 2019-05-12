New-Alias -Name cnpm -Value Start-Cnpm

function Start-Cnpm {
    npm --registry=https://registry.npm.taobao.org `
    --cache=$HOME/.npm/.cache/cnpm `
    --disturl=https://npm.taobao.org/mirrors/node `
    --userconfig=$HOME/.cnpmrc `
    $args
}
