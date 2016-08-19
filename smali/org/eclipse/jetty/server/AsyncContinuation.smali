.class public Lorg/eclipse/jetty/server/AsyncContinuation;
.super Ljava/lang/Object;
.source "AsyncContinuation.java"

# interfaces
.implements Lorg/eclipse/jetty/server/AsyncContext;
.implements Lorg/eclipse/jetty/continuation/Continuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x7530L

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __ASYNCSTARTED:I = 0x2

.field private static final __ASYNCWAIT:I = 0x4

.field private static final __COMPLETED:I = 0x9

.field private static final __COMPLETING:I = 0x7

.field private static final __DISPATCHED:I = 0x1

.field private static final __IDLE:I = 0x0

.field private static final __REDISPATCH:I = 0x5

.field private static final __REDISPATCHED:I = 0x6

.field private static final __REDISPATCHING:I = 0x3

.field private static final __UNCOMPLETED:I = 0x8

.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field protected _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private _continuationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/continuation/ContinuationListener;",
            ">;"
        }
    .end annotation
.end field

.field private _event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

.field private volatile _expireAt:J

.field private _expired:Z

.field private _initial:Z

.field private volatile _responseWrapped:Z

.field private _resumed:Z

.field private _state:I

.field private _timeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 44
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 90
    return-void
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/continuation/ContinuationListener;

    .prologue
    .line 104
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 565
    monitor-enter p0

    .line 567
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 569
    monitor-exit p0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected cancelTimeout()V
    .locals 4

    .prologue
    .line 623
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 624
    .local v0, "endp":Lorg/eclipse/jetty/io/EndPoint;
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    monitor-enter p0

    .line 628
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    .line 629
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 630
    monitor-exit p0

    .line 640
    .end local v0    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    :cond_0
    :goto_0
    return-void

    .line 630
    .restart local v0    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 634
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 635
    .local v1, "event":Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    if-eqz v1, :cond_0

    .line 637
    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local v0    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    goto :goto_0
.end method

.method public complete()V
    .locals 3

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "dispatch":Z
    monitor-enter p0

    .line 472
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v1, :pswitch_data_0

    .line 488
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 476
    :pswitch_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :pswitch_2
    const/4 v1, 0x7

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 480
    monitor-exit p0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 483
    :pswitch_3
    const/4 v1, 0x7

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 484
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 490
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 495
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    goto :goto_0

    .line 484
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatch()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "dispatch":Z
    monitor-enter p0

    .line 386
    :try_start_0
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v2, :pswitch_data_0

    .line 403
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 389
    :pswitch_1
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 390
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 391
    monitor-exit p0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 394
    :pswitch_2
    iget-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 395
    :goto_1
    const/4 v1, 0x5

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 396
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 405
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 410
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 400
    :pswitch_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 720
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    # setter for: Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_path:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;

    .line 721
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    .line 722
    return-void
.end method

.method public dispatch(Ljavax/servlet/ServletContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljavax/servlet/ServletContext;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 712
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    # setter for: Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;
    invoke-static {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljavax/servlet/ServletContext;)Ljavax/servlet/ServletContext;

    .line 713
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    # setter for: Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_path:Ljava/lang/String;
    invoke-static {v0, p2}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;

    .line 714
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    .line 715
    return-void
.end method

.method protected doComplete()V
    .locals 5

    .prologue
    .line 507
    monitor-enter p0

    .line 509
    :try_start_0
    iget v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v3, :pswitch_data_0

    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 520
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 512
    :pswitch_0
    const/16 v3, 0x9

    :try_start_1
    iput v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 513
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 520
    .restart local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    if-eqz v2, :cond_0

    .line 524
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 528
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/continuation/ContinuationListener;

    invoke-interface {v3, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 524
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 509
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method protected expired()V
    .locals 5

    .prologue
    .line 418
    monitor-enter p0

    .line 420
    :try_start_0
    iget v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v4, :pswitch_data_0

    .line 427
    :pswitch_0
    const/4 v3, 0x0

    .line 428
    .local v3, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    monitor-exit p0

    .line 460
    :goto_0
    return-void

    .line 424
    .end local v3    # "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    :pswitch_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 430
    .restart local v3    # "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 431
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    if-eqz v3, :cond_0

    .line 435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 437
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 440
    .local v2, "listener":Lorg/eclipse/jetty/continuation/ContinuationListener;
    :try_start_1
    invoke-interface {v2, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 431
    .end local v1    # "i":I
    .end local v2    # "listener":Lorg/eclipse/jetty/continuation/ContinuationListener;
    .end local v3    # "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 442
    .restart local v1    # "i":I
    .restart local v2    # "listener":Lorg/eclipse/jetty/continuation/ContinuationListener;
    .restart local v3    # "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 449
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "listener":Lorg/eclipse/jetty/continuation/ContinuationListener;
    :cond_0
    monitor-enter p0

    .line 451
    :try_start_3
    iget v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v4, :pswitch_data_1

    .line 457
    :goto_3
    :pswitch_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 459
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    goto :goto_0

    .line 455
    :pswitch_3
    :try_start_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    goto :goto_3

    .line 457
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 420
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 451
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAsyncEventState()Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    monitor-exit p0

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 850
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBaseRequest()Lorg/eclipse/jetty/server/Request;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    return-object v0
.end method

.method public getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 775
    .local v0, "event":Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    .line 777
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequest()Ljavax/servlet/ServletRequest;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 735
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    .line 743
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    .line 841
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    monitor-enter p0

    .line 238
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    if-nez v0, :cond_0

    const-string v0, "IDLE"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    if-eqz v0, :cond_a

    const-string v0, ",initial"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    if-eqz v0, :cond_b

    const-string v0, ",resumed"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    if-eqz v0, :cond_c

    const-string v0, ",expired"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "DISPATCHED"

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "ASYNCSTARTED"

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const-string v0, "ASYNCWAIT"

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    const-string v0, "REDISPATCHING"

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    const-string v0, "REDISPATCH"

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    const-string v0, "REDISPATCHED"

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    const-string v0, "COMPLETING"

    goto :goto_0

    :cond_7
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    const-string v0, "UNCOMPLETED"

    goto :goto_0

    :cond_8
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_9

    const-string v0, "COMPLETE"

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, ""

    goto/16 :goto_1

    :cond_b
    const-string v0, ""

    goto :goto_2

    :cond_c
    const-string v0, ""

    goto :goto_3

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 124
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    monitor-exit p0

    return-wide v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handling()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 262
    monitor-enter p0

    .line 264
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 266
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v2, :pswitch_data_0

    .line 285
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 269
    :pswitch_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 270
    const/4 v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 271
    monitor-exit p0

    .line 282
    :goto_0
    return v0

    .line 274
    :pswitch_2
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 275
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 278
    :pswitch_3
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 281
    :pswitch_4
    const/4 v1, 0x6

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 282
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hasOriginalRequestAndResponse()Z
    .locals 2

    .prologue
    .line 765
    monitor-enter p0

    .line 767
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAsync()Z
    .locals 1

    .prologue
    .line 693
    monitor-enter p0

    .line 695
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    sparse-switch v0, :sswitch_data_0

    .line 704
    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    .line 701
    :sswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 695
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public isAsyncStarted()Z
    .locals 1

    .prologue
    .line 673
    monitor-enter p0

    .line 675
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 684
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 681
    :pswitch_0
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 663
    monitor-enter p0

    .line 665
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCompleting()Z
    .locals 2

    .prologue
    .line 645
    monitor-enter p0

    .line 647
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDispatchable()Z
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    .line 209
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 218
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 215
    :pswitch_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 798
    monitor-enter p0

    .line 800
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    monitor-exit p0

    return v0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInitial()Z
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    .line 161
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    monitor-exit p0

    return v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 787
    monitor-enter p0

    .line 789
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    monitor-exit p0

    return v0

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    .line 173
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 179
    :pswitch_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSuspending()Z
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    .line 192
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 199
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 196
    :pswitch_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isUncompleted()Z
    .locals 2

    .prologue
    .line 654
    monitor-enter p0

    .line 656
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected recycle()V
    .locals 2

    .prologue
    .line 541
    monitor-enter p0

    .line 544
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    sparse-switch v0, :sswitch_data_0

    .line 550
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 556
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 557
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 559
    monitor-exit p0

    .line 560
    return-void

    .line 548
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 544
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 859
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/Request;->removeAttribute(Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 810
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    .line 811
    return-void
.end method

.method protected scheduleDispatch()V
    .locals 2

    .prologue
    .line 575
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 576
    .local v0, "endp":Lorg/eclipse/jetty/io/EndPoint;
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local v0    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    .line 580
    :cond_0
    return-void
.end method

.method protected scheduleTimeout()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 585
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    .line 586
    .local v1, "endp":Lorg/eclipse/jetty/io/EndPoint;
    iget-wide v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 588
    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 590
    monitor-enter p0

    .line 592
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    .line 593
    iget-wide v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 594
    .local v2, "wait":J
    :goto_0
    iget-wide v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :goto_1
    :try_start_2
    iget-wide v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v4, v6

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v4, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 611
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "wait":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 607
    .restart local v2    # "wait":J
    :cond_0
    :try_start_3
    iget-wide v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    cmp-long v4, v2, v8

    if-gtz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 609
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->expired()V

    .line 611
    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    .end local v1    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    .end local v2    # "wait":J
    :cond_2
    :goto_2
    return-void

    .line 615
    .restart local v1    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    :cond_3
    check-cast v1, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local v1    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    iget-wide v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    invoke-interface {v1, v4, v5, v6}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 868
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 869
    return-void
.end method

.method protected setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 95
    monitor-enter p0

    .line 97
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeout(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 115
    monitor-enter p0

    .line 117
    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 118
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 749
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 750
    .local v0, "event":Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    if-eqz v0, :cond_0

    .line 752
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jetty/server/AsyncContinuation$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$1;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 760
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 3

    .prologue
    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->suspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 831
    return-void
.end method

.method protected suspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 2
    .param p1, "context"    # Ljavax/servlet/ServletContext;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;
    .param p3, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 298
    monitor-enter p0

    .line 300
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    sparse-switch v0, :sswitch_data_0

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 304
    :sswitch_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 307
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 308
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 315
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 321
    monitor-exit p0

    .line 323
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    const/4 v1, 0x0

    # setter for: Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;
    invoke-static {v0, v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljavax/servlet/ServletContext;)Ljavax/servlet/ServletContext;

    .line 312
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    const/4 v1, 0x0

    # setter for: Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_path:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 300
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public suspend(Ljavax/servlet/ServletResponse;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 819
    instance-of v0, p1, Lorg/eclipse/jetty/server/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 820
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jetty/server/AsyncContinuation;->suspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 821
    return-void

    .line 819
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    monitor-enter p0

    .line 229
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public undispatch()V
    .locals 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    sget-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 882
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 884
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected unhandle()Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 339
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    iget v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v3, :pswitch_data_0

    .line 375
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 343
    .restart local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    :pswitch_1
    const/16 v2, 0x8

    :try_start_1
    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 344
    monitor-exit p0

    .line 372
    :goto_0
    return v1

    .line 347
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :pswitch_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 351
    const/4 v3, 0x4

    iput v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 352
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleTimeout()V

    .line 353
    iget v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    if-ne v3, v4, :cond_0

    .line 354
    monitor-exit p0

    goto :goto_0

    .line 355
    :cond_0
    iget v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 357
    const/16 v2, 0x8

    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 358
    monitor-exit p0

    goto :goto_0

    .line 360
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 361
    const/4 v1, 0x6

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 362
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 365
    :pswitch_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 366
    const/4 v1, 0x6

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 367
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 370
    :pswitch_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 371
    const/16 v2, 0x8

    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 372
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
