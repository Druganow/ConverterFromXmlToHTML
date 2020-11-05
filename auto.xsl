<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"><xsl:template match="/">
  <html>
  <body>
    <table border="8">
    <tr>
      <th>Марка</th>
      <th>Модель</th>
      <th>Цена</th>
      <th>Дата</th>
      <th>Разгон</th>
      <th>Цвет</th>
      <th>Кузов</th>
      <th>Мощность</th>
    </tr>
    <xsl:for-each select="автомобили/автомобиль[цена&lt;'1500000']">
    <xsl:sort select="модель"/>
    <xsl:sort select="марка"/>
    <tr>
      <td><xsl:value-of select="марка"/></td>
      <td><xsl:value-of select="модель"/></td>
      <td><xsl:value-of select="цена"/></td>
      <td><xsl:value-of select="дата"/></td>
      <td><xsl:value-of select="разгон"/></td>
      <td><xsl:value-of select="цвет"/></td>
      <td><xsl:value-of select="//автомобиль/@кузов"/></td>
      <td><xsl:value-of select="мощность"/></td>
    </tr>
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template></xsl:stylesheet>