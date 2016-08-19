.class final Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$1;
.super Ljava/lang/Object;
.source "DeferredAuthentication.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 0
    .param p1, "cookie"    # Ljavax/servlet/http/Cookie;

    .prologue
    .line 182
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 186
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 190
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 194
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public flushBuffer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 259
    const/16 v0, 0x400

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    # getter for: Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__nullOut:Ljavax/servlet/ServletOutputStream;
    invoke-static {}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->access$000()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Lorg/eclipse/jetty/util/IO;->getNullPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public resetBuffer()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public sendError(I)V
    .locals 0
    .param p1, "sc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 0
    .param p1, "sc"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 302
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 306
    return-void
.end method

.method public setContentLength(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 310
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 314
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 235
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 243
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 318
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "sc"    # I

    .prologue
    .line 247
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 0
    .param p1, "sc"    # I
    .param p2, "sm"    # Ljava/lang/String;

    .prologue
    .line 251
    return-void
.end method
