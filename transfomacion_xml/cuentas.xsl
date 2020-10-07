<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <datos>
            <cuentas>
                <xsl:for-each select="listado/cuenta">
                    <cuenta>
                        <!--Añadiendo atributo a etiqueta-->
                        <xsl:attribute name="dniTitular">
                            <xsl:value-of select="titular/@dni"/>
                        </xsl:attribute>
                    </cuenta>
                    <titular>
                        <xsl:value-of select="titular"/>
                    </titular>
                    <creacion>
                        <xsl:value-of select="fechacreacion"/>
                    </creacion>
                    <saldoactual>
                        <xsl:value-of select="saldoactual"/>
                    </saldoactual>
                </xsl:for-each>
            </cuentas>
            <fondos>
            </fondos>
        </datos>
    </xsl:template>
</xsl:stylesheet>