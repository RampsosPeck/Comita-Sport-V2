<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Invoice - #123</title>

    <style type="text/css">
        @page {
            margin: 0px;
        }
        body {
            margin: 0px;
        }
        * {
            font-family: Verdana, Arial, sans-serif;
        }
        a {
            color: #fff;
            text-decoration: none;
        }
        table {
            font-size: x-small;
        }
        tfoot tr td {
            font-weight: bold;
            font-size: x-small;
        }
        .invoice table {
            margin: 15px;
        }
        .invoice h3 {
            margin-left: 15px;
        }
        .information {
            background-color: #60A7A6;
            color: #FFF;
        }
        .information .logo {
            margin: 5px;
        }
        .information table {
            padding: 10px;
        }
    </style>

</head>
<body>

<div class="information">
    <table width="100%">
        <tr>
            <td align="left" style="width: 40%;">
                <h3>John Doe</h3>
                <pre>
                Street 15
                123456 City
                United Kingdom
                <br /><br />
                Date: 2018-01-01
                Identifier: #uniquehash
                Status: Paid
                </pre>
            </td>
            <td align="center">
                <img src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.itmplatform.com%2Fes%2Fblog%2Ftodo-lo-que-debes-incluir-en-un-reporte-de-estado-de-proyecto%2F&psig=AOvVaw2ADnlvPxjDviduHRtHaNFn&ust=1594276797513000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOCe74SGveoCFQAAAAAdAAAAABAD" alt="Logo" width="64" class="logo"/>
            </td>
            <td align="right" style="width: 40%;">

                <h3>CompanyName</h3>
                <pre>
                    https://company.com

                    Street 26
                    123456 City
                    United Kingdom
                </pre>
            </td>
        </tr>

    </table>
</div>


<br/>

<div class="invoice">
    <h3>Invoice specification #123</h3>
    RECIBO CARRITO
    Codisgo: {{ $carrito->codigo }}
    Fecha Entrega: {{ $carrito->fecha_entrega}}
    Antiscipo: {{ $carrito->anticipo }}
    Deutsa: {{ $carrito->total_bs - $carrito->anticipo  }}
    Prescio total: {{ $carrito->total_bs }}
    Estasdo: {{ $carrito->estado }}
    Cliesnet: {{ $carrito->user->fullname }}

    Productos;
    @foreach($cade as $key => $repro)
        {{ $repro->producto->nombre }}
    @endforeach
</div>

<div class="information" style="position: absolute; bottom: 0;">
    <table width="100%">
        <tr>
            <td align="left" style="width: 50%;">
                &copy; {{ date('Y') }} {{ config('app.url') }} - All rights reserved.
            </td>
            <td align="right" style="width: 50%;">
                Company Slogan
            </td>
        </tr>ddd

    </table>
</div>
</body>
</html>
