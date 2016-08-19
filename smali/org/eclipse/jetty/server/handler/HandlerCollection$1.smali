.class Lorg/eclipse/jetty/server/handler/HandlerCollection$1;
.super Ljava/lang/Object;
.source "HandlerCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/handler/HandlerCollection;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/HandlerCollection;

.field final synthetic val$h:I

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$loader:Ljava/lang/ClassLoader;

.field final synthetic val$mex:Lorg/eclipse/jetty/util/MultiException;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/HandlerCollection;Ljava/lang/ClassLoader;ILorg/eclipse/jetty/util/MultiException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->this$0:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$loader:Ljava/lang/ClassLoader;

    iput p3, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$h:I

    iput-object p4, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$mex:Lorg/eclipse/jetty/util/MultiException;

    iput-object p5, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 202
    .local v1, "orig":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 203
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->this$0:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    # getter for: Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;
    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->access$000(Lorg/eclipse/jetty/server/handler/HandlerCollection;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$h:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Lorg/eclipse/jetty/server/Handler;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 212
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 214
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$mex:Lorg/eclipse/jetty/util/MultiException;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 212
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 212
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 211
    throw v2
.end method
