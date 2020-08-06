$input = $args[0]
$shell = new-object -comobject "Shell.Application"
$path = ( Resolve-Path -Path $input )
$item = $shell.Namespace(0).ParseName("$path")
$item.InvokeVerb("delete")

