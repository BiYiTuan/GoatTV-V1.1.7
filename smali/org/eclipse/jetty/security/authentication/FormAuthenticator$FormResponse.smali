.class public Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "FormAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/authentication/FormAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FormResponse"
.end annotation


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 397
    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    .line 398
    return-void
.end method

.method private notIgnored(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string v0, "Cache-Control"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Pragma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ETag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expires"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Last-Modified"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    const/4 v0, 0x0

    .line 437
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addDateHeader(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-super {p0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponseWrapper;->addDateHeader(Ljava/lang/String;J)V

    .line 405
    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-super {p0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponseWrapper;->setDateHeader(Ljava/lang/String;J)V

    .line 419
    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    return-void
.end method
