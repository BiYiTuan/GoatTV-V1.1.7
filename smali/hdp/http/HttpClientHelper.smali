.class public Lhdp/http/HttpClientHelper;
.super Ljava/lang/Object;
.source "HttpClientHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/http/HttpClientHelper$DynamicRedirectHandler;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x1388

.field private static final SO_TIMEOUT:I = 0x7530

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lhdp/http/HttpResult;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 114
    const/16 v0, 0x7530

    invoke-static {p0, v1, v1, v1, v0}, Lhdp/http/HttpClientHelper;->get(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;I)Lhdp/http/HttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;[Lorg/apache/http/Header;)Lhdp/http/HttpResult;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    const/4 v1, 0x0

    .line 101
    const/16 v0, 0x7530

    invoke-static {p0, p1, v1, v1, v0}, Lhdp/http/HttpClientHelper;->get(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;I)Lhdp/http/HttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;)Lhdp/http/HttpResult;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .param p2, "pairs"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 106
    const/4 v0, 0x0

    const/16 v1, 0x7530

    invoke-static {p0, p1, p2, v0, v1}, Lhdp/http/HttpClientHelper;->get(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;I)Lhdp/http/HttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;I)Lhdp/http/HttpResult;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .param p2, "pairs"    # [Lorg/apache/http/NameValuePair;
    .param p3, "cookies"    # [Lorg/apache/http/cookie/Cookie;
    .param p4, "soTimeout"    # I

    .prologue
    .line 55
    invoke-static {}, Lhdp/http/HttpClientHelper;->initHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v6

    sput-object v6, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 56
    sget-object v6, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.socket.timeout"

    invoke-interface {v6, v7, p4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 58
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 59
    .local v2, "get":Lorg/apache/http/client/methods/HttpGet;
    sget-object v6, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v7, Lorg/apache/http/impl/client/DefaultRedirectHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 61
    if-eqz p2, :cond_0

    :try_start_0
    array-length v6, p2

    if-lez v6, :cond_0

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p2

    if-lt v3, v6, :cond_2

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 74
    if-eqz p1, :cond_1

    array-length v6, p1

    if-lez v6, :cond_1

    .line 75
    invoke-virtual {v2, p1}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    .line 78
    :cond_1
    if-eqz p3, :cond_4

    array-length v6, p3

    if-lez v6, :cond_4

    .line 79
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 80
    .local v0, "cookieStore":Lorg/apache/http/impl/client/BasicCookieStore;
    invoke-virtual {v0, p3}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookies([Lorg/apache/http/cookie/Cookie;)V

    .line 81
    sget-object v6, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 85
    .end local v0    # "cookieStore":Lorg/apache/http/impl/client/BasicCookieStore;
    :goto_1
    sget-object v6, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v6, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 86
    .local v4, "response":Lorg/apache/http/HttpResponse;
    new-instance v6, Lhdp/http/HttpResult;

    sget-object v7, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Lhdp/http/HttpResult;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/CookieStore;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 97
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :goto_2
    return-object v6

    .line 64
    .restart local v3    # "i":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    if-lez v3, :cond_3

    .line 65
    :try_start_1
    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_3
    const-string v6, "%s=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, p2, v3

    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 68
    aget-object v9, p2, v3

    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 67
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    sget-object v6, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/client/CookieStore;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    .line 90
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/net/URISyntaxException;
    :try_start_3
    const-string v6, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_3

    .line 92
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_3

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 95
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 96
    throw v6
.end method

.method public static get(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lhdp/http/HttpResult;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "pairs"    # [Lorg/apache/http/NameValuePair;

    .prologue
    const/4 v1, 0x0

    .line 110
    const/16 v0, 0x7530

    invoke-static {p0, v1, p1, v1, v0}, Lhdp/http/HttpClientHelper;->get(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;I)Lhdp/http/HttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static getResultRedirecUrl(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .param p2, "pairs"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 176
    sget-object v5, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v6, Lhdp/http/HttpClientHelper$DynamicRedirectHandler;

    invoke-direct {v6}, Lhdp/http/HttpClientHelper$DynamicRedirectHandler;-><init>()V

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 177
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 179
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 180
    invoke-virtual {v1, p1}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    .line 181
    sget-object v5, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 182
    .local v4, "reponse":Lorg/apache/http/HttpResponse;
    const-string v5, "Location"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 183
    .local v2, "header":Lorg/apache/http/Header;
    if-nez v2, :cond_0

    .line 196
    .end local v2    # "header":Lorg/apache/http/Header;
    .end local v4    # "reponse":Lorg/apache/http/HttpResponse;
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 186
    .restart local v2    # "header":Lorg/apache/http/Header;
    .restart local v4    # "reponse":Lorg/apache/http/HttpResponse;
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "redirecUrl":Ljava/lang/String;
    invoke-static {v3, p1, p2}, Lhdp/http/HttpClientHelper;->getResultRedirecUrl(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p0

    goto :goto_0

    .line 189
    .end local v2    # "header":Lorg/apache/http/Header;
    .end local v3    # "redirecUrl":Ljava/lang/String;
    .end local v4    # "reponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static initHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 200
    sget-object v3, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v3, :cond_0

    .line 201
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 202
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 203
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 204
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 205
    invoke-static {v1, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 206
    sget-object v3, Lhdp/http/MyApp;->User_Agent:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 207
    const-wide/16 v3, 0x7d0

    invoke-static {v1, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 208
    const/16 v3, 0x1388

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 209
    const/16 v3, 0x7530

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 210
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 211
    .local v2, "schReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    .line 212
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 211
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 213
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    .line 214
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 213
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 215
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 217
    .local v0, "conMgr":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v3, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 218
    sget-object v3, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 219
    const/4 v5, 0x3

    invoke-direct {v4, v5, v7}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 218
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 221
    :cond_0
    sget-object v3, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v3
.end method

.method public static mapToPairs(Ljava/util/Map;)[Lorg/apache/http/NameValuePair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lorg/apache/http/NameValuePair;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 226
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 227
    :cond_0
    const/4 v3, 0x0

    .line 235
    :cond_1
    return-object v3

    .line 229
    :cond_2
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 230
    .local v1, "keyArray":[Ljava/lang/String;
    array-length v4, v1

    new-array v3, v4, [Lorg/apache/http/NameValuePair;

    .line 231
    .local v3, "pairs":[Lorg/apache/http/NameValuePair;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 232
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v6, v1, v0

    .line 233
    aget-object v4, v1, v0

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    aput-object v5, v3, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;[Lorg/apache/http/Header;)Lhdp/http/HttpResult;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    const/4 v1, 0x0

    .line 167
    const/16 v0, 0x7530

    invoke-static {p0, p1, v1, v1, v0}, Lhdp/http/HttpClientHelper;->post(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;I)Lhdp/http/HttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;)Lhdp/http/HttpResult;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .param p2, "pairs"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 158
    const/4 v0, 0x0

    const/16 v1, 0x7530

    invoke-static {p0, p1, p2, v0, v1}, Lhdp/http/HttpClientHelper;->post(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;I)Lhdp/http/HttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;)Lhdp/http/HttpResult;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .param p2, "pairs"    # [Lorg/apache/http/NameValuePair;
    .param p3, "cookies"    # [Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 163
    const/16 v0, 0x7530

    invoke-static {p0, p1, p2, p3, v0}, Lhdp/http/HttpClientHelper;->post(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;I)Lhdp/http/HttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;I)Lhdp/http/HttpResult;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .param p2, "pairs"    # [Lorg/apache/http/NameValuePair;
    .param p3, "cookies"    # [Lorg/apache/http/cookie/Cookie;
    .param p4, "soTimeout"    # I

    .prologue
    .line 119
    invoke-static {}, Lhdp/http/HttpClientHelper;->initHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v7

    sput-object v7, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 120
    sget-object v7, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.socket.timeout"

    invoke-interface {v7, v8, p4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 122
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 124
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    :try_start_0
    array-length v7, p2

    if-lez v7, :cond_0

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v3, "formParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    array-length v8, p2

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_2

    .line 129
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 130
    const-string v7, "UTF-8"

    .line 129
    invoke-direct {v2, v3, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 131
    .local v2, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v5, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 133
    .end local v2    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3    # "formParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    if-eqz p1, :cond_1

    array-length v7, p1

    if-lez v7, :cond_1

    .line 134
    invoke-virtual {v5, p1}, Lorg/apache/http/client/methods/HttpPost;->setHeaders([Lorg/apache/http/Header;)V

    .line 136
    :cond_1
    if-eqz p3, :cond_3

    array-length v7, p3

    if-lez v7, :cond_3

    .line 137
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 138
    .local v0, "cookieStore":Lorg/apache/http/impl/client/BasicCookieStore;
    invoke-virtual {v0, p3}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookies([Lorg/apache/http/cookie/Cookie;)V

    .line 139
    sget-object v7, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 143
    .end local v0    # "cookieStore":Lorg/apache/http/impl/client/BasicCookieStore;
    :goto_1
    sget-object v7, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 144
    .local v6, "response":Lorg/apache/http/HttpResponse;
    new-instance v7, Lhdp/http/HttpResult;

    sget-object v8, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lhdp/http/HttpResult;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/CookieStore;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 153
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_2
    return-object v7

    .line 126
    .restart local v3    # "formParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    :try_start_1
    aget-object v4, p2, v7

    .line 127
    .local v4, "nameValuePair":Lorg/apache/http/NameValuePair;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "formParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v4    # "nameValuePair":Lorg/apache/http/NameValuePair;
    :cond_3
    sget-object v7, Lhdp/http/HttpClientHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/client/CookieStore;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 153
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v7, 0x0

    goto :goto_2

    .line 148
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_3

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 151
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 152
    throw v7
.end method

.method public static post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lhdp/http/HttpResult;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "pairs"    # [Lorg/apache/http/NameValuePair;

    .prologue
    const/4 v1, 0x0

    .line 171
    const/16 v0, 0x7530

    invoke-static {p0, v1, p1, v1, v0}, Lhdp/http/HttpClientHelper;->post(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;I)Lhdp/http/HttpResult;

    move-result-object v0

    return-object v0
.end method
