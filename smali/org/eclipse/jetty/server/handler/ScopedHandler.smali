.class public abstract Lorg/eclipse/jetty/server/handler/ScopedHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "ScopedHandler.java"


# static fields
.field private static final __outerScope:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/server/handler/ScopedHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

.field protected _outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->__outerScope:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->__outerScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->__outerScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 97
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 99
    const-class v0, Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->__outerScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    :cond_1
    return-void

    .line 104
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-nez v1, :cond_2

    .line 105
    sget-object v1, Lorg/eclipse/jetty/server/handler/ScopedHandler;->__outerScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 104
    :cond_2
    throw v0
.end method

.method public final handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
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
    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method protected never()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public final nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
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
    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-ne v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method public final nextScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
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
    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method
