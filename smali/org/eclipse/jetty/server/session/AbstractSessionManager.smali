.class public abstract Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "AbstractSessionManager.java"

# interfaces
.implements Lorg/eclipse/jetty/server/SessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;
    }
.end annotation


# static fields
.field public static final __distantFuture:I = 0x257da800

.field static final __log:Lorg/eclipse/jetty/util/log/Logger;

.field static final __nullSessionContext:Ljavax/servlet/http/HttpSessionContext;


# instance fields
.field protected _checkingRemoteSessionIdEncoding:Z

.field protected _context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field protected _dftMaxIdleSecs:I

.field protected _httpOnly:Z

.field protected _loader:Ljava/lang/ClassLoader;

.field protected _maxCookieAge:I

.field protected _nodeIdInSessionId:Z

.field protected _refreshCookieAge:I

.field protected _secureCookies:Z

.field protected final _sessionAttributeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/http/HttpSessionAttributeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected _sessionCookie:Ljava/lang/String;

.field protected _sessionDomain:Ljava/lang/String;

.field protected _sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

.field protected _sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

.field protected _sessionIdPathParameterName:Ljava/lang/String;

.field protected _sessionIdPathParameterNamePrefix:Ljava/lang/String;

.field protected final _sessionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/http/HttpSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected _sessionPath:Ljava/lang/String;

.field protected final _sessionTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

.field protected final _sessionsStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

.field private _usingCookies:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    .line 64
    new-instance v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->__nullSessionContext:Ljavax/servlet/http/HttpSessionContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 108
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_usingCookies:Z

    .line 83
    iput v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    .line 85
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_httpOnly:Z

    .line 87
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_secureCookies:Z

    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionAttributeListeners:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionListeners:Ljava/util/List;

    .line 93
    const-string v0, "JSESSIONID"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    .line 94
    const-string v0, "jsessionid"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdPathParameterName:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdPathParameterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdPathParameterNamePrefix:Ljava/lang/String;

    .line 98
    iput v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_maxCookieAge:I

    .line 103
    new-instance v0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionsStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    .line 104
    new-instance v0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    .line 109
    return-void
.end method


# virtual methods
.method public access(Ljavax/servlet/http/HttpSession;Z)Lorg/eclipse/jetty/http/HttpCookie;
    .locals 8
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;
    .param p2, "secure"    # Z

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .local v1, "now":J
    move-object v4, p1

    .line 128
    check-cast v4, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;

    invoke-interface {v4}, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;->getSession()Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object v3

    .line 130
    .local v3, "s":Lorg/eclipse/jetty/server/session/AbstractSession;
    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jetty/server/session/AbstractSession;->access(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->isUsingCookies()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/AbstractSession;->isIdChanged()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getMaxCookieAge()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getRefreshCookieAge()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/AbstractSession;->getCookieSetTime()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getRefreshCookieAge()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 139
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v4, :cond_1

    const-string v4, "/"

    :goto_0
    invoke-virtual {p0, p1, v4, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Lorg/eclipse/jetty/http/HttpCookie;

    move-result-object v0

    .line 140
    .local v0, "cookie":Lorg/eclipse/jetty/http/HttpCookie;
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/AbstractSession;->cookieSet()V

    .line 141
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/server/session/AbstractSession;->setIdChanged(Z)V

    .line 145
    .end local v0    # "cookie":Lorg/eclipse/jetty/http/HttpCookie;
    :goto_1
    return-object v0

    .line 139
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 145
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 151
    instance-of v0, p1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionAttributeListeners:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Ljavax/servlet/http/HttpSessionAttributeListener;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    instance-of v0, p1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionListeners:Ljava/util/List;

    check-cast p1, Ljavax/servlet/http/HttpSessionListener;

    .end local p1    # "listener":Ljava/util/EventListener;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    return-void
.end method

.method protected abstract addSession(Lorg/eclipse/jetty/server/session/AbstractSession;)V
.end method

.method protected addSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V
    .locals 5
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/AbstractSession;
    .param p2, "created"    # Z

    .prologue
    .line 644
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    monitor-enter v4

    .line 646
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-interface {v3, p1}, Lorg/eclipse/jetty/server/SessionIdManager;->addSession(Ljavax/servlet/http/HttpSession;)V

    .line 647
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->addSession(Lorg/eclipse/jetty/server/session/AbstractSession;)V

    .line 648
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    if-eqz p2, :cond_0

    .line 652
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionsStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    .line 653
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionListeners:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 655
    new-instance v0, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v0, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 656
    .local v0, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpSessionListener;

    .line 657
    .local v2, "listener":Ljavax/servlet/http/HttpSessionListener;
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionListener;->sessionCreated(Ljavax/servlet/http/HttpSessionEvent;)V

    goto :goto_0

    .line 648
    .end local v0    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Ljavax/servlet/http/HttpSessionListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 660
    :cond_0
    return-void
.end method

.method public clearEventListeners()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionAttributeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    return-void
.end method

.method public complete(Ljavax/servlet/http/HttpSession;)V
    .locals 1
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 167
    check-cast p1, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-interface {p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;->getSession()Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object v0

    .line 168
    .local v0, "s":Lorg/eclipse/jetty/server/session/AbstractSession;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/AbstractSession;->complete()V

    .line 169
    return-void
.end method

.method public doSessionAttributeListeners(Lorg/eclipse/jetty/server/session/AbstractSession;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/AbstractSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "old"    # Ljava/lang/Object;
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 814
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionAttributeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 816
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    if-nez p3, :cond_0

    move-object v3, p4

    :goto_0
    invoke-direct {v0, p1, p2, v3}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 818
    .local v0, "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionAttributeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpSessionAttributeListener;

    .line 820
    .local v2, "l":Ljavax/servlet/http/HttpSessionAttributeListener;
    if-nez p3, :cond_1

    .line 821
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeAdded(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    goto :goto_1

    .end local v0    # "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Ljavax/servlet/http/HttpSessionAttributeListener;
    :cond_0
    move-object v3, p3

    .line 816
    goto :goto_0

    .line 822
    .restart local v0    # "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "l":Ljavax/servlet/http/HttpSessionAttributeListener;
    :cond_1
    if-nez p4, :cond_2

    .line 823
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeRemoved(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    goto :goto_1

    .line 825
    :cond_2
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeReplaced(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    goto :goto_1

    .line 828
    .end local v0    # "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Ljavax/servlet/http/HttpSessionAttributeListener;
    :cond_3
    return-void
.end method

.method public doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_loader:Ljava/lang/ClassLoader;

    .line 178
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    if-nez v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    .line 181
    .local v0, "server":Lorg/eclipse/jetty/server/Server;
    monitor-enter v0

    .line 183
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    .line 184
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    if-nez v2, :cond_0

    .line 186
    new-instance v2, Lorg/eclipse/jetty/server/session/HashSessionIdManager;

    invoke-direct {v2}, Lorg/eclipse/jetty/server/session/HashSessionIdManager;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    .line 187
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Server;->setSessionIdManager(Lorg/eclipse/jetty/server/SessionIdManager;)V

    .line 189
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v0    # "server":Lorg/eclipse/jetty/server/Server;
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-interface {v2}, Lorg/eclipse/jetty/server/SessionIdManager;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 192
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-interface {v2}, Lorg/eclipse/jetty/server/SessionIdManager;->start()V

    .line 195
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v2, :cond_8

    .line 197
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    const-string v3, "org.eclipse.jetty.servlet.SessionCookie"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "tmp":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 199
    iput-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    .line 201
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    const-string v3, "org.eclipse.jetty.servlet.SessionIdPathParameterName"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_4

    .line 203
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->setSessionIdPathParameterName(Ljava/lang/String;)V

    .line 206
    :cond_4
    iget v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_maxCookieAge:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 208
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    const-string v3, "org.eclipse.jetty.servlet.MaxAge"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_5

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_maxCookieAge:I

    .line 214
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 215
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    const-string v3, "org.eclipse.jetty.servlet.SessionDomain"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    .line 218
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 219
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    const-string v3, "org.eclipse.jetty.servlet.SessionPath"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    .line 221
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    const-string v3, "org.eclipse.jetty.servlet.CheckingRemoteSessionIdEncoding"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_8

    .line 223
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_checkingRemoteSessionIdEncoding:Z

    .line 226
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_8
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 227
    return-void

    .line 189
    .restart local v0    # "server":Lorg/eclipse/jetty/server/Server;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 235
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->invalidateSessions()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_loader:Ljava/lang/ClassLoader;

    .line 238
    return-void
.end method

.method public getClusterId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 453
    check-cast p1, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-interface {p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;->getSession()Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object v0

    .line 454
    .local v0, "s":Lorg/eclipse/jetty/server/session/AbstractSession;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    return-object v0
.end method

.method public getHttpOnly()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_httpOnly:Z

    return v0
.end method

.method public getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;
    .locals 3
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/eclipse/jetty/server/SessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "cluster_id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object v1

    .line 255
    .local v1, "session":Lorg/eclipse/jetty/server/session/AbstractSession;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/AbstractSession;->setIdChanged(Z)V

    .line 257
    :cond_0
    return-object v1
.end method

.method public getIdManager()Lorg/eclipse/jetty/server/SessionIdManager;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCookieAge()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_maxCookieAge:I

    return v0
.end method

.method public getMaxInactiveInterval()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    return v0
.end method

.method public getMaxSessions()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessionsMax()I

    move-result v0

    return v0
.end method

.method public getMetaManager()Lorg/eclipse/jetty/server/SessionIdManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    return-object v0
.end method

.method public getMinSessions()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 460
    check-cast p1, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-interface {p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;->getSession()Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object v0

    .line 461
    .local v0, "s":Lorg/eclipse/jetty/server/session/AbstractSession;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getNodeId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRefreshCookieAge()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_refreshCookieAge:I

    return v0
.end method

.method public getSecureCookies()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_secureCookies:Z

    return v0
.end method

.method public abstract getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
.end method

.method public getSessionCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Lorg/eclipse/jetty/http/HttpCookie;
    .locals 8
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;
    .param p2, "contextPath"    # Ljava/lang/String;
    .param p3, "requestIsSecure"    # Z

    .prologue
    .line 367
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->isUsingCookies()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 369
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v4, p2

    .line 370
    .local v4, "sessionPath":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v4, "/"

    .line 371
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "id":Ljava/lang/String;
    new-instance v0, Lorg/eclipse/jetty/http/HttpCookie;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getMaxCookieAge()I

    move-result v5

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getHttpOnly()Z

    move-result v6

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSecureCookies()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jetty/http/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 383
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "sessionPath":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 369
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    goto :goto_0

    .line 372
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v4    # "sessionPath":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 383
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "sessionPath":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getSessionDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    return-object v0
.end method

.method public getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    return-object v0
.end method

.method public getSessionIdPathParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdPathParameterName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionIdPathParameterNamePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdPathParameterNamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 407
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSessionPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionTimeMax()J
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionTimeMean()D
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionTimeStdDev()D
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getStdDev()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionTimeTotal()J
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessions()I
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionsStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getCurrent()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSessionsMax()I
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionsStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSessionsTotal()I
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionsStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected abstract invalidateSessions()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isCheckingRemoteSessionIdEncoding()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_checkingRemoteSessionIdEncoding:Z

    return v0
.end method

.method public isNodeIdInSessionId()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_nodeIdInSessionId:Z

    return v0
.end method

.method public isUsingCookies()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_usingCookies:Z

    return v0
.end method

.method public isValid(Ljavax/servlet/http/HttpSession;)Z
    .locals 2
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 446
    check-cast p1, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-interface {p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;->getSession()Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object v0

    .line 447
    .local v0, "s":Lorg/eclipse/jetty/server/session/AbstractSession;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/AbstractSession;->isValid()Z

    move-result v1

    return v1
.end method

.method public newHttpSession(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/http/HttpSession;
    .locals 2
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object v0

    .line 471
    .local v0, "session":Lorg/eclipse/jetty/server/session/AbstractSession;
    iget v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/session/AbstractSession;->setMaxInactiveInterval(I)V

    .line 472
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->addSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 473
    return-object v0
.end method

.method protected abstract newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/server/session/AbstractSession;
.end method

.method public removeEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 479
    instance-of v0, p1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionAttributeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 481
    :cond_0
    instance-of v0, p1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 483
    :cond_1
    return-void
.end method

.method public removeSession(Ljavax/servlet/http/HttpSession;Z)V
    .locals 1
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;
    .param p2, "invalidate"    # Z

    .prologue
    .line 708
    check-cast p1, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-interface {p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;->getSession()Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object v0

    .line 709
    .local v0, "s":Lorg/eclipse/jetty/server/session/AbstractSession;
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 710
    return-void
.end method

.method public removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V
    .locals 9
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/AbstractSession;
    .param p2, "invalidate"    # Z

    .prologue
    .line 721
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->removeSession(Ljava/lang/String;)Z

    move-result v3

    .line 723
    .local v3, "removed":Z
    if-eqz v3, :cond_1

    .line 725
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionsStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 726
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getCreationTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 729
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/server/SessionIdManager;->removeSession(Ljavax/servlet/http/HttpSession;)V

    .line 730
    if-eqz p2, :cond_0

    .line 731
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/server/SessionIdManager;->invalidateAll(Ljava/lang/String;)V

    .line 733
    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionListeners:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 735
    new-instance v0, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v0, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 736
    .local v0, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpSessionListener;

    .line 737
    .local v2, "listener":Ljavax/servlet/http/HttpSessionListener;
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionListener;->sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V

    goto :goto_0

    .line 740
    .end local v0    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Ljavax/servlet/http/HttpSessionListener;
    :cond_1
    return-void
.end method

.method protected abstract removeSession(Ljava/lang/String;)Z
.end method

.method public resetStats()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->statsReset()V

    .line 493
    return-void
.end method

.method public setCheckingRemoteSessionIdEncoding(Z)V
    .locals 0
    .param p1, "remote"    # Z

    .prologue
    .line 796
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_checkingRemoteSessionIdEncoding:Z

    .line 797
    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 0
    .param p1, "httpOnly"    # Z

    .prologue
    .line 512
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_httpOnly:Z

    .line 513
    return-void
.end method

.method public setIdManager(Lorg/eclipse/jetty/server/SessionIdManager;)V
    .locals 0
    .param p1, "metaManager"    # Lorg/eclipse/jetty/server/SessionIdManager;

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->setSessionIdManager(Lorg/eclipse/jetty/server/SessionIdManager;)V

    .line 523
    return-void
.end method

.method public setMaxCookieAge(I)V
    .locals 1
    .param p1, "maxCookieAgeInSeconds"    # I

    .prologue
    .line 537
    iput p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_maxCookieAge:I

    .line 539
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_maxCookieAge:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_refreshCookieAge:I

    if-nez v0, :cond_0

    .line 540
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_maxCookieAge:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_refreshCookieAge:I

    .line 542
    :cond_0
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 550
    iput p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    .line 551
    return-void
.end method

.method public setMetaManager(Lorg/eclipse/jetty/server/SessionIdManager;)V
    .locals 0
    .param p1, "metaManager"    # Lorg/eclipse/jetty/server/SessionIdManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->setSessionIdManager(Lorg/eclipse/jetty/server/SessionIdManager;)V

    .line 561
    return-void
.end method

.method public setNodeIdInSessionId(Z)V
    .locals 0
    .param p1, "nodeIdInSessionId"    # Z

    .prologue
    .line 697
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_nodeIdInSessionId:Z

    .line 698
    return-void
.end method

.method public setRefreshCookieAge(I)V
    .locals 0
    .param p1, "ageInSeconds"    # I

    .prologue
    .line 566
    iput p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_refreshCookieAge:I

    .line 567
    return-void
.end method

.method public setSecureCookies(Z)V
    .locals 0
    .param p1, "secureCookies"    # Z

    .prologue
    .line 586
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_secureCookies:Z

    .line 587
    return-void
.end method

.method public setSessionCookie(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookieName"    # Ljava/lang/String;

    .prologue
    .line 591
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public setSessionDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 596
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V
    .locals 0
    .param p1, "sessionHandler"    # Lorg/eclipse/jetty/server/session/SessionHandler;

    .prologue
    .line 606
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    .line 607
    return-void
.end method

.method public setSessionIdManager(Lorg/eclipse/jetty/server/SessionIdManager;)V
    .locals 0
    .param p1, "metaManager"    # Lorg/eclipse/jetty/server/SessionIdManager;

    .prologue
    .line 531
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    .line 532
    return-void
.end method

.method public setSessionIdPathParameterName(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 621
    if-eqz p1, :cond_0

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdPathParameterName:Ljava/lang/String;

    .line 622
    if-eqz p1, :cond_1

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    iput-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdPathParameterNamePrefix:Ljava/lang/String;

    .line 623
    return-void

    :cond_2
    move-object v0, p1

    .line 621
    goto :goto_0

    .line 622
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdPathParameterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public setSessionPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 615
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    .line 616
    return-void
.end method

.method public setUsingCookies(Z)V
    .locals 0
    .param p1, "usingCookies"    # Z

    .prologue
    .line 631
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_usingCookies:Z

    .line 632
    return-void
.end method

.method public statsReset()V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionsStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessions()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset(J)V

    .line 502
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->reset()V

    .line 503
    return-void
.end method
