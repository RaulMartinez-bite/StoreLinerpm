<html>
    <head>
        <title>Envio de correo</title>
    </head>
    <body>
        <form action="{{route('emailsend')}}" method="GET">
            {{csrf_field()}}
            <table border="0">
                <tr>
                    <th>Nombre:</th>
                    <td>
                        <input type="text" name="nombre">
                    </td>
                </tr>
                <tr>
                    <th>Email:</th>
                    <td>
                        <input type="text" name="email">
                    </td>
                </tr>
                <tr>
                    <th>Asunto:</th>
                    <td>
                        <input type="text" name="asunto">
                    </td>
                </tr>
                <tr>
                    <th>Contenido:</th>
                    <td>
                        <textarea name="contenido"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Enviar">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>