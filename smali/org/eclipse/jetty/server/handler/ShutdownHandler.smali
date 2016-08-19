.class public Lorg/eclipse/jetty/server/handler/ShutdownHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "ShutdownHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _exitJvm:Z

.field private final _server:Lorg/eclipse/jetty/server/Server;

.field private final _shutdownToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Server;Ljava/lang/String;)V
    .locals 1
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;
    .param p2, "shutdownToken"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_exitJvm:Z

    .line 84
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_server:Lorg/eclipse/jetty/server/Server;

    .line 85
    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_shutdownToken:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/ShutdownHandler;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ShutdownHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->shutdownServer()V

    return-void
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private hasCorrectSecurityToken(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 2
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_shutdownToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private requestFromLocalhost(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 2
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 137
    const-string v0, "127.0.0.1"

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private shutdownServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->stop()V

    .line 154
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_exitJvm:Z

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method protected getRemoteAddr(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 142
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5
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
    const/16 v4, 0x191

    const/4 v3, 0x0

    .line 90
    const-string v0, "/shutdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    const/16 v0, 0x190

    invoke-interface {p4, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->hasCorrectSecurityToken(Ljavax/servlet/http/HttpServletRequest;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    sget-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unauthorized shutdown attempt from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-interface {p4, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->requestFromLocalhost(Ljavax/servlet/http/HttpServletRequest;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    sget-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unauthorized shutdown attempt from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-interface {p4, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    .line 113
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutting down by request from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    new-instance v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/handler/ShutdownHandler$1;-><init>(Lorg/eclipse/jetty/server/handler/ShutdownHandler;)V

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ShutdownHandler$1;->start()V

    goto/16 :goto_0
.end method

.method public setExitJvm(Z)V
    .locals 0
    .param p1, "exitJvm"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_exitJvm:Z

    .line 163
    return-void
.end method
