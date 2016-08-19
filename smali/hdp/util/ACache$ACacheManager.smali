.class public Lhdp/util/ACache$ACacheManager;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/util/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACacheManager"
.end annotation


# instance fields
.field private final cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected cacheDir:Ljava/io/File;

.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private final countLimit:I

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:J

.field final synthetic this$0:Lhdp/util/ACache;


# direct methods
.method private constructor <init>(Lhdp/util/ACache;Ljava/io/File;JI)V
    .locals 1
    .param p2, "cacheDir"    # Ljava/io/File;
    .param p3, "sizeLimit"    # J
    .param p5, "countLimit"    # I

    .prologue
    .line 562
    iput-object p1, p0, Lhdp/util/ACache$ACacheManager;->this$0:Lhdp/util/ACache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhdp/util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 563
    iput-object p2, p0, Lhdp/util/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    .line 564
    iput-wide p3, p0, Lhdp/util/ACache$ACacheManager;->sizeLimit:J

    .line 565
    iput p5, p0, Lhdp/util/ACache$ACacheManager;->countLimit:I

    .line 566
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lhdp/util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 567
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lhdp/util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 568
    invoke-direct {p0}, Lhdp/util/ACache$ACacheManager;->calculateCacheSizeAndCacheCount()V

    .line 569
    return-void
.end method

.method synthetic constructor <init>(Lhdp/util/ACache;Ljava/io/File;JILhdp/util/ACache$ACacheManager;)V
    .locals 0

    .prologue
    .line 562
    invoke-direct/range {p0 .. p5}, Lhdp/util/ACache$ACacheManager;-><init>(Lhdp/util/ACache;Ljava/io/File;JI)V

    return-void
.end method

.method static synthetic access$0(Lhdp/util/ACache$ACacheManager;Ljava/io/File;)J
    .locals 2

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lhdp/util/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1(Lhdp/util/ACache$ACacheManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lhdp/util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lhdp/util/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lhdp/util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$3(Lhdp/util/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lhdp/util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$5(Lhdp/util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lhdp/util/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lhdp/util/ACache$ACacheManager;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lhdp/util/ACache$ACacheManager;->put(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$7(Lhdp/util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lhdp/util/ACache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lhdp/util/ACache$ACacheManager;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lhdp/util/ACache$ACacheManager;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lhdp/util/ACache$ACacheManager;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Lhdp/util/ACache$ACacheManager;->clear()V

    return-void
.end method

.method private calculateCacheSizeAndCacheCount()V
    .locals 2

    .prologue
    .line 575
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lhdp/util/ACache$ACacheManager$1;

    invoke-direct {v1, p0}, Lhdp/util/ACache$ACacheManager$1;-><init>(Lhdp/util/ACache$ACacheManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 591
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 592
    return-void
.end method

.method private calculateSize(Ljava/io/File;)J
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 682
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private clear()V
    .locals 5

    .prologue
    .line 636
    iget-object v2, p0, Lhdp/util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 637
    iget-object v2, p0, Lhdp/util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 638
    iget-object v2, p0, Lhdp/util/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 639
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 640
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 644
    :cond_0
    return-void

    .line 640
    :cond_1
    aget-object v0, v1, v2

    .line 641
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private get(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lhdp/util/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 619
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 620
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 621
    iget-object v2, p0, Lhdp/util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    return-object v1
.end method

.method private newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 627
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lhdp/util/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private put(Ljava/io/File;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 595
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 596
    .local v0, "curCacheCount":I
    :goto_0
    add-int/lit8 v8, v0, 0x1

    iget v9, p0, Lhdp/util/ACache$ACacheManager;->countLimit:I

    if-gt v8, v9, :cond_0

    .line 602
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 604
    invoke-direct {p0, p1}, Lhdp/util/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v6

    .line 605
    .local v6, "valueSize":J
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 606
    .local v1, "curCacheSize":J
    :goto_1
    add-long v8, v1, v6

    iget-wide v10, p0, Lhdp/util/ACache$ACacheManager;->sizeLimit:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    .line 610
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 613
    .local v3, "currentTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 614
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    return-void

    .line 597
    .end local v1    # "curCacheSize":J
    .end local v3    # "currentTime":Ljava/lang/Long;
    .end local v6    # "valueSize":J
    :cond_0
    invoke-direct {p0}, Lhdp/util/ACache$ACacheManager;->removeNext()J

    move-result-wide v4

    .line 598
    .local v4, "freedSize":J
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 600
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_0

    .line 607
    .end local v4    # "freedSize":J
    .restart local v1    # "curCacheSize":J
    .restart local v6    # "valueSize":J
    :cond_1
    invoke-direct {p0}, Lhdp/util/ACache$ACacheManager;->removeNext()J

    move-result-wide v4

    .line 608
    .restart local v4    # "freedSize":J
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v1

    goto :goto_1
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lhdp/util/ACache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 632
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private removeNext()J
    .locals 15

    .prologue
    .line 652
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 653
    const-wide/16 v3, 0x0

    .line 678
    :cond_0
    :goto_0
    return-wide v3

    .line 656
    :cond_1
    const/4 v7, 0x0

    .line 657
    .local v7, "oldestUsage":Ljava/lang/Long;
    const/4 v6, 0x0

    .line 658
    .local v6, "mostLongUsedFile":Ljava/io/File;
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 659
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;>;"
    iget-object v9, p0, Lhdp/util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    monitor-enter v9

    .line 660
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 659
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-direct {p0, v6}, Lhdp/util/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v3

    .line 675
    .local v3, "fileSize":J
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 676
    iget-object v8, p0, Lhdp/util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 660
    .end local v3    # "fileSize":J
    :cond_3
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 661
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    if-nez v6, :cond_4

    .line 662
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/io/File;

    move-object v6, v0

    .line 663
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Long;

    move-object v7, v0

    .line 664
    goto :goto_1

    .line 665
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 666
    .local v5, "lastValueUsage":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-gez v8, :cond_2

    .line 667
    move-object v7, v5

    .line 668
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/io/File;

    move-object v6, v0

    goto :goto_1

    .line 659
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v5    # "lastValueUsage":Ljava/lang/Long;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method
