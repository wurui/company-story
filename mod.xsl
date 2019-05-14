<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.company-story">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-company-story" ox-mod="company-story">
        	
            <div class="bg" style="background-image:url({data/ui-imglist/i[1]/img})"></div>
            <xsl:for-each select="data/the-company">
	            <div class="title">
	            	<span class="logo" style="background-image:url({logo})"></span>
	            	<h3>
	            		<xsl:value-of select="name"/>
	            	</h3>
	            	<p>
	            		<xsl:value-of select="slogan"/>
	            	</p>
	            </div>
	            <div class="intro">
	            	<xsl:value-of select="description" disable-output-escaping="yes" />
	            </div>
	        </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>
