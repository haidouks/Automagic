function topla([int[]]$sayilar) {
    return ($sayilar | Measure-Object -Sum | Select-Object -ExpandProperty Sum)
}

