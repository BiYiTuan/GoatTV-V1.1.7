.class public Lhdp/http/HttpResult;
.super Ljava/lang/Object;
.source "HttpResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpResult"


# instance fields
.field private cookies:[Lorg/apache/http/cookie/Cookie;

.field private headers:[Lorg/apache/http/Header;

.field private response:[B

.field private statuCode:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lhdp/http/HttpResult;->statuCode:I

    .line 88
    new-instance v0, Lhdp/http/HttpResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lhdp/http/HttpResult;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/CookieStore;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/CookieStore;)V
    .locals 3
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lhdp/http/HttpResult;->statuCode:I

    .line 105
    if-eqz p2, :cond_0

    .line 106
    invoke-interface {p2}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/http/cookie/Cookie;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/http/cookie/Cookie;

    iput-object v1, p0, Lhdp/http/HttpResult;->cookies:[Lorg/apache/http/cookie/Cookie;

    .line 109
    :cond_0
    if-eqz p1, :cond_1

    .line 110
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    iput-object v1, p0, Lhdp/http/HttpResult;->headers:[Lorg/apache/http/Header;

    .line 111
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lhdp/http/HttpResult;->statuCode:I

    .line 112
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v2, p0, Lhdp/http/HttpResult;->statuCode:I

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 115
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 114
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    iput-object v1, p0, Lhdp/http/HttpResult;->response:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCookie(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v3, p0, Lhdp/http/HttpResult;->cookies:[Lorg/apache/http/cookie/Cookie;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lhdp/http/HttpResult;->cookies:[Lorg/apache/http/cookie/Cookie;

    array-length v3, v3

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 101
    :cond_1
    :goto_0
    return-object v0

    .line 95
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lhdp/http/HttpResult;->cookies:[Lorg/apache/http/cookie/Cookie;

    array-length v3, v3

    if-lt v1, v3, :cond_3

    move-object v0, v2

    .line 101
    goto :goto_0

    .line 96
    :cond_3
    iget-object v3, p0, Lhdp/http/HttpResult;->cookies:[Lorg/apache/http/cookie/Cookie;

    aget-object v0, v3, v1

    .line 97
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCookies()[Lorg/apache/http/cookie/Cookie;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lhdp/http/HttpResult;->cookies:[Lorg/apache/http/cookie/Cookie;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v2, p0, Lhdp/http/HttpResult;->headers:[Lorg/apache/http/Header;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhdp/http/HttpResult;->headers:[Lorg/apache/http/Header;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-object v1

    .line 44
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lhdp/http/HttpResult;->headers:[Lorg/apache/http/Header;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 45
    iget-object v2, p0, Lhdp/http/HttpResult;->headers:[Lorg/apache/http/Header;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    iget-object v1, p0, Lhdp/http/HttpResult;->headers:[Lorg/apache/http/Header;

    aget-object v1, v1, v0

    goto :goto_0

    .line 44
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lhdp/http/HttpResult;->headers:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lhdp/http/HttpResult;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lhdp/http/HttpResult;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()[B
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lhdp/http/HttpResult;->response:[B

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhdp/http/HttpResult;->response:[B

    iget-object v1, p0, Lhdp/http/HttpResult;->response:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getStatuCode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lhdp/http/HttpResult;->statuCode:I

    return v0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lhdp/http/HttpResult;->response:[B

    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-object v1

    .line 75
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const-string p1, "utf-8"

    .line 79
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lhdp/http/HttpResult;->response:[B

    invoke-direct {v2, v3, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "HttpResult"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v2, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpResult [cookies="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhdp/http/HttpResult;->cookies:[Lorg/apache/http/cookie/Cookie;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lhdp/http/HttpResult;->headers:[Lorg/apache/http/Header;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Lhdp/http/HttpResult;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    const-string v1, ", statuCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lhdp/http/HttpResult;->statuCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
