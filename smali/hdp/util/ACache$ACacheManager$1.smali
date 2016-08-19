.class Lhdp/util/ACache$ACacheManager$1;
.super Ljava/lang/Object;
.source "ACache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/util/ACache$ACacheManager;->calculateCacheSizeAndCacheCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lhdp/util/ACache$ACacheManager;


# direct methods
.method constructor <init>(Lhdp/util/ACache$ACacheManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/util/ACache$ACacheManager$1;->this$1:Lhdp/util/ACache$ACacheManager;

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 577
    const/4 v3, 0x0

    .line 578
    .local v3, "size":I
    const/4 v2, 0x0

    .line 579
    .local v2, "count":I
    iget-object v4, p0, Lhdp/util/ACache$ACacheManager$1;->this$1:Lhdp/util/ACache$ACacheManager;

    iget-object v4, v4, Lhdp/util/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 580
    .local v1, "cachedFiles":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 581
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 587
    iget-object v4, p0, Lhdp/util/ACache$ACacheManager$1;->this$1:Lhdp/util/ACache$ACacheManager;

    # getter for: Lhdp/util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v4}, Lhdp/util/ACache$ACacheManager;->access$2(Lhdp/util/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 588
    iget-object v4, p0, Lhdp/util/ACache$ACacheManager$1;->this$1:Lhdp/util/ACache$ACacheManager;

    # getter for: Lhdp/util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lhdp/util/ACache$ACacheManager;->access$3(Lhdp/util/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 590
    :cond_0
    return-void

    .line 581
    :cond_1
    aget-object v0, v1, v4

    .line 582
    .local v0, "cachedFile":Ljava/io/File;
    int-to-long v6, v3

    iget-object v8, p0, Lhdp/util/ACache$ACacheManager$1;->this$1:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J
    invoke-static {v8, v0}, Lhdp/util/ACache$ACacheManager;->access$0(Lhdp/util/ACache$ACacheManager;Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v3, v6

    .line 583
    add-int/lit8 v2, v2, 0x1

    .line 584
    iget-object v6, p0, Lhdp/util/ACache$ACacheManager$1;->this$1:Lhdp/util/ACache$ACacheManager;

    # getter for: Lhdp/util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;
    invoke-static {v6}, Lhdp/util/ACache$ACacheManager;->access$1(Lhdp/util/ACache$ACacheManager;)Ljava/util/Map;

    move-result-object v6

    .line 585
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 584
    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
