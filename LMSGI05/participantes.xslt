<?xml version="1.0" encoding="UTF-8"?>
<!-- Definición del documento XSLT -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Plantilla principal, coincide con el elemento raíz del documento XML -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Participantes</title>
            </head>
            <body>
                <h1>Lista de Participantes</h1>
                <!-- Creación de la tabla HTML -->
                <table>
                    <tr>
                        <th>Código</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Edad</th>
                        <th>Provincia</th>
                        <th>Puntos</th>
                    </tr>
                    <!-- Aplicación de las plantillas a los elementos <participante> -->
                    <xsl:apply-templates select="concurso/participante"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <!-- Plantilla para el elemento <participante> -->
    <xsl:template match="participante">
        <tr>
            <!-- Extracción de los datos de cada participante -->
            <td><xsl:value-of select="@codigo"/></td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellidos"/></td>
            <td><xsl:value-of select="edad"/></td>
            <td><xsl:value-of select="provincia"/></td>
            <td><xsl:value-of select="puntos"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>