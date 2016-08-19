.class public Lorg/eclipse/jetty/util/thread/Timeout$Task;
.super Ljava/lang/Object;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/thread/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field _delay:J

.field _expired:Z

.field _next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field _prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field _timeout:Lorg/eclipse/jetty/util/thread/Timeout;

.field _timestamp:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    .line 260
    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 248
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->unlink()V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/util/thread/Timeout$Task;Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .param p1, "x1"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->link(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    return-void
.end method

.method private link(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 2
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 295
    .local v0, "next_next":Lorg/eclipse/jetty/util/thread/Timeout$Task;
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p1, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 296
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 297
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v0, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 298
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 299
    return-void
.end method

.method private unlink()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v1, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 286
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v1, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 287
    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    .line 289
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 340
    .local v0, "timeout":Lorg/eclipse/jetty/util/thread/Timeout;
    if-eqz v0, :cond_0

    .line 342
    # getter for: Lorg/eclipse/jetty/util/thread/Timeout;->_lock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->access$300(Lorg/eclipse/jetty/util/thread/Timeout;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 344
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->unlink()V

    .line 345
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    .line 346
    monitor-exit v2

    .line 348
    :cond_0
    return-void

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected expire()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public expired()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public getAge()J
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    .line 272
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 273
    .local v2, "t":Lorg/eclipse/jetty/util/thread/Timeout;
    if-eqz v2, :cond_0

    .line 275
    # getter for: Lorg/eclipse/jetty/util/thread/Timeout;->_now:J
    invoke-static {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->access$200(Lorg/eclipse/jetty/util/thread/Timeout;)J

    move-result-wide v0

    .line 276
    .local v0, "now":J
    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_0

    .line 277
    iget-wide v3, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    sub-long v3, v0, v3

    .line 279
    .end local v0    # "now":J
    :cond_0
    return-wide v3
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    return v0
.end method

.method public isScheduled()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reschedule()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 329
    .local v0, "timeout":Lorg/eclipse/jetty/util/thread/Timeout;
    if-eqz v0, :cond_0

    .line 330
    iget-wide v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_delay:J

    invoke-virtual {v0, p0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 331
    :cond_0
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout;)V
    .locals 0
    .param p1, "timer"    # Lorg/eclipse/jetty/util/thread/Timeout;

    .prologue
    .line 308
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 309
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout;J)V
    .locals 0
    .param p1, "timer"    # Lorg/eclipse/jetty/util/thread/Timeout;
    .param p2, "delay"    # J

    .prologue
    .line 318
    invoke-virtual {p1, p0, p2, p3}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 319
    return-void
.end method
