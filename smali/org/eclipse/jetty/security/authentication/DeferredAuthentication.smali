.class public Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;
.super Ljava/lang/Object;
.source "DeferredAuthentication.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Authentication$Deferred;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field static final __deferredResponse:Ljavax/servlet/http/HttpServletResponse;

.field private static __nullOut:Ljavax/servlet/ServletOutputStream;


# instance fields
.field protected final _authenticator:Lorg/eclipse/jetty/security/Authenticator;

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private _loginService:Lorg/eclipse/jetty/security/LoginService;

.field private _previousAssociation:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 178
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Ljavax/servlet/http/HttpServletResponse;

    .line 325
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__nullOut:Ljavax/servlet/ServletOutputStream;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/security/Authenticator;)V
    .locals 2
    .param p1, "authenticator"    # Lorg/eclipse/jetty/security/Authenticator;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No Authenticator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V
    .locals 2
    .param p1, "authenticator"    # Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No Authenticator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljavax/servlet/ServletOutputStream;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__nullOut:Ljavax/servlet/ServletOutputStream;

    return-object v0
.end method

.method public static isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 1
    .param p0, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 172
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Ljavax/servlet/http/HttpServletResponse;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;
    .locals 6
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 103
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    sget-object v4, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Ljavax/servlet/http/HttpServletResponse;

    const/4 v5, 0x1

    invoke-interface {v3, p1, v4, v5}, Lorg/eclipse/jetty/security/Authenticator;->validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v1

    .line 105
    .local v1, "authentication":Lorg/eclipse/jetty/server/Authentication;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v3, :cond_1

    instance-of v3, v1, Lorg/eclipse/jetty/server/Authentication$ResponseSent;

    if-nez v3, :cond_1

    .line 107
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v3, :cond_0

    .line 108
    iget-object v4, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object v3, v0

    invoke-interface {v3}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    :cond_0
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Lorg/eclipse/jetty/security/ServerAuthException;
    sget-object v3, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 116
    .end local v2    # "e":Lorg/eclipse/jetty/security/ServerAuthException;
    :cond_1
    sget-object v1, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto :goto_0
.end method

.method public authenticate(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/eclipse/jetty/server/Authentication;
    .locals 5
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 127
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    const/4 v4, 0x1

    invoke-interface {v3, p1, p2, v4}, Lorg/eclipse/jetty/security/Authenticator;->validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v1

    .line 128
    .local v1, "authentication":Lorg/eclipse/jetty/server/Authentication;
    instance-of v3, v1, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v3, :cond_0

    .line 129
    iget-object v4, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object v3, v0

    invoke-interface {v3}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    :cond_0
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Lorg/eclipse/jetty/security/ServerAuthException;
    sget-object v3, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 136
    sget-object v1, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto :goto_0
.end method

.method public getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getLoginService()Lorg/eclipse/jetty/security/LoginService;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    return-object v0
.end method

.method public getPreviousAssociation()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/Authentication;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v2, p1, p2}, Lorg/eclipse/jetty/security/LoginService;->login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    .line 148
    .local v1, "user":Lorg/eclipse/jetty/server/UserIdentity;
    if-eqz v1, :cond_1

    .line 150
    new-instance v0, Lorg/eclipse/jetty/security/UserAuthentication;

    const-string v2, "API"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    .line 151
    .local v0, "authentication":Lorg/eclipse/jetty/security/UserAuthentication;
    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;

    .line 156
    .end local v0    # "authentication":Lorg/eclipse/jetty/security/UserAuthentication;
    .end local v1    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIdentityService(Lorg/eclipse/jetty/security/IdentityService;)V
    .locals 0
    .param p1, "identityService"    # Lorg/eclipse/jetty/security/IdentityService;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 81
    return-void
.end method

.method public setLoginService(Lorg/eclipse/jetty/security/LoginService;)V
    .locals 0
    .param p1, "loginService"    # Lorg/eclipse/jetty/security/LoginService;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    .line 93
    return-void
.end method
