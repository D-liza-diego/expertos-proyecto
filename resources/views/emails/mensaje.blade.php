<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        body {
            width: 100%;
            height: 100%;
        }

        .contain {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            /* background: linear-gradient(90deg, #189086, #2f8198);
            background-image: linear-gradient(to bottom right, #02b3e4, #02ccba); */
        }

        .done {
            width: 100px;
            height: 100px;
            position: relative;
            left: 0;
            right: 0;
            top: -20px;
            margin: auto;
        }

        .contain h1 {
            font-family: 'Julius Sans One', sans-serif;
            font-size: 1.4em;
            color: #ffffff;
        }

        .congrats {
            position: relative;
            left: 50%;
            top: 50%;
            max-width: 800px;
            transform: translate(-50%, -50%);
            width: 80%;
            min-height: 200px;
            max-height: 900px;
            border: 2px solid #189086;
            border-radius: 5px;
            box-shadow: 12px 15px 20px 0 rgba(46, 61, 73, .3);
            background-color:  #189086;
            background-image: linear-gradient(to bottom right, #02b3e4, #02ccba);
            text-align: center;
            font-size: 2em;
            color: #ffffff;
        }

        .text {
            position: relative;
            font-weight: normal;
            left: 0;
            right: 0;
            margin: auto;
            width: 80%;
            max-width: 800px;

            font-family: 'Lato', sans-serif;
            font-size: 0.6em;

        }

        .regards {
            font-size: .7em;
        }

    </style>
</head>

<body>
    <div class="contain">
        <div class="congrats">
            <h1>Analisis de Credito!</h1>
            <div class="text">
                <p style="font-size:15px;">Usuario:{{$user->nombres." ".$user->apellidos}}
                </p>
            </div>
            <p class="regards">
                @if($mensaje=="nada")
                    Lo Sentimos no se pudo analizar
                @else
                   {{ $mensaje}}
                @endif
            </p>
        </div>
    </div>
</body>

</html>
