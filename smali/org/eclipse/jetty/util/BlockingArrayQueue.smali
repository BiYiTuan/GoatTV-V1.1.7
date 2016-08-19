.class public Lorg/eclipse/jetty/util/BlockingArrayQueue;
.super Ljava/util/AbstractList;
.source "BlockingArrayQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field public final DEFAULT_CAPACITY:I

.field public final DEFAULT_GROWTH:I

.field private volatile _capacity:I

.field private _elements:[Ljava/lang/Object;

.field private final _growCapacity:I

.field private _head:I

.field private final _headLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final _limit:I

.field private final _notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final _size:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _space0:J

.field private _space1:J

.field private _space2:J

.field private _space3:J

.field private _space4:J

.field private _space5:J

.field private _space6:J

.field private _space7:J

.field private _tail:I

.field private final _tailLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    const/16 v2, 0x80

    const/16 v1, 0x40

    .line 78
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 45
    iput v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_CAPACITY:I

    .line 46
    iput v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_GROWTH:I

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 79
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    .line 80
    iput v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    .line 82
    const v0, 0x7fffffff

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 90
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 45
    const/16 v0, 0x80

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_CAPACITY:I

    .line 46
    const/16 v0, 0x40

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_GROWTH:I

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    .line 94
    iput p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I

    .line 95
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "growBy"    # I

    .prologue
    .line 103
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 45
    const/16 v0, 0x80

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_CAPACITY:I

    .line 46
    const/16 v0, 0x40

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_GROWTH:I

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    .line 106
    iput p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    .line 107
    const v0, 0x7fffffff

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I

    .line 108
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "growBy"    # I
    .param p3, "limit"    # I

    .prologue
    .line 117
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 45
    const/16 v0, 0x80

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_CAPACITY:I

    .line 46
    const/16 v0, 0x40

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_GROWTH:I

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 118
    if-le p1, p3, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 121
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    .line 123
    iput p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    .line 124
    iput p3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I

    .line 125
    return-void
.end method

.method private grow()Z
    .locals 7

    .prologue
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    const/4 v5, 0x0

    .line 595
    iget v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    if-gtz v6, :cond_0

    .line 640
    :goto_0
    return v5

    .line 598
    :cond_0
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 601
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 604
    :try_start_1
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 605
    .local v2, "head":I
    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 608
    .local v4, "tail":I
    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    iget v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    add-int/2addr v5, v6

    new-array v1, v5, [Ljava/lang/Object;

    .line 610
    .local v1, "elements":[Ljava/lang/Object;
    if-ge v2, v4, :cond_1

    .line 612
    sub-int v3, v4, v2

    .line 613
    .local v3, "new_tail":I
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5, v2, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    :goto_1
    iput-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    .line 628
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v5, v5

    iput v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    .line 629
    const/4 v5, 0x0

    iput v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 630
    iput v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    const/4 v5, 0x1

    .line 635
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 640
    iget-object v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 615
    .end local v3    # "new_tail":I
    :cond_1
    if-gt v2, v4, :cond_2

    :try_start_3
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-lez v5, :cond_3

    .line 617
    :cond_2
    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    add-int/2addr v5, v4

    sub-int v3, v5, v2

    .line 618
    .restart local v3    # "new_tail":I
    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int v0, v5, v2

    .line 619
    .local v0, "cut":I
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5, v2, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 635
    .end local v0    # "cut":I
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "head":I
    .end local v3    # "new_tail":I
    .end local v4    # "tail":I
    :catchall_0
    move-exception v5

    :try_start_4
    iget-object v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 640
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 624
    .restart local v1    # "elements":[Ljava/lang/Object;
    .restart local v2    # "head":I
    .restart local v4    # "tail":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "new_tail":I
    goto :goto_1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    if-nez p2, :cond_0

    .line 533
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 535
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 538
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 542
    if-ltz p1, :cond_1

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 543
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!(0<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 588
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 545
    :cond_2
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 547
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 583
    :goto_0
    :try_start_4
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 588
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 590
    return-void

    .line 551
    :cond_3
    :try_start_5
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    if-ne v1, v2, :cond_4

    .line 552
    invoke-direct {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->grow()Z

    move-result v1

    if-nez v1, :cond_4

    .line 553
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "full"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_4
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    add-int v0, v1, p1

    .line 556
    .local v0, "i":I
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    if-lt v0, v1, :cond_5

    .line 557
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v0, v1

    .line 559
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 560
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    rem-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 563
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    if-ge v0, v1, :cond_6

    .line 565
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 570
    :cond_6
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    if-lez v1, :cond_7

    .line 572
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v4, 0x1

    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 576
    :cond_7
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, v1, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 374
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 377
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 382
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 391
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 393
    return-void

    .line 386
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 391
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 1
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 151
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 152
    :cond_0
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 417
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    if-ltz p1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 421
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!(0<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 434
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 422
    :cond_1
    :try_start_3
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    add-int v0, v1, p1

    .line 423
    .local v0, "i":I
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    if-lt v0, v1, :cond_2

    .line 424
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v0, v1

    .line 425
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 434
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 399
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "not_empty":Z
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 187
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lt v3, v4, :cond_1

    .line 214
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 230
    :goto_0
    return v2

    .line 191
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    if-ne v3, v4, :cond_3

    .line 193
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->grow()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 201
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 214
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 201
    :cond_2
    :try_start_4
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 206
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    aput-object p1, v3, v4

    .line 207
    iget v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    rem-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 209
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 214
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 217
    if-eqz v0, :cond_4

    .line 219
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 222
    :try_start_5
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 226
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    move v2, v1

    .line 230
    goto :goto_0

    .line 201
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 214
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_5
    move v0, v2

    .line 209
    goto :goto_1

    .line 226
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 163
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    .line 167
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    aget-object v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    const/4 v0, 0x0

    .line 238
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    .line 261
    :goto_0
    return-object v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 245
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1

    .line 247
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 248
    .local v1, "head":I
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object v0, v2, v1

    .line 249
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 250
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    rem-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 252
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-lez v2, :cond_1

    .line 253
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "head":I
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    const/4 v4, 0x0

    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 328
    .local v2, "nanos":J
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 333
    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 335
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 355
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v4

    .line 358
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :goto_1
    return-object v0

    .line 337
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    .line 342
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 343
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 346
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    :try_start_3
    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    aget-object v0, v4, v5

    .line 347
    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 348
    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    rem-int/2addr v4, v5

    iput v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 350
    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-lez v4, :cond_2

    .line 351
    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    return-void
.end method

.method public remainingCapacity()I
    .locals 2

    .prologue
    .line 673
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 676
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 679
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->getCapacity()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    .line 683
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 688
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 683
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 688
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 365
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 366
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 367
    :cond_0
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 445
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 449
    if-ltz p1, :cond_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 450
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!(0<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 488
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 452
    :cond_1
    :try_start_3
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    add-int v0, v2, p1

    .line 453
    .local v0, "i":I
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    if-lt v0, v2, :cond_2

    .line 454
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v0, v2

    .line 456
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 458
    .local v1, "old":Ljava/lang/Object;, "TE;"
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    if-ge v0, v2, :cond_3

    .line 460
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    sub-int/2addr v5, v0

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 462
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 483
    :goto_0
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 488
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 466
    :cond_3
    :try_start_5
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    if-lez v2, :cond_4

    .line 469
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 470
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 476
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 474
    :cond_4
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    if-nez p2, :cond_0

    .line 497
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 499
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 502
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 506
    if-ltz p1, :cond_1

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 507
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!(0<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 524
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 509
    :cond_2
    :try_start_3
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    add-int v0, v2, p1

    .line 510
    .local v0, "i":I
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    if-lt v0, v2, :cond_3

    .line 511
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v0, v2

    .line 513
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 514
    .local v1, "old":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, v2, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 524
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 406
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method sumOfSpace()J
    .locals 8

    .prologue
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    const-wide/16 v6, 0x1

    .line 697
    iget-wide v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space0:J

    add-long v2, v0, v6

    iput-wide v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space0:J

    iget-wide v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space1:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space1:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space2:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space2:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space3:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space3:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space4:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space4:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space5:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space5:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space6:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space6:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space7:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space7:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public take()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lorg/eclipse/jetty/util/BlockingArrayQueue;, "Lorg/eclipse/jetty/util/BlockingArrayQueue<TE;>;"
    const/4 v0, 0x0

    .line 275
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 280
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_0

    .line 282
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v2

    .line 287
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 288
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 291
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_2
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 292
    .local v1, "head":I
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 293
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 294
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    rem-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 296
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-lez v3, :cond_1

    .line 297
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    return-object v0
.end method
