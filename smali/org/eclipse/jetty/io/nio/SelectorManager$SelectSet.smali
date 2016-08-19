.class public Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectSet"
.end annotation


# instance fields
.field private _busySelects:I

.field private final _changes:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _endPoints:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _idleTick:J

.field private _monitorNext:J

.field private _paused:Z

.field private _pausing:Z

.field private volatile _selecting:Ljava/lang/Thread;

.field private volatile _selector:Ljava/nio/channels/Selector;

.field private final _setID:I

.field private final _timeout:Lorg/eclipse/jetty/util/thread/Timeout;

.field final synthetic this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V
    .locals 4
    .param p2, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 403
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 399
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    .line 404
    iput p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_setID:I

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_idleTick:J

    .line 407
    new-instance v0, Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/thread/Timeout;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->setDuration(J)V

    .line 411
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->__MONITOR_PERIOD:I
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    .line 413
    return-void
.end method

.method static synthetic access$800(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .prologue
    .line 384
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$900(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .prologue
    .line 384
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->renewSelector()V

    return-void
.end method

.method private createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 5
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "sKey"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v1, p1, p0, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v0

    .line 837
    .local v0, "endp":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "created {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 839
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    return-object v0
.end method

.method private renewSelector()V
    .locals 9

    .prologue
    .line 749
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 752
    .local v6, "selector":Ljava/nio/channels/Selector;
    if-nez v6, :cond_0

    .line 753
    monitor-exit p0

    .line 776
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v5

    .line 755
    .local v5, "new_selector":Ljava/nio/channels/Selector;
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 757
    .local v4, "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v7

    if-eqz v7, :cond_1

    .line 760
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    .line 761
    .local v1, "channel":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    .line 763
    .local v0, "attachment":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 764
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_1

    .line 770
    .end local v0    # "attachment":Ljava/lang/Object;
    .end local v1    # "channel":Ljava/nio/channels/SelectableChannel;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "k":Ljava/nio/channels/SelectionKey;
    .end local v5    # "new_selector":Ljava/nio/channels/Selector;
    .end local v6    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 772
    :catch_0
    move-exception v2

    .line 774
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "recreating selector"

    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 766
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "attachment":Ljava/lang/Object;
    .restart local v1    # "channel":Ljava/nio/channels/SelectableChannel;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "k":Ljava/nio/channels/SelectionKey;
    .restart local v5    # "new_selector":Ljava/nio/channels/Selector;
    .restart local v6    # "selector":Ljava/nio/channels/Selector;
    :cond_2
    :try_start_3
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    goto :goto_1

    .line 768
    .end local v0    # "attachment":Ljava/lang/Object;
    .end local v1    # "channel":Ljava/nio/channels/SelectableChannel;
    .end local v4    # "k":Ljava/nio/channels/SelectionKey;
    :cond_3
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v7}, Ljava/nio/channels/Selector;->close()V

    .line 769
    iput-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 770
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public addChange(Ljava/lang/Object;)V
    .locals 1
    .param p1, "change"    # Ljava/lang/Object;

    .prologue
    .line 418
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method public addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "att"    # Ljava/lang/Object;

    .prologue
    .line 424
    if-nez p2, :cond_0

    .line 425
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 430
    :goto_0
    return-void

    .line 426
    :cond_0
    instance-of v0, p2, Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 429
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;-><init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 807
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    .line 808
    return-void
.end method

.method public destroyEndPoint(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 4
    .param p1, "endp"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 846
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "destroyEndPoint {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 849
    return-void
.end method

.method public doSelect()V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    move-object/from16 v24, v0
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    .local v24, "selector":Ljava/nio/channels/Selector;
    if-nez v24, :cond_0

    .line 739
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    .line 741
    .end local v24    # "selector":Ljava/nio/channels/Selector;
    :goto_0
    return-void

    .line 450
    .restart local v24    # "selector":Ljava/nio/channels/Selector;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v10

    .local v10, "changes":I
    move v11, v10

    .line 451
    .end local v10    # "changes":I
    .local v11, "changes":I
    :goto_1
    add-int/lit8 v10, v11, -0x1

    .end local v11    # "changes":I
    .restart local v10    # "changes":I
    if-lez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .local v9, "change":Ljava/lang/Object;
    if-eqz v9, :cond_9

    .line 453
    const/4 v8, 0x0

    .line 454
    .local v8, "ch":Ljava/nio/channels/Channel;
    const/16 v20, 0x0

    .line 458
    .local v20, "key":Ljava/nio/channels/SelectionKey;
    :try_start_2
    instance-of v0, v9, Lorg/eclipse/jetty/io/EndPoint;

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 461
    move-object v0, v9

    check-cast v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-object/from16 v16, v0

    .line 462
    .local v16, "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v8

    .line 463
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->doUpdateKey()V

    .end local v9    # "change":Ljava/lang/Object;
    .end local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    :cond_1
    :goto_2
    move v11, v10

    .line 527
    .end local v10    # "changes":I
    .restart local v11    # "changes":I
    goto :goto_1

    .line 465
    .end local v11    # "changes":I
    .restart local v9    # "change":Ljava/lang/Object;
    .restart local v10    # "changes":I
    :cond_2
    instance-of v0, v9, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_4

    .line 468
    move-object v0, v9

    check-cast v0, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;

    move-object v4, v0

    .line 469
    .local v4, "asc":Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;
    iget-object v12, v4, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;->_channel:Ljava/nio/channels/SelectableChannel;

    .line 470
    .local v12, "channel":Ljava/nio/channels/SelectableChannel;
    move-object v8, v12

    .line 471
    iget-object v5, v4, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;->_attachment:Ljava/lang/Object;

    .line 473
    .local v5, "att":Ljava/lang/Object;
    instance-of v0, v12, Ljava/nio/channels/SocketChannel;

    move/from16 v30, v0

    if-eqz v30, :cond_3

    move-object v0, v12

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 475
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v20

    .line 476
    check-cast v12, Ljava/nio/channels/SocketChannel;

    .end local v12    # "channel":Ljava/nio/channels/SelectableChannel;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 477
    .restart local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 506
    .end local v4    # "asc":Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;
    .end local v5    # "att":Ljava/lang/Object;
    .end local v9    # "change":Ljava/lang/Object;
    .end local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    :catch_0
    move-exception v14

    .line 508
    .local v14, "e":Ljava/nio/channels/CancelledKeyException;
    :try_start_3
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 726
    .end local v8    # "ch":Ljava/nio/channels/Channel;
    .end local v10    # "changes":I
    .end local v14    # "e":Ljava/nio/channels/CancelledKeyException;
    .end local v20    # "key":Ljava/nio/channels/SelectionKey;
    .end local v24    # "selector":Ljava/nio/channels/Selector;
    :catch_1
    move-exception v14

    .line 728
    .local v14, "e":Ljava/nio/channels/ClosedSelectorException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v30

    if-eqz v30, :cond_21

    .line 729
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 739
    :goto_3
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    goto/16 :goto_0

    .line 480
    .end local v14    # "e":Ljava/nio/channels/ClosedSelectorException;
    .restart local v4    # "asc":Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;
    .restart local v5    # "att":Ljava/lang/Object;
    .restart local v8    # "ch":Ljava/nio/channels/Channel;
    .restart local v9    # "change":Ljava/lang/Object;
    .restart local v10    # "changes":I
    .restart local v12    # "channel":Ljava/nio/channels/SelectableChannel;
    .restart local v20    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v24    # "selector":Ljava/nio/channels/Selector;
    :cond_3
    :try_start_5
    invoke-virtual {v12}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 482
    const/16 v30, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v20

    goto :goto_2

    .line 485
    .end local v4    # "asc":Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;
    .end local v5    # "att":Ljava/lang/Object;
    .end local v12    # "channel":Ljava/nio/channels/SelectableChannel;
    :cond_4
    instance-of v0, v9, Ljava/nio/channels/SocketChannel;

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 488
    move-object v0, v9

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v12, v0

    .line 489
    .local v12, "channel":Ljava/nio/channels/SocketChannel;
    move-object v8, v12

    .line 490
    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v12, v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v20

    .line 491
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 492
    .restart local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 510
    .end local v9    # "change":Ljava/lang/Object;
    .end local v12    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    :catch_2
    move-exception v14

    .line 512
    .local v14, "e":Ljava/lang/Throwable;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v30

    if-eqz v30, :cond_8

    .line 513
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 519
    :goto_4
    if-eqz v8, :cond_1

    .line 520
    :try_start_7
    invoke-interface {v8}, Ljava/nio/channels/Channel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 522
    :catch_3
    move-exception v15

    .line 524
    .local v15, "e2":Ljava/io/IOException;
    :try_start_8
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 733
    .end local v8    # "ch":Ljava/nio/channels/Channel;
    .end local v10    # "changes":I
    .end local v14    # "e":Ljava/lang/Throwable;
    .end local v15    # "e2":Ljava/io/IOException;
    .end local v20    # "key":Ljava/nio/channels/SelectionKey;
    .end local v24    # "selector":Ljava/nio/channels/Selector;
    :catch_4
    move-exception v14

    .line 735
    .local v14, "e":Ljava/nio/channels/CancelledKeyException;
    :try_start_9
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 739
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    goto/16 :goto_0

    .line 495
    .end local v14    # "e":Ljava/nio/channels/CancelledKeyException;
    .restart local v8    # "ch":Ljava/nio/channels/Channel;
    .restart local v9    # "change":Ljava/lang/Object;
    .restart local v10    # "changes":I
    .restart local v20    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v24    # "selector":Ljava/nio/channels/Selector;
    :cond_5
    :try_start_a
    instance-of v0, v9, Lorg/eclipse/jetty/io/nio/SelectorManager$ChangeTask;

    move/from16 v30, v0

    if-eqz v30, :cond_6

    .line 497
    check-cast v9, Ljava/lang/Runnable;

    .end local v9    # "change":Ljava/lang/Object;
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 739
    .end local v8    # "ch":Ljava/nio/channels/Channel;
    .end local v10    # "changes":I
    .end local v20    # "key":Ljava/nio/channels/SelectionKey;
    .end local v24    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v30

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    throw v30

    .line 499
    .restart local v8    # "ch":Ljava/nio/channels/Channel;
    .restart local v9    # "change":Ljava/lang/Object;
    .restart local v10    # "changes":I
    .restart local v20    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v24    # "selector":Ljava/nio/channels/Selector;
    :cond_6
    :try_start_b
    instance-of v0, v9, Ljava/lang/Runnable;

    move/from16 v30, v0

    if-eqz v30, :cond_7

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v30, v0

    check-cast v9, Ljava/lang/Runnable;

    .end local v9    # "change":Ljava/lang/Object;
    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 504
    .restart local v9    # "change":Ljava/lang/Object;
    :cond_7
    new-instance v30, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 515
    .end local v9    # "change":Ljava/lang/Object;
    .local v14, "e":Ljava/lang/Throwable;
    :cond_8
    :try_start_c
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 531
    .end local v8    # "ch":Ljava/nio/channels/Channel;
    .end local v14    # "e":Ljava/lang/Throwable;
    .end local v20    # "key":Ljava/nio/channels/SelectionKey;
    :cond_9
    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v23

    .line 533
    .local v23, "selected":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 536
    .local v21, "now":J
    if-nez v23, :cond_c

    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_c

    .line 539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_pausing:Z

    move/from16 v30, v0
    :try_end_c
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v30, :cond_a

    .line 543
    :try_start_d
    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->__BUSY_PAUSE:I
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$200()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 549
    :goto_5
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 553
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow(J)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jetty/util/thread/Timeout;->getTimeToNext()J

    move-result-wide v26

    .line 556
    .local v26, "to_next_timeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v30

    if-nez v30, :cond_e

    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->__IDLE_TICK:I
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$300()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 557
    .local v28, "wait":J
    :goto_6
    const-wide/16 v30, 0x0

    cmp-long v30, v28, v30

    if-lez v30, :cond_b

    const-wide/16 v30, 0x0

    cmp-long v30, v26, v30

    if-ltz v30, :cond_b

    cmp-long v30, v28, v26

    if-lez v30, :cond_b

    .line 558
    move-wide/from16 v28, v26

    .line 561
    :cond_b
    const-wide/16 v30, 0x0

    cmp-long v30, v28, v30

    if-lez v30, :cond_c

    .line 563
    move-wide/from16 v6, v21

    .line 564
    .local v6, "before":J
    move-object/from16 v0, v24

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v23

    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow(J)V

    .line 570
    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->__MONITOR_PERIOD:I
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v30

    if-lez v30, :cond_c

    sub-long v30, v21, v6

    const-wide/16 v32, 0x1

    cmp-long v30, v30, v32

    if-gtz v30, :cond_c

    .line 573
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_busySelects:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_busySelects:I

    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->__MAX_SELECTS:I
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$400()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_c

    .line 576
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_pausing:Z

    .line 579
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_paused:Z

    move/from16 v30, v0

    if-nez v30, :cond_c

    .line 582
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_paused:Z

    .line 583
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v31, "Selector {} is too busy, pausing!"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p0, v32, v33

    invoke-interface/range {v30 .. v32}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    .end local v6    # "before":J
    .end local v26    # "to_next_timeout":J
    .end local v28    # "wait":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    move-object/from16 v30, v0

    if-eqz v30, :cond_d

    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/Selector;->isOpen()Z
    :try_end_e
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v30

    if-nez v30, :cond_f

    .line 739
    :cond_d
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    goto/16 :goto_0

    .line 545
    :catch_5
    move-exception v14

    .line 547
    .local v14, "e":Ljava/lang/InterruptedException;
    :try_start_f
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 556
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .restart local v26    # "to_next_timeout":J
    :cond_e
    const-wide/16 v28, 0x0

    goto/16 :goto_6

    .line 595
    .end local v26    # "to_next_timeout":J
    :cond_f
    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/nio/channels/SelectionKey;
    :try_end_f
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 597
    .restart local v20    # "key":Ljava/nio/channels/SelectionKey;
    const/4 v12, 0x0

    .line 601
    .restart local v12    # "channel":Ljava/nio/channels/SocketChannel;
    :try_start_10
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v30

    if-nez v30, :cond_11

    .line 603
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 604
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 605
    .restart local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    if-eqz v16, :cond_10

    .line 606
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->doUpdateKey()V
    :try_end_10
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_7

    .line 655
    .end local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    :catch_6
    move-exception v14

    .line 657
    .local v14, "e":Ljava/nio/channels/CancelledKeyException;
    :try_start_11
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_7

    .line 610
    .end local v14    # "e":Ljava/nio/channels/CancelledKeyException;
    :cond_11
    :try_start_12
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    .line 611
    .restart local v5    # "att":Ljava/lang/Object;
    instance-of v0, v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move/from16 v30, v0

    if-eqz v30, :cond_14

    .line 613
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v30

    if-nez v30, :cond_12

    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v30

    if-eqz v30, :cond_13

    .line 614
    :cond_12
    check-cast v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .end local v5    # "att":Ljava/lang/Object;
    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V

    .line 653
    :cond_13
    :goto_8
    const/16 v20, 0x0

    goto :goto_7

    .line 616
    .restart local v5    # "att":Ljava/lang/Object;
    :cond_14
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v30

    if-eqz v30, :cond_19

    .line 619
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v12, v0
    :try_end_12
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 620
    const/4 v13, 0x0

    .line 623
    .local v13, "connected":Z
    :try_start_13
    invoke-virtual {v12}, Ljava/nio/channels/SocketChannel;->finishConnect()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-result v13

    .line 631
    if-eqz v13, :cond_16

    .line 633
    const/16 v30, 0x1

    :try_start_14
    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 635
    .restart local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V
    :try_end_14
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_8

    .line 659
    .end local v5    # "att":Ljava/lang/Object;
    .end local v13    # "connected":Z
    .end local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    :catch_7
    move-exception v14

    .line 661
    .local v14, "e":Ljava/lang/Exception;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 662
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_15
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 668
    :goto_9
    if-eqz v12, :cond_15

    .line 669
    :try_start_16
    invoke-virtual {v12}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 676
    :cond_15
    :goto_a
    if-eqz v20, :cond_10

    :try_start_17
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Ljava/nio/channels/ServerSocketChannel;

    move/from16 v30, v0

    if-nez v30, :cond_10

    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v30

    if-eqz v30, :cond_10

    .line 677
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_17
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_7

    .line 640
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v5    # "att":Ljava/lang/Object;
    .restart local v13    # "connected":Z
    :cond_16
    :try_start_18
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_18
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_18 .. :try_end_18} :catch_6
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_8

    .line 625
    :catch_8
    move-exception v14

    .line 627
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v14, v5}, Lorg/eclipse/jetty/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 631
    if-eqz v13, :cond_17

    .line 633
    const/16 v30, 0x1

    :try_start_1a
    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 635
    .restart local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V

    goto/16 :goto_8

    .line 640
    .end local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    :cond_17
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto/16 :goto_8

    .line 631
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v30

    if-eqz v13, :cond_18

    .line 633
    const/16 v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 635
    .restart local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V

    .line 640
    .end local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    :goto_b
    throw v30

    :cond_18
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_b

    .line 647
    .end local v13    # "connected":Z
    :cond_19
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v12, v0

    .line 648
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 649
    .restart local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v30

    if-eqz v30, :cond_13

    .line 651
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V
    :try_end_1a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1a .. :try_end_1a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_8

    .line 664
    .end local v5    # "att":Ljava/lang/Object;
    .end local v16    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .restart local v14    # "e":Ljava/lang/Exception;
    :cond_1a
    :try_start_1b
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 671
    :catch_9
    move-exception v15

    .line 673
    .restart local v15    # "e2":Ljava/io/IOException;
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 682
    .end local v12    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "e2":Ljava/io/IOException;
    .end local v20    # "key":Ljava/nio/channels/SelectionKey;
    :cond_1b
    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->clear()V

    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow(J)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jetty/util/thread/Timeout;->expired()Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v25

    .line 687
    .local v25, "task":Lorg/eclipse/jetty/util/thread/Timeout$Task;
    :goto_c
    if-eqz v25, :cond_1d

    .line 689
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/Runnable;

    move/from16 v30, v0

    if-eqz v30, :cond_1c

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v30, v0

    check-cast v25, Ljava/lang/Runnable;

    .end local v25    # "task":Lorg/eclipse/jetty/util/thread/Timeout$Task;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    .line 691
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jetty/util/thread/Timeout;->expired()Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v25

    .restart local v25    # "task":Lorg/eclipse/jetty/util/thread/Timeout$Task;
    goto :goto_c

    .line 695
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_idleTick:J

    move-wide/from16 v30, v0

    sub-long v30, v21, v30

    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->__IDLE_TICK:I
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$300()I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-lez v30, :cond_1e

    .line 697
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_idleTick:J

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v30, v0

    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J
    invoke-static/range {v30 .. v30}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$500(Lorg/eclipse/jetty/io/nio/SelectorManager;)J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-lez v30, :cond_20

    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v32, v0

    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J
    invoke-static/range {v32 .. v32}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$500(Lorg/eclipse/jetty/io/nio/SelectorManager;)J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-lez v30, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v30, v0

    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->_maxIdleTime:I
    invoke-static/range {v30 .. v30}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$600(Lorg/eclipse/jetty/io/nio/SelectorManager;)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v30, v30, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v32, v0

    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesMaxIdleTime:I
    invoke-static/range {v32 .. v32}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$700(Lorg/eclipse/jetty/io/nio/SelectorManager;)I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    sub-long v18, v30, v32

    .line 703
    .local v18, "idle_now":J
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-object/from16 v30, v0

    new-instance v31, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;J)V

    invoke-virtual/range {v30 .. v31}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    .line 718
    .end local v18    # "idle_now":J
    :cond_1e
    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->__MONITOR_PERIOD:I
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v30

    if-lez v30, :cond_1f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    move-wide/from16 v30, v0

    cmp-long v30, v21, v30

    if-lez v30, :cond_1f

    .line 720
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_busySelects:I

    .line 721
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_pausing:Z

    .line 722
    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager;->__MONITOR_PERIOD:I
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v30, v30, v21

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_monitorNext:J
    :try_end_1b
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 739
    :cond_1f
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    goto/16 :goto_0

    :cond_20
    move-wide/from16 v18, v21

    .line 699
    goto :goto_d

    .line 731
    .end local v10    # "changes":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v21    # "now":J
    .end local v23    # "selected":I
    .end local v24    # "selector":Ljava/nio/channels/Selector;
    .end local v25    # "task":Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .local v14, "e":Ljava/nio/channels/ClosedSelectorException;
    :cond_21
    :try_start_1c
    sget-object v30, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_3
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 16
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v13

    const-string v14, " id="

    invoke-interface {v13, v14}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_setID:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v13

    const-string v14, "\n"

    invoke-interface {v13, v14}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 925
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    .line 927
    .local v8, "selecting":Ljava/lang/Thread;
    const-string v12, "not selecting"

    .line 928
    .local v12, "where":Ljava/lang/String;
    if-nez v8, :cond_2

    const/4 v11, 0x0

    .line 929
    .local v11, "trace":[Ljava/lang/StackTraceElement;
    :goto_0
    if-eqz v11, :cond_0

    .line 931
    move-object v2, v11

    .local v2, "arr$":[Ljava/lang/StackTraceElement;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v10, v2, v5

    .line 932
    .local v10, "t":Ljava/lang/StackTraceElement;
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "org.eclipse.jetty."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 934
    move-object v12, v10

    .line 939
    .end local v2    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "t":Ljava/lang/StackTraceElement;
    .end local v12    # "where":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 940
    .local v9, "selector":Ljava/nio/channels/Selector;
    if-eqz v9, :cond_1

    .line 942
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 943
    .local v3, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v13, 0x1

    invoke-direct {v6, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 947
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v13, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3, v6}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 958
    const-wide/16 v13, 0x5

    :try_start_0
    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v13, v14, v15}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :goto_2
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/util/Collection;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 967
    .end local v3    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_1
    return-void

    .line 928
    .end local v9    # "selector":Ljava/nio/channels/Selector;
    .end local v11    # "trace":[Ljava/lang/StackTraceElement;
    .restart local v12    # "where":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    goto :goto_0

    .line 931
    .restart local v2    # "arr$":[Ljava/lang/StackTraceElement;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v10    # "t":Ljava/lang/StackTraceElement;
    .restart local v11    # "trace":[Ljava/lang/StackTraceElement;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 960
    .end local v2    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "t":Ljava/lang/StackTraceElement;
    .end local v12    # "where":Ljava/lang/String;
    .restart local v3    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v9    # "selector":Ljava/nio/channels/Selector;
    :catch_0
    move-exception v4

    .line 962
    .local v4, "e":Ljava/lang/InterruptedException;
    sget-object v13, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v13, v4}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public dumpKeyState(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 972
    .local p1, "dumpto":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 973
    .local v3, "selector":Ljava/nio/channels/Selector;
    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    .line 974
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " keys="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 977
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 978
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iOps="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rOps="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 980
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iOps=-1 rOps=-1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 982
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :cond_1
    return-void
.end method

.method public getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    return-object v0
.end method

.method public getNow()J
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->getNow()J

    move-result-wide v0

    return-wide v0
.end method

.method getSelector()Ljava/nio/channels/Selector;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 2
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .param p2, "timeoutMs"    # J

    .prologue
    .line 799
    instance-of v0, p1, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "!Runnable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 802
    return-void
.end method

.method stop()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 864
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v8, 0x64

    if-ge v4, v8, :cond_0

    :try_start_0
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    if-eqz v8, :cond_0

    .line 866
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 867
    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 870
    :catch_0
    move-exception v2

    .line 872
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 876
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-enter p0

    .line 878
    :try_start_1
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 879
    .local v7, "selector":Ljava/nio/channels/Selector;
    invoke-virtual {v7}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SelectionKey;

    .line 881
    .local v6, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v6, :cond_1

    .line 883
    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    .line 884
    .local v1, "att":Ljava/lang/Object;
    instance-of v8, v1, Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v8, :cond_1

    .line 886
    move-object v0, v1

    check-cast v0, Lorg/eclipse/jetty/io/EndPoint;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    .local v3, "endpoint":Lorg/eclipse/jetty/io/EndPoint;
    :try_start_2
    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 891
    :catch_1
    move-exception v2

    .line 893
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 911
    .end local v1    # "att":Ljava/lang/Object;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "endpoint":Lorg/eclipse/jetty/io/EndPoint;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/nio/channels/SelectionKey;
    .end local v7    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 899
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "selector":Ljava/nio/channels/Selector;
    :cond_2
    :try_start_4
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/thread/Timeout;->cancelAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 902
    :try_start_5
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 903
    if-eqz v7, :cond_3

    .line 904
    invoke-virtual {v7}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 910
    :cond_3
    :goto_2
    const/4 v8, 0x0

    :try_start_6
    iput-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 911
    monitor-exit p0

    .line 912
    return-void

    .line 906
    :catch_2
    move-exception v2

    .line 908
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 987
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 988
    .local v0, "selector":Ljava/nio/channels/Selector;
    const-string v3, "%s keys=%d selected=%d"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public wakeup()V
    .locals 3

    .prologue
    .line 815
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 816
    .local v1, "selector":Ljava/nio/channels/Selector;
    if-eqz v1, :cond_0

    .line 817
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    .end local v1    # "selector":Ljava/nio/channels/Selector;
    :cond_0
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$2;

    invoke-direct {v2, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$2;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 829
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->renewSelector()V

    goto :goto_0
.end method
