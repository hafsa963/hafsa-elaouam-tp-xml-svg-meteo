<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="1200" height="800">
            
            <line x1="100" y1="100" x2="100" y2="600" stroke="black" stroke-width="2"/>
            <line x1="100" y1="600" x2="1200" y2="600" stroke="black" stroke-width="2"/>
            
             <xsl:for-each select="meteo/mesure[@date='2025-11-16']/ville">
                 <xsl:variable name="pos"  select="position()*120"  />
                 <xsl:variable name="temp"  select="@temperature*10"  />
                 
                <text stroke="blue" x="{$pos}" y="620">
                    <xsl:value-of select="@nom"/>
                </text>
                 <rect width="20" height="{$temp}" x="{$pos}" y="{600-$temp}" fill="pink">  <animate attributeName="height" dur="2s" from="0" to="{$temp}"></animate>
                     <animate attributeName="y" dur="2s" from="600" to="{600-$temp}"></animate>  </rect>
                
                 <text stroke="blue" x="{$pos}" y="{620-$temp -20}"> 
                     <xsl:value-of select="@temperature" />C°
                 </text>
            </xsl:for-each>
            
        </svg>
    </xsl:template>
</xsl:stylesheet>
