.class public Lorg/eclipse/jetty/server/session/SessionHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "SessionHandler.java"


# static fields
.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _sessionManager:Lorg/eclipse/jetty/server/SessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "org.eclipse.jetty.server.session"

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/session/SessionHandler;-><init>(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/eclipse/jetty/server/SessionManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/SessionHandler;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 61
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/SessionManager;->addEventListener(Ljava/util/EventListener;)V

    .line 321
    :cond_0
    return-void
.end method

.method protected checkRequestedSessionId(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 14
    .param p1, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 238
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "requested_session_id":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v8

    .line 242
    .local v8, "sessionManager":Lorg/eclipse/jetty/server/SessionManager;
    if-eqz v4, :cond_1

    if-eqz v8, :cond_1

    .line 244
    invoke-interface {v8, v4}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v7

    .line 245
    .local v7, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v7, :cond_0

    invoke-interface {v8, v7}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 246
    invoke-virtual {p1, v7}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 311
    .end local v7    # "session":Ljavax/servlet/http/HttpSession;
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    sget-object v10, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 252
    const/4 v5, 0x0

    .line 253
    .local v5, "requested_session_id_from_cookie":Z
    const/4 v7, 0x0

    .line 256
    .restart local v7    # "session":Ljavax/servlet/http/HttpSession;
    iget-object v10, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v10}, Lorg/eclipse/jetty/server/SessionManager;->isUsingCookies()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 258
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v1

    .line 259
    .local v1, "cookies":[Ljavax/servlet/http/Cookie;
    if-eqz v1, :cond_3

    array-length v10, v1

    if-lez v10, :cond_3

    .line 261
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v1

    if-ge v2, v10, :cond_3

    .line 263
    invoke-interface {v8}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookie()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v1, v2

    invoke-virtual {v11}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 265
    aget-object v10, v1, v2

    invoke-virtual {v10}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 266
    const/4 v5, 0x1

    .line 267
    sget-object v10, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 268
    sget-object v10, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "Got Session ID {} from cookie"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :cond_2
    invoke-interface {v8, v4}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v7

    .line 271
    if-eqz v7, :cond_7

    invoke-interface {v8, v7}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 278
    .end local v1    # "cookies":[Ljavax/servlet/http/Cookie;
    .end local v2    # "i":I
    :cond_3
    if-eqz v4, :cond_4

    if-nez v7, :cond_6

    .line 280
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, "uri":Ljava/lang/String;
    invoke-interface {v8}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdPathParameterNamePrefix()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "prefix":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 285
    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 286
    .local v6, "s":I
    if-ltz v6, :cond_6

    .line 288
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v6, v10

    .line 289
    move v2, v6

    .line 290
    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 292
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 293
    .local v0, "c":C
    const/16 v10, 0x3b

    if-eq v0, v10, :cond_5

    const/16 v10, 0x23

    if-eq v0, v10, :cond_5

    const/16 v10, 0x3f

    if-eq v0, v10, :cond_5

    const/16 v10, 0x2f

    if-ne v0, v10, :cond_8

    .line 298
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v9, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 299
    const/4 v5, 0x0

    .line 300
    invoke-interface {v8, v4}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v7

    .line 301
    sget-object v10, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 302
    sget-object v10, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "Got Session ID {} from URL"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .end local v2    # "i":I
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v6    # "s":I
    .end local v9    # "uri":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/server/Request;->setRequestedSessionId(Ljava/lang/String;)V

    .line 308
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p1, v10}, Lorg/eclipse/jetty/server/Request;->setRequestedSessionIdFromCookie(Z)V

    .line 309
    if-eqz v7, :cond_0

    invoke-interface {v8, v7}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 310
    invoke-virtual {p1, v7}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    goto/16 :goto_0

    .line 261
    .restart local v1    # "cookies":[Ljavax/servlet/http/Cookie;
    .restart local v2    # "i":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 295
    .end local v1    # "cookies":[Ljavax/servlet/http/Cookie;
    .restart local v0    # "c":C
    .restart local v3    # "prefix":Ljava/lang/String;
    .restart local v6    # "s":I
    .restart local v9    # "uri":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 296
    goto :goto_2

    .line 308
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v6    # "s":I
    .end local v9    # "uri":Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public clearEventListeners()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->clearEventListeners()V

    .line 328
    :cond_0
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->never()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/session/SessionHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-ne v0, v1, :cond_2

    .line 225
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 139
    const/4 v3, 0x0

    .line 140
    .local v3, "old_session_manager":Lorg/eclipse/jetty/server/SessionManager;
    const/4 v2, 0x0

    .line 141
    .local v2, "old_session":Ljavax/servlet/http/HttpSession;
    const/4 v0, 0x0

    .line 144
    .local v0, "access":Ljavax/servlet/http/HttpSession;
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v3

    .line 145
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v2

    .line 147
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v3, v5, :cond_0

    .line 150
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 151
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 152
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jetty/server/session/SessionHandler;->checkRequestedSessionId(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;)V

    .line 156
    :cond_0
    const/4 v4, 0x0

    .line 157
    .local v4, "session":Ljavax/servlet/http/HttpSession;
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v5, :cond_1

    .line 159
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    .line 160
    if-eqz v4, :cond_5

    .line 162
    if-eq v4, v2, :cond_1

    .line 164
    move-object v0, v4

    .line 165
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v6

    invoke-interface {v5, v4, v6}, Lorg/eclipse/jetty/server/SessionManager;->access(Ljavax/servlet/http/HttpSession;Z)Lorg/eclipse/jetty/http/HttpCookie;

    move-result-object v1

    .line 166
    .local v1, "cookie":Lorg/eclipse/jetty/http/HttpCookie;
    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/eclipse/jetty/server/Response;->addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V

    .line 178
    .end local v1    # "cookie":Lorg/eclipse/jetty/http/HttpCookie;
    :cond_1
    :goto_0
    sget-object v5, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 180
    sget-object v5, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionManager="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    sget-object v5, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "session="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v5, :cond_8

    .line 186
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v5, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_1
    if-eqz v0, :cond_b

    .line 197
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 205
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v3, v5, :cond_4

    .line 207
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 208
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 211
    :cond_4
    return-void

    .line 172
    :cond_5
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    .line 173
    if-eqz v4, :cond_1

    .line 174
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    .end local v4    # "session":Ljavax/servlet/http/HttpSession;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_a

    .line 197
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 205
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    iget-object v6, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v3, v6, :cond_7

    .line 207
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 208
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 196
    :cond_7
    throw v5

    .line 187
    .restart local v4    # "session":Ljavax/servlet/http/HttpSession;
    :cond_8
    :try_start_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v5, :cond_9

    .line 188
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v5, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1

    .line 190
    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/session/SessionHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 200
    .end local v4    # "session":Ljavax/servlet/http/HttpSession;
    :cond_a
    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    .line 201
    .restart local v4    # "session":Ljavax/servlet/http/HttpSession;
    if-eqz v4, :cond_6

    if-nez v2, :cond_6

    .line 202
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v6, v4}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    goto :goto_3

    .line 200
    :cond_b
    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    .line 201
    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    .line 202
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    goto :goto_2
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->start()V

    .line 116
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 117
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->stop()V

    .line 127
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 128
    return-void
.end method

.method public getSessionManager()Lorg/eclipse/jetty/server/SessionManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    return-object v0
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 13
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 99
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v12

    .line 100
    .local v12, "old_server":Lorg/eclipse/jetty/server/Server;
    if-eqz v12, :cond_0

    if-eq v12, p1, :cond_0

    .line 101
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    const-string v4, "sessionManager"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 103
    if-eqz p1, :cond_1

    if-eq p1, v12, :cond_1

    .line 104
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    const-string v10, "sessionManager"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 105
    :cond_1
    return-void
.end method

.method public setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 6
    .param p1, "sessionManager"    # Lorg/eclipse/jetty/server/SessionManager;

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 82
    .local v2, "old_session_manager":Lorg/eclipse/jetty/server/SessionManager;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    const-string v4, "sessionManager"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 85
    :cond_1
    if-eqz p1, :cond_2

    .line 86
    invoke-interface {p1, p0}, Lorg/eclipse/jetty/server/SessionManager;->setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V

    .line 88
    :cond_2
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 90
    if-eqz v2, :cond_3

    .line 91
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/server/SessionManager;->setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V

    .line 92
    :cond_3
    return-void
.end method
