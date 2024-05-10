<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f5f5f5;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            margin-top: 100px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
        }
        .btn-primary {
            width: 100%;
        }
    </style>
</head>
<body>
    <h1>Registro de Usuario</h1>
    <s:form id="altaCarrera" action="altaCarrera" name="altaCarrera" method="post">
        <s:textfield name="nombreCarrera" id="altaCarrera_nombreCarrera" label="Nombre de la carrera"/>
        <s:textfield name="lugarCarrera" id="altaCarrera_lugarCarrera" label="Lugar de celebración"/>
        <s:textfield name="fechaCelebracion" value="" id="altaCarrera_fechaCelebracion" label="Fecha de celebracion (dd/mm/yy)"/>
        <s:submit id="altaCarrera_registrar" name="registrar" value="Registrar Carrera"/>
    </s:form>
</body>
</html>