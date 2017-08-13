<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">

    <xsl:template match="/root" name="wurui.userbar">
        <xsl:param name="linkto"/>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-userbar" ox-mod="userbar">

            <div class="right">

                <xsl:choose>
                    <xsl:when test="login/uid">
                        <a href="{$linkto}"><big>...</big></a>
                    </xsl:when>
                    <xsl:otherwise><a class="J_loginLink" href="/m/login/index">login</a></xsl:otherwise>
                </xsl:choose>
            </div>
            <div class="left">
                <xsl:choose>
                    <xsl:when test="login/uid">
                        <img class="user-icon" src="//i.oxm1.cc/uploads/{login/uid}/user/avatar.png?x-oss-process=style/60"/>
                    </xsl:when>
                    <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
            </div>
            <xsl:value-of select="p/title"/>
        </div>
    </xsl:template>

</xsl:stylesheet>
