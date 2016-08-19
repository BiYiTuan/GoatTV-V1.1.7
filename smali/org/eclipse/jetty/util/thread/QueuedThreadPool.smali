.class public Lorg/eclipse/jetty/util/thread/QueuedThreadPool;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "QueuedThreadPool.java"

# interfaces
.implements Lorg/eclipse/jetty/util/thread/ThreadPool$SizedThreadPool;
.implements Ljava/util/concurrent/Executor;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _daemon:Z

.field private _detailedDump:Z

.field private _jobs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final _joinLock:Ljava/lang/Object;

.field private final _lastShrink:Ljava/util/concurrent/atomic/AtomicLong;

.field private _maxIdleTimeMs:I

.field private _maxQueued:I

.field private _maxStopTime:I

.field private _maxThreads:I

.field private _minThreads:I

.field private _name:Ljava/lang/String;

.field private _priority:I

.field private _runnable:Ljava/lang/Runnable;

.field private final _threads:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final _threadsIdle:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsIdle:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_lastShrink:Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threads:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    .line 50
    const v0, 0xea60

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    .line 51
    const/16 v0, 0xfe

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxThreads:I

    .line 52
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxQueued:I

    .line 54
    const/4 v0, 0x5

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_priority:I

    .line 55
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_daemon:Z

    .line 56
    const/16 v0, 0x64

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxStopTime:I

    .line 57
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_detailedDump:Z

    .line 521
    new-instance v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;-><init>(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_runnable:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qtp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxThreads"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setMaxThreads(I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "jobQ":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsIdle:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    .prologue
    .line 39
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    return v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    .prologue
    .line 39
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    return v0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_lastShrink:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/QueuedThreadPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->idleJobPoll()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$800(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threads:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private idleJobPoll()Ljava/lang/Runnable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method private startThread(I)Z
    .locals 6
    .param p1, "threads"    # I

    .prologue
    .line 423
    add-int/lit8 v0, p1, 0x1

    .line 424
    .local v0, "next":I
    iget-object v3, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 425
    const/4 v1, 0x0

    .line 444
    :cond_0
    :goto_0
    return v1

    .line 427
    :cond_1
    const/4 v1, 0x0

    .line 430
    .local v1, "started":Z
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    .line 431
    .local v2, "thread":Ljava/lang/Thread;
    iget-boolean v3, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_daemon:Z

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 432
    iget v3, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_priority:I

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threads:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    const/4 v1, 0x1

    .line 441
    if-nez v1, :cond_0

    .line 442
    iget-object v3, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 441
    .end local v2    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    if-nez v1, :cond_2

    .line 442
    iget-object v4, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_2
    throw v3
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 8
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 350
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 352
    iget-object v5, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    .line 353
    .local v1, "jobQ":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getIdleThreads()I

    move-result v0

    .line 354
    .local v0, "idle":I
    iget-object v5, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    if-eqz v0, :cond_0

    if-le v1, v0, :cond_1

    .line 359
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 360
    .local v2, "threads":I
    iget v4, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxThreads:I

    if-ge v2, v4, :cond_1

    .line 361
    invoke-direct {p0, v2}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->startThread(I)Z

    .line 367
    .end local v0    # "idle":I
    .end local v1    # "jobQ":I
    .end local v2    # "threads":I
    :cond_1
    :goto_0
    return v3

    .line 366
    :cond_2
    sget-object v5, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Dispatched {} to stopped {}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object p0, v7, v3

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 367
    goto :goto_0
.end method

.method protected doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 92
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 94
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    if-nez v1, :cond_0

    .line 96
    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxQueued:I

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v2, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxQueued:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 101
    .local v0, "threads":I
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    if-ge v0, v1, :cond_2

    .line 103
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->startThread(I)Z

    .line 104
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    .line 96
    .end local v0    # "threads":I
    :cond_1
    new-instance v1, Lorg/eclipse/jetty/util/BlockingArrayQueue;

    iget v2, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    iget v3, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jetty/util/BlockingArrayQueue;-><init>(II)V

    goto :goto_0

    .line 106
    .restart local v0    # "threads":I
    :cond_2
    return-void
.end method

.method protected doStop()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    invoke-super/range {p0 .. p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 116
    .local v11, "start":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-lez v15, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxStopTime:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-gez v15, :cond_0

    .line 117
    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 120
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v15}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 121
    new-instance v9, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$1;-><init>(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)V

    .line 122
    .local v9, "noop":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsIdle:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .local v4, "i":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    if-lez v5, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v15, v9}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 124
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-lez v15, :cond_2

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threads:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Thread;

    .line 129
    .local v13, "thread":Ljava/lang/Thread;
    invoke-virtual {v13}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 132
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v13    # "thread":Ljava/lang/Thread;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-lez v15, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxStopTime:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-gez v15, :cond_3

    .line 134
    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 136
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threads:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v10

    .line 138
    .local v10, "size":I
    if-lez v10, :cond_6

    .line 140
    sget-object v15, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " threads could not be stopped"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const/4 v15, 0x1

    if-eq v10, v15, :cond_4

    sget-object v15, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v15}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 144
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threads:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Thread;

    .line 146
    .local v14, "unstopped":Ljava/lang/Thread;
    sget-object v15, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t stop "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/StackTraceElement;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v8, :cond_5

    aget-object v3, v2, v7

    .line 149
    .local v3, "element":Ljava/lang/StackTraceElement;
    sget-object v15, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 155
    .end local v2    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v14    # "unstopped":Ljava/lang/Thread;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 157
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 158
    monitor-exit v16

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 13
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getMaxThreads()I

    move-result v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    .local v1, "dump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v10, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threads:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Thread;

    .line 466
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    .line 467
    .local v9, "trace":[Ljava/lang/StackTraceElement;
    const/4 v5, 0x0

    .line 468
    .local v5, "inIdleJobPoll":Z
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .line 470
    .local v7, "t":Ljava/lang/StackTraceElement;
    const-string v10, "idleJobPoll"

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 472
    const/4 v5, 0x1

    .line 476
    .end local v7    # "t":Ljava/lang/StackTraceElement;
    :cond_0
    move v4, v5

    .line 478
    .local v4, "idle":Z
    iget-boolean v10, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_detailedDump:Z

    if-eqz v10, :cond_2

    .line 480
    new-instance v10, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$2;

    invoke-direct {v10, p0, v8, v4, v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$2;-><init>(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;Ljava/lang/Thread;Z[Ljava/lang/StackTraceElement;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    .end local v4    # "idle":Z
    .restart local v7    # "t":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 497
    .end local v7    # "t":Ljava/lang/StackTraceElement;
    .restart local v4    # "idle":Z
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " @ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v10, v9

    if-lez v10, :cond_3

    const/4 v10, 0x0

    aget-object v10, v9, v10

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_4

    const-string v10, " IDLE"

    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v10, "???"

    goto :goto_2

    :cond_4
    const-string v10, ""

    goto :goto_3

    .line 501
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v3    # "i$":I
    .end local v4    # "idle":Z
    .end local v5    # "inIdleJobPoll":Z
    .end local v6    # "len$":I
    .end local v8    # "thread":Ljava/lang/Thread;
    .end local v9    # "trace":[Ljava/lang/StackTraceElement;
    :cond_5
    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 502
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/util/Collection;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {p1, p2, v10}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 504
    return-void
.end method

.method public dumpThread(J)Ljava/lang/String;
    .locals 8
    .param p1, "id"    # J

    .prologue
    .line 656
    iget-object v6, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threads:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 658
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 663
    .local v2, "element":Ljava/lang/StackTraceElement;
    const-string v6, "  at "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 664
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 667
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "thread":Ljava/lang/Thread;
    :goto_1
    return-object v6

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0

    .line 375
    :cond_0
    return-void
.end method

.method public getIdleThreads()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsIdle:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTimeMs()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    return v0
.end method

.method public getMaxQueued()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxQueued:I

    return v0
.end method

.method public getMaxStopTimeMs()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxStopTime:I

    return v0
.end method

.method public getMaxThreads()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxThreads:I

    return v0
.end method

.method public getMinThreads()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    return-object v0
.end method

.method protected getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getThreads()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getThreadsPriority()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_priority:I

    return v0
.end method

.method public interruptThread(J)Z
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 638
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threads:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 640
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 642
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 643
    const/4 v2, 0x1

    .line 646
    .end local v1    # "thread":Ljava/lang/Thread;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDaemon()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_daemon:Z

    return v0
.end method

.method public isDetailedDump()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_detailedDump:Z

    return v0
.end method

.method public isLowOnThreads()Z
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxThreads:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsIdle:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 391
    :cond_1
    return-void
.end method

.method protected newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 450
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method protected runJob(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 599
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 600
    return-void
.end method

.method public setDaemon(Z)V
    .locals 0
    .param p1, "daemon"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_daemon:Z

    .line 168
    return-void
.end method

.method public setDetailedDump(Z)V
    .locals 0
    .param p1, "detailedDump"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_detailedDump:Z

    .line 345
    return-void
.end method

.method public setMaxIdleTimeMs(I)V
    .locals 0
    .param p1, "maxIdleTimeMs"    # I

    .prologue
    .line 180
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    .line 181
    return-void
.end method

.method public setMaxQueued(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxQueued:I

    .line 264
    return-void
.end method

.method public setMaxStopTimeMs(I)V
    .locals 0
    .param p1, "stopTimeMs"    # I

    .prologue
    .line 189
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxStopTime:I

    .line 190
    return-void
.end method

.method public setMaxThreads(I)V
    .locals 2
    .param p1, "maxThreads"    # I

    .prologue
    .line 200
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxThreads:I

    .line 201
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxThreads:I

    if-le v0, v1, :cond_0

    .line 202
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxThreads:I

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    .line 203
    :cond_0
    return-void
.end method

.method public setMinThreads(I)V
    .locals 3
    .param p1, "minThreads"    # I

    .prologue
    .line 213
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    .line 215
    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    iget v2, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxThreads:I

    if-le v1, v2, :cond_0

    .line 216
    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    iput v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_maxThreads:I

    .line 218
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 219
    .local v0, "threads":I
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_minThreads:I

    if-ge v0, v1, :cond_1

    .line 221
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->startThread(I)Z

    .line 222
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threadsStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 224
    :cond_1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setThreadsPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 243
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_priority:I

    .line 244
    return-void
.end method

.method public stopThread(J)Z
    .locals 4
    .param p1, "id"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 620
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_threads:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 622
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 624
    invoke-virtual {v1}, Ljava/lang/Thread;->stop()V

    .line 625
    const/4 v2, 0x1

    .line 628
    .end local v1    # "thread":Ljava/lang/Thread;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getMinThreads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getIdleThreads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getThreads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getMaxThreads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->_jobs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    goto :goto_0
.end method
