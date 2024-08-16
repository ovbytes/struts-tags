<%-- 
    Document   : personas
    Created on : Aug 3, 2024, 10:05:01 AM
    Author     : ovelazquez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Personas</title>
    </head>
    <body>
        <h1>Formulario Personas (OGNL)</h1>

        <s:form>
            <s:textfield label="Nombre" name="persona.nombre" />
            <s:textfield label="Calle" name="persona.domicilio.calle" />
            <s:textfield label="No. Calle" name="persona.domicilio.numeroCalle" />
            <s:textfield label="Pais" name="persona.domicilio.pais" />
            <s:submit value="Enviar" />
        </s:form>

        <br/>
        <h2>Valores proporcionados:</h2>
        Nombre: <s:property value="persona.nombre" /> <br/>
        Calle: <s:property value="persona.domicilio.calle" /> <br/>
        No. Calle: <s:property value="persona.domicilio.numeroCalle" /> <br/>
        Pais: <s:property value="persona.domicilio.pais" /> <br/>

        <br/>
        <s:if test="persona.nombre != null">
            <s:if test="persona.nombre == 'admin'">
                Es un usuario administrador
            </s:if>
            <s:else>
                El usuario NO es administrador
            </s:else>
        </s:if>
        <br><br><!-- Realizar validaciones -->

        <s:if test="persona.nombre == null || persona.nombre == '' || persona.domicilio.calle == null || persona.domicilio.calle == '' || persona.domicilio.pais == null || persona.domicilio.pais == '' ">
            Ningun campo debe de estar vacio
        </s:if>
        <s:if test="persona.domicilio.numeroCalle == null || persona.domicilio.numeroCalle == ''">
            (el valor por defecto del número de calle es 0, coloque un número diferente).
        </s:if>

    </body>
</html>
