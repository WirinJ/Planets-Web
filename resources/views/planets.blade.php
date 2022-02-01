<!DOCTYPE html>
<html lang='{{ str_replace('_', '-', app()->getLocale()) }}'>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>Laravel</title>
        <style>
            li {
                font-size: x-large;
                font-weight: bolder;
            }

            p {
                font-size: 21px;
            }

            #info {
                padding-left: 70px;
            }

        </style>
    </head>
    <body>
        <ul>
            @foreach ($planets as $planet)
                <li>{{ $planet['name'] }}</li>
                <p id="info">Description: {{ $planet['description'] }}</p>
                <p id="info">Solar System: {{ $planet['solar_system']['name'] }}</p>
            @endforeach
        </ul>
    </body>
</html>