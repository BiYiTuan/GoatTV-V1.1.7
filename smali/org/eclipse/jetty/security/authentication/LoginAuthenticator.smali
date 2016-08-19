.class public abstract Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.super Ljava/lang/Object;
.source "LoginAuthenticator.java"

# interfaces
.implements Lorg/eclipse/jetty/security/Authenticator;


# static fields
.field public static final SESSION_SECURED:Ljava/lang/String; = "org.eclipse.jetty.security.secured"


# instance fields
.field protected final _deferred:Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

.field protected _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field protected _loginService:Lorg/eclipse/jetty/security/LoginService;

.field private _renewSession:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_deferred:Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    .line 38
    return-void
.end method


# virtual methods
.method public getLoginService()Lorg/eclipse/jetty/security/LoginService;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    return-object v0
.end method

.method protected renewSessionOnAuthentication(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljavax/servlet/http/HttpSession;
    .locals 8
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 64
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v3

    .line 65
    .local v3, "httpSession":Ljavax/servlet/http/HttpSession;
    iget-boolean v6, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_renewSession:Z

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    const-string v6, "org.eclipse.jetty.security.secured"

    invoke-interface {v3, v6}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 67
    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljavax/servlet/http/HttpSession;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 73
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {v3, v5}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v5    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 76
    .restart local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljavax/servlet/http/HttpSession;->invalidate()V

    .line 77
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v3

    .line 78
    const-string v6, "org.eclipse.jetty.security.secured"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v6, v7}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 80
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 81
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v3
.end method

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 3
    .param p1, "configuration"    # Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;

    .prologue
    .line 42
    invoke-interface {p1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No LoginService for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No IdentityService for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->isSessionRenewedOnAuthentication()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_renewSession:Z

    .line 49
    return-void
.end method
