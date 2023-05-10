<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                exclude-result-prefixes="msxsl">

    <xsl:template match="data">
        <html lang="ru">
        <head>
            <meta charset="UTF-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Rammstein</title>
            <link rel="preconnect" href="https://fonts.googleapis.com" />
            <link rel="preconnect" href="https://fonts.gstatic.com" />
            <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700" rel="stylesheet" />
            <link href="../ram.css" rel="stylesheet" />
            <link href="../styles/all.css" rel="stylesheet" />
        </head>
        <body>
            <div class="header">
                <div class="logo">
                    <a href="#"><img src="https://i.pinimg.com/originals/77/86/22/7786221f113a1760172214ebe9db6757.jpg" height="70px" /></a>
                </div>
                <nav>
                    <div><a href="#">Главная</a></div>
                    <div><a href="history.html">История</a></div>
                    <div><a href="merchandise.html">Мерч</a></div>
                </nav>
            </div>

            <div class="albums">
                <xsl:apply-templates select="albums" />
            </div>
        </body>
        </html>
    </xsl:template>

    <xsl:template match="albums">
        <xsl:apply-templates select="album" />
    </xsl:template>

    <xsl:template match="album">
        <div class="alb">
            <xsl:attribute name="style">
                background-image: url("<xsl:value-of select="url"/>");
            </xsl:attribute>

            <div>
                <h2>
                    <xsl:value-of select="name"/>
                </h2>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
