<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <title>Uso de If con xslt</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
            </head>
            <body>
                <ul>
                    <xsl:for-each select="inventario/producto">
                        <xsl:if test="lugar/@edificio='B'">
                            <div>
                                <h1>Codigo Producto: <xsl:value-of select="./@codigo"/></h1>
                                <p>Peso: <xsl:value-of select="peso"/></p>
                                <p>Nombre: <xsl:value-of select="nombre"/></p>
                                <div>
                                    Edificio: <xsl:value-of select="lugar/@edificio"/>
                                    Aula: <xsl:value-of select="lugar/aula"/>
                                </div>
                            </div>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>