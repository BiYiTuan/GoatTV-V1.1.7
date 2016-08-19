.class public Lorg/eclipse/jetty/util/statistic/SampleStatistic;
.super Ljava/lang/Object;
.source "SampleStatistic.java"


# instance fields
.field protected final _count:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _max:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _total:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMax()J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMean()D
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getStdDev()D
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVariance()D
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 104
    iget-object v4, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 105
    .local v2, "variance100":J
    iget-object v4, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 107
    .local v0, "count":J
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    long-to-double v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    sub-long v6, v0, v8

    long-to-double v6, v6

    div-double/2addr v4, v6

    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 49
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 50
    return-void
.end method

.method public set(J)V
    .locals 13
    .param p1, "sample"    # J

    .prologue
    .line 54
    iget-object v10, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v8

    .line 55
    .local v8, "total":J
    iget-object v10, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 57
    .local v0, "count":J
    const-wide/16 v10, 0x1

    cmp-long v10, v0, v10

    if-lez v10, :cond_0

    .line 59
    const-wide/16 v10, 0xa

    mul-long/2addr v10, v8

    div-long v4, v10, v0

    .line 60
    .local v4, "mean10":J
    const-wide/16 v10, 0xa

    mul-long/2addr v10, p1

    sub-long v2, v10, v4

    .line 61
    .local v2, "delta10":J
    iget-object v10, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    mul-long v11, v2, v2

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 64
    .end local v2    # "delta10":J
    .end local v4    # "mean10":J
    :cond_0
    iget-object v10, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 65
    .local v6, "oldMax":J
    :goto_0
    cmp-long v10, p1, v6

    if-lez v10, :cond_1

    .line 67
    iget-object v10, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10, v6, v7, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 72
    :cond_1
    return-void

    .line 69
    :cond_2
    iget-object v10, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    goto :goto_0
.end method
