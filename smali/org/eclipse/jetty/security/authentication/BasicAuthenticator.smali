.class public Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "BasicAuthenticator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "BASIC"

    return-object v0
.end method

.method public secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .param p4, "validatedUser"    # Lorg/eclipse/jetty/server/Authentication$User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 13
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v5, p1

    check-cast v5, Ljavax/servlet/http/HttpServletRequest;

    .local v5, "request":Ljavax/servlet/http/HttpServletRequest;
    move-object v6, p2

    .line 59
    check-cast v6, Ljavax/servlet/http/HttpServletResponse;

    .line 60
    .local v6, "response":Ljavax/servlet/http/HttpServletResponse;
    const-string v10, "Authorization"

    invoke-interface {v5, v10}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "credentials":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 65
    :try_start_0
    iget-object v10, p0, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;->_deferred:Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    .line 99
    :goto_0
    return-object v10

    .line 67
    :cond_0
    if-eqz v0, :cond_1

    .line 69
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 70
    .local v7, "space":I
    if-lez v7, :cond_1

    .line 72
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "method":Ljava/lang/String;
    const-string v10, "basic"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 75
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v10, "ISO-8859-1"

    invoke-static {v0, v10}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 78
    .local v2, "i":I
    if-lez v2, :cond_1

    .line 80
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 81
    .local v9, "username":Ljava/lang/String;
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "password":Ljava/lang/String;
    iget-object v10, p0, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v10, v9, v4}, Lorg/eclipse/jetty/security/LoginService;->login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v8

    .line 84
    .local v8, "user":Lorg/eclipse/jetty/server/UserIdentity;
    if-eqz v8, :cond_1

    .line 86
    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;->renewSessionOnAuthentication(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljavax/servlet/http/HttpSession;

    .line 87
    new-instance v10, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    .end local v3    # "method":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .end local v7    # "space":I
    .end local v8    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .end local v9    # "username":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {v10, v1}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;->_deferred:Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-static {v6}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 95
    sget-object v10, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto :goto_0

    .line 97
    :cond_2
    const-string v10, "WWW-Authenticate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "basic realm=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v12}, Lorg/eclipse/jetty/security/LoginService;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/16 v10, 0x191

    invoke-interface {v6, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 99
    sget-object v10, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
