.class public Lorg/eclipse/jetty/client/security/ProxyAuthorization;
.super Ljava/lang/Object;
.source "ProxyAuthorization.java"

# interfaces
.implements Lorg/eclipse/jetty/client/security/Authentication;


# instance fields
.field private _authorization:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/B64Code;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "authenticationString":Ljava/lang/String;
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/client/security/ProxyAuthorization;->_authorization:Lorg/eclipse/jetty/io/Buffer;

    .line 39
    return-void
.end method


# virtual methods
.method public setCredentials(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2
    .param p1, "exchange"    # Lorg/eclipse/jetty/client/HttpExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->PROXY_AUTHORIZATION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/client/security/ProxyAuthorization;->_authorization:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 51
    return-void
.end method
