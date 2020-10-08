<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <title>Uso de choose con xslt</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
            </head>
            <body>
                <div class="container">
                    <p class="form-control">select="ejemplo" -> valor etiqueta</p>
                    <p class="form-control">select="@ejemplo" -> valor atributo de etiqueta</p>

                    <div class="card">
                        <div class="card-header">
                            <h2 class="card-title">Catalog CD'S</h2>
                        </div>
                        <div class="card-body">
                            <table class="table table-hover">
                                <theader>
                                    <tr>
                                        <td>Title</td>
                                        <td>Artist</td>
                                        <td>Company</td>
                                        <td>Year</td>
                                        <td>Price</td>
                                    </tr>
                                </theader>
                                <tbody>
                                    <xsl:for-each select="catalog/cd">
                                        <xsl:choose>
                                            <xsl:when test="price &lt; 10">
                                                <tr class="table-primary">
                                                    <td>
                                                        <xsl:value-of select="title"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="artist"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="company"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="year"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="price"/>
                                                    </td>
                                                </tr>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <tr class="table-danger">
                                                    <td>
                                                        <xsl:value-of select="title"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="artist"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="company"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="year"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="price"/>
                                                    </td>
                                                </tr>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>