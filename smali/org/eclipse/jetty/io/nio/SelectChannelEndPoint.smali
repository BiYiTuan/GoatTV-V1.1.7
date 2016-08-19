.class public Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
.super Lorg/eclipse/jetty/io/nio/ChannelEndPoint;
.source "SelectChannelEndPoint.java"

# interfaces
.implements Lorg/eclipse/jetty/io/AsyncEndPoint;
.implements Lorg/eclipse/jetty/io/ConnectedEndPoint;


# static fields
.field public static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _asyncDispatch:Z

.field private volatile _connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

.field private _dispatched:Z

.field private final _handler:Ljava/lang/Runnable;

.field private volatile _idleTimestamp:J

.field private _interestOps:I

.field private _ishut:Z

.field private _key:Ljava/nio/channels/SelectionKey;

.field private final _manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

.field private _open:Z

.field private _readBlocked:Z

.field private final _selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

.field private volatile _writable:Z

.field private _writeBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "org.eclipse.jetty.io.nio"

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "selectSet"    # Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .param p3, "key"    # Ljava/nio/channels/SelectionKey;
    .param p4, "maxIdleTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p4}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;-><init>(Ljava/nio/channels/ByteChannel;I)V

    .line 43
    new-instance v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$1;-><init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_handler:Ljava/lang/Runnable;

    .line 60
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_asyncDispatch:Z

    .line 66
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 88
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    .line 89
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 90
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    .line 91
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_asyncDispatch:Z

    .line 92
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_open:Z

    .line 93
    iput-object p3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    .line 95
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 96
    return-void
.end method

.method private updateKey()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 493
    monitor-enter p0

    .line 495
    const/4 v1, -0x1

    .line 496
    .local v1, "current_ops":I
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 498
    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->isSuspended()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_0
    move v3, v0

    .line 499
    .local v3, "read_interest":Z
    :goto_0
    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    if-nez v6, :cond_5

    :cond_1
    move v4, v0

    .line 501
    .local v4, "write_interest":Z
    :goto_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v3, :cond_6

    move v7, v0

    :goto_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v4, :cond_7

    const/4 v6, 0x4

    :goto_3
    or-int/2addr v6, v7

    iput v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->interestOps()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 514
    .end local v3    # "read_interest":Z
    .end local v4    # "write_interest":Z
    :cond_2
    :goto_4
    :try_start_2
    iget v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    if-eq v6, v1, :cond_9

    .line 515
    .local v0, "changed":Z
    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    if-eqz v0, :cond_3

    .line 519
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v5, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 520
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 522
    :cond_3
    return-void

    .end local v0    # "changed":Z
    :cond_4
    move v3, v5

    .line 498
    goto :goto_0

    .restart local v3    # "read_interest":Z
    :cond_5
    move v4, v5

    .line 499
    goto :goto_1

    .restart local v4    # "write_interest":Z
    :cond_6
    move v7, v5

    .line 501
    goto :goto_2

    :cond_7
    move v6, v5

    goto :goto_3

    .line 506
    :cond_8
    const/4 v1, -0x1

    goto :goto_4

    .line 508
    :catch_0
    move-exception v2

    .line 510
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    :try_start_3
    iput-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    .line 511
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 515
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "read_interest":Z
    .end local v4    # "write_interest":Z
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :cond_9
    move v0, v5

    .line 514
    goto :goto_5
.end method


# virtual methods
.method public asyncDispatch()V
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_asyncDispatch:Z

    .line 203
    :goto_0
    monitor-exit p0

    .line 204
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->dispatch()V

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blockReadable(J)Z
    .locals 12
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 371
    monitor-enter p0

    .line 373
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 374
    new-instance v6, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v6}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v6

    .line 408
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 376
    :cond_0
    :try_start_1
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v8}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v4

    .line 377
    .local v4, "now":J
    add-long v2, v4, p1

    .line 378
    .local v2, "end":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isCheckForIdle()Z

    move-result v0

    .line 379
    .local v0, "check":Z
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 383
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_3

    .line 387
    :try_start_3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 388
    cmp-long v8, p1, v10

    if-ltz v8, :cond_2

    sub-long v8, v2, v4

    :goto_0
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 396
    :try_start_4
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v8}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v4

    .line 399
    :goto_1
    iget-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v8, :cond_1

    cmp-long v8, p1, v10

    if-lez v8, :cond_1

    cmp-long v8, v4, v2

    if-ltz v8, :cond_1

    .line 405
    const/4 v7, 0x0

    :try_start_5
    iput-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 406
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 409
    :goto_2
    return v6

    .line 388
    :cond_2
    const-wide/16 v8, 0x2710

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_6
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 396
    :try_start_7
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v8}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v4

    .line 397
    goto :goto_1

    .line 396
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v7}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v4

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 405
    :catchall_2
    move-exception v6

    const/4 v7, 0x0

    :try_start_8
    iput-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 406
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    throw v6

    .line 405
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 406
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 408
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v6, v7

    .line 409
    goto :goto_2
.end method

.method public blockWritable(J)Z
    .locals 12
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 419
    monitor-enter p0

    .line 421
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOutputShutdown()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 422
    new-instance v6, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v6}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v6

    .line 455
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 424
    :cond_0
    :try_start_1
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v8}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v4

    .line 425
    .local v4, "now":J
    add-long v2, v4, p1

    .line 426
    .local v2, "end":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isCheckForIdle()Z

    move-result v0

    .line 427
    .local v0, "check":Z
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 431
    :cond_1
    iget-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOutputShutdown()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v8

    if-nez v8, :cond_3

    .line 435
    :try_start_3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 436
    cmp-long v8, p1, v10

    if-ltz v8, :cond_2

    sub-long v8, v2, v4

    :goto_0
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 444
    :try_start_4
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v8}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v4

    .line 446
    :goto_1
    iget-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v8, :cond_1

    cmp-long v8, p1, v10

    if-lez v8, :cond_1

    cmp-long v8, v4, v2

    if-ltz v8, :cond_1

    .line 452
    const/4 v7, 0x0

    :try_start_5
    iput-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 453
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    :goto_2
    return v6

    .line 436
    :cond_2
    const-wide/16 v8, 0x2710

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_6
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 444
    :try_start_7
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v8}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v4

    .line 445
    goto :goto_1

    .line 444
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v7}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v4

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 452
    :catchall_2
    move-exception v6

    const/4 v7, 0x0

    :try_start_8
    iput-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 453
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    throw v6

    .line 452
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 453
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 455
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v6, v7

    .line 456
    goto :goto_2
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 255
    return-void
.end method

.method public checkIdleTimestamp(J)V
    .locals 6
    .param p1, "now"    # J

    .prologue
    .line 285
    iget-wide v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    .line 287
    .local v2, "idleTimestamp":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    if-lez v4, :cond_0

    .line 289
    sub-long v0, p1, v2

    .line 291
    .local v0, "idleForMs":J
    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 293
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->onIdleExpired(J)V

    .line 294
    iput-wide p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    .line 297
    .end local v0    # "idleForMs":J
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 700
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v1
.end method

.method public dispatch()V
    .locals 4

    .prologue
    .line 209
    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-eqz v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "dispatched"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 217
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    .line 218
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_handler:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    .line 219
    .local v0, "dispatched":Z
    if-nez v0, :cond_1

    .line 221
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    .line 222
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatched Failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 226
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    return-void
.end method

.method doUpdateKey()V
    .locals 5

    .prologue
    .line 531
    monitor-enter p0

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 535
    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    if-lez v2, :cond_5

    .line 537
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_4

    .line 539
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectableChannel;

    .line 540
    .local v1, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 592
    .end local v1    # "sc":Ljava/nio/channels/SelectableChannel;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    return-void

    .line 548
    .restart local v1    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectableChannel;

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v3

    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v2, v3, v4, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 553
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 558
    :cond_2
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_open:Z

    if-eqz v2, :cond_3

    .line 560
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v2, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->destroyEndPoint(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 562
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_open:Z

    .line 563
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "sc":Ljava/nio/channels/SelectableChannel;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 569
    :cond_4
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    iget v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 574
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 575
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 577
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 582
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 583
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 585
    :cond_8
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_open:Z

    if-eqz v2, :cond_9

    .line 587
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_open:Z

    .line 588
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v2, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->destroyEndPoint(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 590
    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 310
    .local v0, "fill":I
    if-lez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->notIdle()V

    .line 312
    :cond_0
    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 347
    .local v0, "l":I
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    monitor-enter p0

    .line 351
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-eqz v1, :cond_0

    .line 352
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 353
    :cond_0
    monitor-exit p0

    .line 361
    :cond_1
    :goto_0
    return v0

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 355
    :cond_2
    if-lez v0, :cond_1

    .line 357
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 358
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->notIdle()V

    goto :goto_0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .param p1, "header"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "trailer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 322
    .local v0, "l":I
    if-nez v0, :cond_5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 324
    :cond_2
    monitor-enter p0

    .line 326
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-eqz v1, :cond_3

    .line 327
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 328
    :cond_3
    monitor-exit p0

    .line 335
    :cond_4
    :goto_0
    return v0

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 330
    :cond_5
    if-lez v0, :cond_4

    .line 332
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 333
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->notIdle()V

    goto :goto_0
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    return-object v0
.end method

.method public getIdleTimestamp()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    return-wide v0
.end method

.method public getSelectManager()Lorg/eclipse/jetty/io/nio/SelectorManager;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    return-object v0
.end method

.method public getSelectSet()Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    return-object v0
.end method

.method public getSelectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    monitor-exit p0

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handle()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 600
    const/4 v0, 0x1

    .line 603
    .local v0, "dispatched":Z
    :goto_0
    if-eqz v0, :cond_d

    .line 609
    :goto_1
    :try_start_0
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 610
    .local v3, "next":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    if-eq v3, v8, :cond_1

    .line 612
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "{} replaced {}"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 614
    .local v4, "old":Lorg/eclipse/jetty/io/Connection;
    iput-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 615
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v8, p0, v4}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_1

    .line 621
    .end local v3    # "next":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .end local v4    # "old":Lorg/eclipse/jetty/io/Connection;
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Ljava/nio/channels/ClosedChannelException;
    :try_start_1
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 645
    :try_start_2
    iget-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 647
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 650
    :try_start_3
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 660
    :try_start_4
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 663
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v8

    if-nez v8, :cond_4

    move v0, v6

    .line 664
    :goto_3
    goto :goto_0

    .line 645
    .end local v1    # "e":Ljava/nio/channels/ClosedChannelException;
    .restart local v3    # "next":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    :cond_1
    iget-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 647
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 650
    :try_start_5
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 660
    :try_start_6
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 663
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v8

    if-nez v8, :cond_3

    move v0, v6

    .line 664
    :goto_5
    goto :goto_0

    .line 652
    :catch_1
    move-exception v5

    .line 654
    .local v5, "x":Ljava/lang/Throwable;
    :try_start_7
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "onInputShutdown failed"

    invoke-interface {v8, v9, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 655
    :try_start_8
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 660
    :goto_6
    :try_start_9
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 669
    .end local v3    # "next":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .end local v5    # "x":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_12

    .line 671
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v9

    if-nez v9, :cond_10

    move v0, v6

    .line 672
    :goto_7
    if-eqz v0, :cond_12

    .line 674
    sget-object v9, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "SCEP.run() finally DISPATCHED"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v9

    if-nez v9, :cond_11

    move v0, v6

    :goto_8
    goto :goto_7

    .line 656
    .restart local v3    # "next":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .restart local v5    # "x":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    .local v2, "e2":Ljava/io/IOException;
    :try_start_a
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    .line 660
    .end local v2    # "e2":Ljava/io/IOException;
    .end local v5    # "x":Ljava/lang/Throwable;
    :catchall_1
    move-exception v8

    :try_start_b
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_3
    move v0, v7

    .line 663
    goto :goto_5

    .line 652
    .end local v3    # "next":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .restart local v1    # "e":Ljava/nio/channels/ClosedChannelException;
    :catch_3
    move-exception v5

    .line 654
    .restart local v5    # "x":Ljava/lang/Throwable;
    :try_start_c
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "onInputShutdown failed"

    invoke-interface {v8, v9, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 655
    :try_start_d
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 660
    :goto_9
    :try_start_e
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 656
    :catch_4
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_f
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_9

    .line 660
    .end local v2    # "e2":Ljava/io/IOException;
    .end local v5    # "x":Ljava/lang/Throwable;
    :catchall_2
    move-exception v8

    :try_start_10
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_4
    move v0, v7

    .line 663
    goto :goto_3

    .line 625
    .end local v1    # "e":Ljava/nio/channels/ClosedChannelException;
    :catch_5
    move-exception v1

    .line 627
    .local v1, "e":Lorg/eclipse/jetty/io/EofException;
    :try_start_11
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "EOF"

    invoke-interface {v8, v9, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 628
    :try_start_12
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 645
    :goto_a
    :try_start_13
    iget-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 647
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 650
    :try_start_14
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 660
    :try_start_15
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 663
    :cond_5
    :goto_b
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result v8

    if-nez v8, :cond_7

    move v0, v6

    .line 664
    :goto_c
    goto/16 :goto_0

    .line 629
    :catch_6
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_16
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_a

    .line 645
    .end local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_3
    move-exception v8

    :try_start_17
    iget-boolean v9, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v9, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 647
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 650
    :try_start_18
    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_11
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 660
    :try_start_19
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 663
    :cond_6
    :goto_d
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v9

    if-nez v9, :cond_c

    move v0, v6

    :goto_e
    throw v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 652
    .restart local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    :catch_7
    move-exception v5

    .line 654
    .restart local v5    # "x":Ljava/lang/Throwable;
    :try_start_1a
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "onInputShutdown failed"

    invoke-interface {v8, v9, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 655
    :try_start_1b
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 660
    :goto_f
    :try_start_1c
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_b

    .line 656
    :catch_8
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_1d
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    goto :goto_f

    .line 660
    .end local v2    # "e2":Ljava/io/IOException;
    .end local v5    # "x":Ljava/lang/Throwable;
    :catchall_4
    move-exception v8

    :try_start_1e
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :cond_7
    move v0, v7

    .line 663
    goto :goto_c

    .line 631
    .end local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    :catch_9
    move-exception v1

    .line 633
    .local v1, "e":Ljava/io/IOException;
    :try_start_1f
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 634
    :try_start_20
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 645
    :goto_10
    :try_start_21
    iget-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v8, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 647
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 650
    :try_start_22
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_b
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    .line 660
    :try_start_23
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 663
    :cond_8
    :goto_11
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    move-result v8

    if-nez v8, :cond_9

    move v0, v6

    .line 664
    :goto_12
    goto/16 :goto_0

    .line 635
    :catch_a
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_24
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    goto :goto_10

    .line 652
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_b
    move-exception v5

    .line 654
    .restart local v5    # "x":Ljava/lang/Throwable;
    :try_start_25
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "onInputShutdown failed"

    invoke-interface {v8, v9, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    .line 655
    :try_start_26
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_c
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    .line 660
    :goto_13
    :try_start_27
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto :goto_11

    .line 656
    :catch_c
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_28
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    goto :goto_13

    .line 660
    .end local v2    # "e2":Ljava/io/IOException;
    .end local v5    # "x":Ljava/lang/Throwable;
    :catchall_5
    move-exception v8

    :try_start_29
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v8
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :cond_9
    move v0, v7

    .line 663
    goto :goto_12

    .line 637
    .end local v1    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2a
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "handle failed"

    invoke-interface {v8, v9, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    .line 640
    :try_start_2b
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_e
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    .line 645
    :goto_14
    :try_start_2c
    iget-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v8, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 647
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 650
    :try_start_2d
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_f
    .catchall {:try_start_2d .. :try_end_2d} :catchall_6

    .line 660
    :try_start_2e
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 663
    :cond_a
    :goto_15
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    move-result v8

    if-nez v8, :cond_b

    move v0, v6

    .line 664
    :goto_16
    goto/16 :goto_0

    .line 641
    :catch_e
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_2f
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_3

    goto :goto_14

    .line 652
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_f
    move-exception v5

    .line 654
    .restart local v5    # "x":Ljava/lang/Throwable;
    :try_start_30
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "onInputShutdown failed"

    invoke-interface {v8, v9, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_6

    .line 655
    :try_start_31
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_10
    .catchall {:try_start_31 .. :try_end_31} :catchall_6

    .line 660
    :goto_17
    :try_start_32
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    goto :goto_15

    .line 656
    :catch_10
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_33
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_6

    goto :goto_17

    .line 660
    .end local v2    # "e2":Ljava/io/IOException;
    .end local v5    # "x":Ljava/lang/Throwable;
    :catchall_6
    move-exception v8

    :try_start_34
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v8
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    :cond_b
    move v0, v7

    .line 663
    goto :goto_16

    .line 652
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v5

    .line 654
    .restart local v5    # "x":Ljava/lang/Throwable;
    :try_start_35
    sget-object v9, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "onInputShutdown failed"

    invoke-interface {v9, v10, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_7

    .line 655
    :try_start_36
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_12
    .catchall {:try_start_36 .. :try_end_36} :catchall_7

    .line 660
    :goto_18
    :try_start_37
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    goto/16 :goto_d

    .line 656
    :catch_12
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_38
    sget-object v9, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_7

    goto :goto_18

    .line 660
    .end local v2    # "e2":Ljava/io/IOException;
    .end local v5    # "x":Ljava/lang/Throwable;
    :catchall_7
    move-exception v8

    :try_start_39
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v8
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    :cond_c
    move v0, v7

    .line 663
    goto/16 :goto_e

    .line 669
    :cond_d
    if-eqz v0, :cond_13

    .line 671
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v8

    if-nez v8, :cond_e

    move v0, v6

    .line 672
    :goto_19
    if-eqz v0, :cond_13

    .line 674
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "SCEP.run() finally DISPATCHED"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v8

    if-nez v8, :cond_f

    move v0, v6

    :goto_1a
    goto :goto_19

    :cond_e
    move v0, v7

    .line 671
    goto :goto_19

    :cond_f
    move v0, v7

    .line 675
    goto :goto_1a

    :cond_10
    move v0, v7

    .line 671
    goto/16 :goto_7

    :cond_11
    move v0, v7

    .line 675
    goto/16 :goto_8

    :cond_12
    throw v8

    .line 679
    :cond_13
    return-void
.end method

.method public hasProgressed()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckForIdle()Z
    .locals 4

    .prologue
    .line 272
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    return v0
.end method

.method protected notIdle()V
    .locals 4

    .prologue
    .line 278
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    .line 280
    :cond_0
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 1
    .param p1, "idleForMs"    # J

    .prologue
    .line 302
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onIdleExpired(J)V

    .line 303
    return-void
.end method

.method public schedule()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 140
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 148
    monitor-exit p0

    .line 192
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v0, :cond_6

    .line 155
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 157
    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 161
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 165
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-nez v0, :cond_5

    .line 166
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 167
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 171
    :cond_6
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v1, :cond_7

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 180
    :cond_7
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-eqz v0, :cond_9

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 191
    :cond_8
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 185
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->dispatch()V

    .line 186
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isDeferringInterestedOps0()Z

    move-result v0

    if-nez v0, :cond_8

    .line 188
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 1
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .param p2, "timeoutMs"    # J

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 261
    return-void
.end method

.method public scheduleWrite()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 465
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    if-ne v0, v2, :cond_0

    .line 466
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Required scheduleWrite {}"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 469
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 470
    return-void
.end method

.method public setCheckForIdle(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 266
    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    .line 267
    return-void

    .line 266
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 2
    .param p1, "connection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 123
    .local v0, "old":Lorg/eclipse/jetty/io/Connection;
    check-cast p1, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .end local p1    # "connection":Lorg/eclipse/jetty/io/Connection;
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 124
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v1, p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0
    .param p1, "timeMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    .line 760
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 709
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    .line 710
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    const-string v1, ""

    .line 711
    .local v1, "keyString":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 713
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 717
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 729
    :cond_1
    :goto_0
    const-string v2, "SCEP@%x{l(%s)<->r(%s),d=%b,open=%b,ishut=%b,oshut=%b,rb=%b,wb=%b,w=%b,i=%d%s}-{%s}"

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOutputShutdown()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    iget v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    aput-object v1, v3, v4

    const/16 v4, 0xc

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 722
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 727
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method protected undispatch()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 238
    monitor-enter p0

    .line 240
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_asyncDispatch:Z

    if-eqz v1, :cond_0

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_asyncDispatch:Z

    .line 243
    monitor-exit p0

    .line 248
    :goto_0
    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_dispatched:Z

    .line 246
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 247
    monitor-exit p0

    .line 248
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
