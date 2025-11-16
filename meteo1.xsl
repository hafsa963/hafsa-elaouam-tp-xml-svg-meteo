<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    <xsl:template match="/">
        <html>
            <head>
                <title> Meteo</title>
            </head>
            
            <body>
                <xsl:for-each select="meteo/mesure">
                    <ul>
                        <li>Date mesure: <xsl:value-of select="@date"/> </li>
                        
                    </ul>
                    
                    <table  width="90%" border="2px solid rgb(140 140 140)" font-family="sans-serif" font-size="0.2rem" etter-spacing="1px"> 
                        <thead>
                            <tr>
                                
                                <th scope="col">Ville</th>   
                                <th scope="col">Temperature</th> 
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="ville"> 
                            <tr>
                                <td><xsl:value-of select="@nom"/></td>
                                <td> <xsl:value-of select="@temperature"/></td>
                                 
                            </tr>
                            </xsl:for-each>
                            
                            <tr>
                                <td>Nombre de ville</td>
                                <td> <xsl:value-of select="count(ville/@nom)"/></td>
                            </tr>
                            
                            <tr>
                                <td>Temperature Moyenne</td>
                                <td> <xsl:value-of select="avg(ville/@temperature)"/></td>
                            </tr>
                            
                            
                        </tbody>
                        
                    </table>
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>