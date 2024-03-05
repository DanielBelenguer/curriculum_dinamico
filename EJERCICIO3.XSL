<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="cv">
        <html>
            <head>
                <title>Curriculum_Vitae</title>
                <link rel="stylesheet" type="text/css" href="EJERCICIO3.CSS" />
            </head>
            <!-- Header -->
            <header class="banner">
                <div class="container_16">
                    <figure>
                        <img src="{fotografia}" alt="Daniel Belenguer Fernández" />
                    </figure>
                    <hgroup>
                        <h1 class="fadeInDown">
                            <xsl:value-of select="nombre" />
                        </h1>
                        <h2 class="fadeInUp">Curriculum vitae</h2>
                        <img id="cv" class="fadeInUp" src="imagenes/icon-cv.png" alt="cv" />
                    </hgroup>
                </div>
            </header>

            <!-- Main section -->
            <section role="main" class="container_16">
                <div class="grid_16">
                    <!-- About me -->
                    <div class="grid_8 fadeInLeft">
                        <img class="icon" src="imagenes/icon-rostro.png" alt="sobre mí" />
                        <h3>Sobre mí</h3>
                        <p>Mi nombre es <xsl:value-of select="nombre" /> y soy programador web.</p>
                        <p>
                            <xsl:value-of select="informacion-sobre-mi" />
                        </p>
                        <p>¡Un saludo!</p>
                    </div>

                    <!-- knowledge -->
                    <div class="grid_8 knowledge fadeInRight">
                        <img class="icon" src="imagenes/icon-herramientas.png" alt="Conocimientos" />
                        <h3>Conocimientos</h3>
                        <ul class="values">
                            <xsl:for-each select="conocimientos/conocimiento">
                                <li>
                                    <xsl:value-of select="nombre-tecnologia" />
                                    <span style="width: {grado-tecnologia}%;"></span>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </div>
                </div>

                <!-- Experience -->
                <div class="grid_16 experiences appear">
                    <img class="icon" src="imagenes/icon-experiencia.png" alt="Experiencias" />
                    <h3>Experiencias</h3>
                    <ul>
                        <xsl:for-each select="experiencias/experiencia">
                            <h4>
                                <strong>
                                    <xsl:value-of select="puesto" />
                                </strong>
                            </h4>
                        <span
                                class="site">
                                <xsl:value-of select="empresa" />
                            </span>
                        <span
                                class="date">
                                <xsl:value-of select="periodo" />
                            </span>
                        <p>
                                <xsl:value-of select="detallepuesto" />
                            </p>
                        </xsl:for-each>
                    </ul>
                </div>
                <!-- Training -->
                <div class="grid_16 training appear">
                    <img class="icon" src="imagenes/icon-formacion.png" alt="sobre mí" />
                    <h3>Formación</h3>
                    <div class="formation1">
                        <ul>
                            <xsl:for-each select="formaciones/formacion">
                                <h4>
                                    <strong>
                                        <xsl:value-of select="grado-curso" />
                                    </strong>
                                </h4>
                            <span
                                    class="site">
                                    <xsl:value-of select="institucion" />
                                </span>
                            <span
                                    class="date">
                                    <xsl:value-of select="fecha" />
                                </span>
                            </xsl:for-each>
                        </ul>
                    </div>
                </div>
                <!-- Social Media -->
                <div class="grid_8 socialmedia fadeInUp">
                    <img class="icon" src="imagenes/icon-formacion.png" alt="sobre mí" />
                    <h3>Social Media - Contactar</h3>
                    <div>
                        <a href="mailto:prueba@prueba.prueba">
                            <img class="social" src="imagenes/redes/icon-correo.png" alt="Email" />
                        </a>
                        <a href="#">
                            <img class="social" src="imagenes/redes/icon-google.png" alt="Google+" />
                        </a>
                        <a href="#">
                            <img class="social" src="imagenes/redes/icon-linckedin.png" alt="LinkedIn" />
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img class="social" src="imagenes/redes/icon-twitter.png" alt="Twitter" />
                        </a>
                        <a href="#">
                            <img class="social" src="imagenes/redes/icon-face.png" alt="Facebook" />
                        </a>
                        <a href="#">
                            <img class="social" src="imagenes/redes/icon-wordpress.png" alt="Wordpress" />
                        </a>
                    </div>
                </div>
                <!-- Information -->
                <div class="grid_8 information fadeInUp">
                    <img class="icon" src="imagenes/icon-otras.png" alt="Otros datos" />
                    <h3>Otros datos</h3>
                    <ul class="information">
                        <li><xsl:value-of select="otrosdatos/dato1"/></li>
                        <li><xsl:value-of select="otrosdatos/dato2"/></li>
                        <li><xsl:value-of select="otrosdatos/dato3"/></li>
                    </ul>
                </div>

            </section>
        </html>
    </xsl:template>
</xsl:stylesheet>