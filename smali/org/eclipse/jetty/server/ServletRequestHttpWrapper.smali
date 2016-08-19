.class public Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;
.super Ljavax/servlet/ServletRequestWrapper;
.source "ServletRequestHttpWrapper.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletRequest;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletRequest;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljavax/servlet/ServletRequestWrapper;-><init>(Ljavax/servlet/ServletRequest;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 1
    .param p1, "create"    # Z

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
