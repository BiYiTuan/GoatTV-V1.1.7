.class public Lorg/eclipse/jetty/security/authentication/FormAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "FormAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;,
        Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;,
        Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __FORM_DISPATCH:Ljava/lang/String; = "org.eclipse.jetty.security.dispatch"

.field public static final __FORM_ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.security.form_error_page"

.field public static final __FORM_LOGIN_PAGE:Ljava/lang/String; = "org.eclipse.jetty.security.form_login_page"

.field public static final __J_PASSWORD:Ljava/lang/String; = "j_password"

.field public static final __J_POST:Ljava/lang/String; = "org.eclipse.jetty.security.form_POST"

.field public static final __J_SECURITY_CHECK:Ljava/lang/String; = "/j_security_check"

.field public static final __J_URI:Ljava/lang/String; = "org.eclipse.jetty.security.form_URI"

.field public static final __J_USERNAME:Ljava/lang/String; = "j_username"


# instance fields
.field private _dispatch:Z

.field private _formErrorPage:Ljava/lang/String;

.field private _formErrorPath:Ljava/lang/String;

.field private _formLoginPage:Ljava/lang/String;

.field private _formLoginPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "dispatch"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;-><init>()V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    .line 91
    :cond_0
    if-eqz p2, :cond_1

    .line 92
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    .line 93
    :cond_1
    iput-boolean p3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    .line 94
    return-void
.end method

.method private setErrorPage(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x3f

    const/4 v3, 0x0

    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 139
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    sget-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "form-error-page must start with /"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_3
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private setLoginPage(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3f

    const/4 v3, 0x0

    .line 123
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "form-login-page must start with /"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 132
    :cond_1
    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "FORM"

    return-object v0
.end method

.method public isJSecurityCheck(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 328
    const-string v5, "/j_security_check"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 330
    .local v2, "jsc":I
    if-gez v2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v3

    .line 332
    :cond_1
    const-string v5, "/j_security_check"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v2, v5

    .line 333
    .local v1, "e":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_2

    move v3, v4

    .line 334
    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 336
    .local v0, "c":C
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_3

    const/16 v5, 0x23

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    const/16 v5, 0x3f

    if-ne v0, v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public isLoginOrErrorPage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    .line 342
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 4
    .param p1, "configuration"    # Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V

    .line 104
    const-string v3, "org.eclipse.jetty.security.form_login_page"

    invoke-interface {p1, v3}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "login":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 106
    invoke-direct {p0, v2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    .line 107
    :cond_0
    const-string v3, "org.eclipse.jetty.security.form_error_page"

    invoke-interface {p1, v3}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 109
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    .line 110
    :cond_1
    const-string v3, "org.eclipse.jetty.security.dispatch"

    invoke-interface {p1, v3}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "dispatch":Ljava/lang/String;
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    :goto_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    .line 112
    return-void

    .line 111
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 22
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 160
    move-object/from16 v13, p1

    check-cast v13, Ljavax/servlet/http/HttpServletRequest;

    .local v13, "request":Ljavax/servlet/http/HttpServletRequest;
    move-object/from16 v14, p2

    .line 161
    check-cast v14, Ljavax/servlet/http/HttpServletResponse;

    .line 162
    .local v14, "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v16

    .line 163
    .local v16, "uri":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 164
    const-string v16, "/"

    .line 166
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v19

    or-int p3, p3, v19

    .line 167
    if-nez p3, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_deferred:Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    .line 311
    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    :cond_1
    :goto_0
    return-object v3

    .line 170
    .restart local p1    # "req":Ljavax/servlet/ServletRequest;
    :cond_2
    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isLoginOrErrorPage(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 171
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->NOT_CHECKED:Lorg/eclipse/jetty/server/Authentication;

    goto :goto_0

    .line 173
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v15

    .line 178
    .local v15, "session":Ljavax/servlet/http/HttpSession;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 180
    const-string v19, "j_username"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 181
    .local v18, "username":Ljava/lang/String;
    const-string v19, "j_password"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v12}, Lorg/eclipse/jetty/security/LoginService;->login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v17

    .line 184
    .local v17, "user":Lorg/eclipse/jetty/server/UserIdentity;
    if-eqz v17, :cond_6

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->renewSessionOnAuthentication(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljavax/servlet/http/HttpSession;

    move-result-object v15

    .line 190
    monitor-enter v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :try_start_1
    const-string v19, "org.eclipse.jetty.security.form_URI"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 193
    .local v11, "nuri":Ljava/lang/String;
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    if-eqz v11, :cond_4

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_5

    .line 197
    :cond_4
    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v11

    .line 198
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_5

    .line 199
    const-string v11, "/"

    .line 201
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 202
    invoke-interface {v14, v11}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 204
    new-instance v6, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1, v12}, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;Ljava/lang/Object;)V

    .line 205
    .local v6, "cached":Lorg/eclipse/jetty/server/Authentication;
    const-string v19, "org.eclipse.jetty.security.UserIdentity"

    move-object/from16 v0, v19

    invoke-interface {v15, v0, v6}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    new-instance v3, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 315
    .end local v6    # "cached":Lorg/eclipse/jetty/server/Authentication;
    .end local v11    # "nuri":Ljava/lang/String;
    .end local v12    # "password":Ljava/lang/String;
    .end local v17    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .end local v18    # "username":Ljava/lang/String;
    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    :catch_0
    move-exception v8

    .line 317
    .local v8, "e":Ljava/io/IOException;
    new-instance v19, Lorg/eclipse/jetty/security/ServerAuthException;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 193
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v12    # "password":Ljava/lang/String;
    .restart local v17    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .restart local v18    # "username":Ljava/lang/String;
    .restart local p1    # "req":Ljavax/servlet/ServletRequest;
    :catchall_0
    move-exception v19

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v19
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_4 .. :try_end_4} :catch_1

    .line 319
    .end local v12    # "password":Ljava/lang/String;
    .end local v17    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .end local v18    # "username":Ljava/lang/String;
    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    :catch_1
    move-exception v8

    .line 321
    .local v8, "e":Ljavax/servlet/ServletException;
    new-instance v19, Lorg/eclipse/jetty/security/ServerAuthException;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 210
    .end local v8    # "e":Ljavax/servlet/ServletException;
    .restart local v12    # "password":Ljava/lang/String;
    .restart local v17    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .restart local v18    # "username":Ljava/lang/String;
    .restart local p1    # "req":Ljavax/servlet/ServletRequest;
    :cond_6
    :try_start_5
    sget-object v19, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v19 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 211
    sget-object v19, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Form authentication FAILED for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v18 .. v18}, Lorg/eclipse/jetty/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-interface/range {v19 .. v21}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    .line 214
    if-eqz v14, :cond_8

    .line 215
    const/16 v19, 0x193

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 229
    :cond_8
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 217
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v7

    .line 220
    .local v7, "dispatcher":Ljavax/servlet/RequestDispatcher;
    const-string v19, "Cache-Control"

    const-string v20, "No-cache"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v19, "Expires"

    const-wide/16 v20, 0x1

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v14, v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 222
    new-instance v19, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    new-instance v20, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v7, v0, v1}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1

    .line 226
    .end local v7    # "dispatcher":Ljavax/servlet/RequestDispatcher;
    :cond_a
    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    .end local v12    # "password":Ljava/lang/String;
    .end local v17    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .end local v18    # "username":Ljava/lang/String;
    :cond_b
    const-string v19, "org.eclipse.jetty.security.UserIdentity"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/Authentication;

    .line 234
    .local v3, "authentication":Lorg/eclipse/jetty/server/Authentication;
    if-eqz v3, :cond_c

    .line 237
    instance-of v0, v3, Lorg/eclipse/jetty/server/Authentication$User;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object/from16 v20, v0

    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/LoginService;->validate(Lorg/eclipse/jetty/server/UserIdentity;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 242
    const-string v19, "org.eclipse.jetty.security.UserIdentity"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 276
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_deferred:Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    move-object/from16 v19, v0

    invoke-static {v14}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 277
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 246
    :cond_d
    const-string v19, "org.eclipse.jetty.security.form_URI"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 247
    .local v10, "j_uri":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 249
    const-string v19, "org.eclipse.jetty.security.form_POST"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/util/MultiMap;

    .line 250
    .local v9, "j_post":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    if-eqz v9, :cond_10

    .line 252
    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v5

    .line 253
    .local v5, "buf":Ljava/lang/StringBuffer;
    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_e

    .line 254
    const-string v19, "?"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 261
    const-string v19, "org.eclipse.jetty.security.form_POST"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/eclipse/jetty/server/Request;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    move-object/from16 v4, p1

    .line 263
    .local v4, "base_request":Lorg/eclipse/jetty/server/Request;
    :goto_2
    const-string v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/server/Request;->setMethod(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    goto/16 :goto_0

    .line 262
    .end local v4    # "base_request":Lorg/eclipse/jetty/server/Request;
    .restart local p1    # "req":Ljavax/servlet/ServletRequest;
    :cond_f
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v4

    goto :goto_2

    .line 268
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    :cond_10
    const-string v19, "org.eclipse.jetty.security.form_URI"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    .end local v9    # "j_post":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    .end local v10    # "j_uri":Ljava/lang/String;
    :cond_11
    monitor-enter v15
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_5 .. :try_end_5} :catch_1

    .line 283
    :try_start_6
    const-string v19, "org.eclipse.jetty.security.form_URI"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_13

    .line 285
    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v5

    .line 286
    .restart local v5    # "buf":Ljava/lang/StringBuffer;
    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_12

    .line 287
    const-string v19, "?"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_12
    const-string v19, "org.eclipse.jetty.security.form_URI"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    const-string v19, "application/x-www-form-urlencoded"

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    const-string v19, "POST"

    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 292
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/eclipse/jetty/server/Request;

    move/from16 v19, v0

    if-eqz v19, :cond_14

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    move-object/from16 v4, p1

    .line 293
    .restart local v4    # "base_request":Lorg/eclipse/jetty/server/Request;
    :goto_3
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 294
    const-string v19, "org.eclipse.jetty.security.form_POST"

    new-instance v20, Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/eclipse/jetty/util/MultiMap;-><init>(Lorg/eclipse/jetty/util/MultiMap;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    .end local v4    # "base_request":Lorg/eclipse/jetty/server/Request;
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    :cond_13
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 300
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v7

    .line 303
    .restart local v7    # "dispatcher":Ljavax/servlet/RequestDispatcher;
    const-string v19, "Cache-Control"

    const-string v20, "No-cache"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v19, "Expires"

    const-wide/16 v20, 0x1

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v14, v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 305
    new-instance v19, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    new-instance v20, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v7, v0, v1}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 311
    .end local v7    # "dispatcher":Ljavax/servlet/RequestDispatcher;
    :goto_4
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 292
    .restart local v5    # "buf":Ljava/lang/StringBuffer;
    .restart local p1    # "req":Ljavax/servlet/ServletRequest;
    :cond_14
    :try_start_8
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v4

    goto :goto_3

    .line 297
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    :catchall_1
    move-exception v19

    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v19

    .line 309
    :cond_15
    invoke-interface {v13}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4
.end method
