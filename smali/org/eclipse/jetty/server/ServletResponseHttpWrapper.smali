.class public Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;
.super Ljavax/servlet/ServletResponseWrapper;
.source "ServletResponseHttpWrapper.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletResponse;)V
    .locals 0
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljavax/servlet/ServletResponseWrapper;-><init>(Ljavax/servlet/ServletResponse;)V

    .line 19
    return-void
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 0
    .param p1, "cookie"    # Ljavax/servlet/http/Cookie;

    .prologue
    .line 23
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 68
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 84
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
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
    .line 56
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
    .line 52
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
    .line 60
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 64
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 72
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 80
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "sc"    # I

    .prologue
    .line 88
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 0
    .param p1, "sc"    # I
    .param p2, "sm"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method
