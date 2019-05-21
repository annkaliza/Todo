<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:v="https://www.vehicles.com/vehicles">
    <xsl:template match="/">
        <html>
            <head>
                <title>Cars for Sale</title>
            </head>
            <body>
                <xsl:for-each select="v:vehicles/v:vehicle">
                    <xsl:sort select="v:year" order="descending" />
                    <div>
                        <xsl:choose>
                            <!-- <xsl:when test="v:year &lt;= 2018"> -->
                            <xsl:when test="v:year &lt; 2010">
                                <span class="old" style="color:red">Old and Busted</span>
                            </xsl:when>
                            <xsl:otherwise>
                                <span class="New">New and Shiny</span>
                            </xsl:otherwise>
                        </xsl:choose>
                        <div>
                            Year:
                            <xsl:value-of select="v:year" />
                        </div>
                        <div>
                            Model:
                            <xsl:value-of select="@model" />
                        </div>
                        <div>
                            Make:
                            <xsl:if test="v:year &gt;  '2017'">
                                <!-- <xsl:if test="v:make = 'Toyota'"> -->
                                <div style="color:red">Some good ya?</div>
                            </xsl:if>
                            <xsl:value-of select="v:make" />
                        </div>
                    </div>
                    <hr />
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>