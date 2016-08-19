.class public Lorg/eclipse/jetty/util/statistic/CounterStatistic;
.super Ljava/lang/Object;
.source "CounterStatistic.java"


# instance fields
.field protected final _curr:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _max:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_curr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 6
    .param p1, "delta"    # J

    .prologue
    .line 53
    iget-object v4, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_curr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 54
    .local v2, "value":J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    .line 55
    iget-object v4, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 56
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 57
    .local v0, "oldValue":J
    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 59
    iget-object v4, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    :cond_1
    return-void

    .line 61
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_0
.end method

.method public decrement()V
    .locals 2

    .prologue
    .line 87
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->add(J)V

    .line 88
    return-void
.end method

.method public getCurrent()J
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_curr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMax()J
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public increment()V
    .locals 2

    .prologue
    .line 79
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->add(J)V

    .line 80
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset(J)V

    .line 37
    return-void
.end method

.method public reset(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 42
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_curr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 45
    return-void
.end method

.method public subtract(J)V
    .locals 2
    .param p1, "delta"    # J

    .prologue
    .line 71
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->add(J)V

    .line 72
    return-void
.end method

.method protected upxdateMax(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 120
    return-void
.end method
