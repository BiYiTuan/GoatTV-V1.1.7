.class public Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "SpnegoAuthenticator.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "SPNEGO"

    return-object v0
.end method

.method public secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .param p4, "validatedUser"    # Lorg/eclipse/jetty/server/Authentication$User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 9
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v2, p1

    check-cast v2, Ljavax/servlet/http/HttpServletRequest;

    .local v2, "req":Ljavax/servlet/http/HttpServletRequest;
    move-object v3, p2

    .line 47
    check-cast v3, Ljavax/servlet/http/HttpServletResponse;

    .line 49
    .local v3, "res":Ljavax/servlet/http/HttpServletResponse;
    const-string v6, "Authorization"

    invoke-interface {v2, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "header":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 53
    iget-object v6, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_deferred:Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    .line 88
    :goto_0
    return-object v6

    .line 57
    :cond_0
    if-nez v0, :cond_2

    .line 61
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_deferred:Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-static {v3}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    sget-object v6, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto :goto_0

    .line 66
    :cond_1
    sget-object v6, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "SpengoAuthenticator: sending challenge"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const-string v6, "WWW-Authenticate"

    const-string v7, "Negotiate"

    invoke-interface {v3, v6, v7}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/16 v6, 0x191

    invoke-interface {v3, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 69
    sget-object v6, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v6, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {v6, v1}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 76
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2
    if-eqz v0, :cond_3

    const-string v6, "Negotiate"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 78
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "spnegoToken":Ljava/lang/String;
    iget-object v6, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lorg/eclipse/jetty/security/LoginService;->login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v5

    .line 82
    .local v5, "user":Lorg/eclipse/jetty/server/UserIdentity;
    if-eqz v5, :cond_3

    .line 84
    new-instance v6, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    goto :goto_0

    .line 88
    .end local v4    # "spnegoToken":Ljava/lang/String;
    .end local v5    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    :cond_3
    sget-object v6, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto :goto_0
.end method
