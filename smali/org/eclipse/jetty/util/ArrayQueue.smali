.class public Lorg/eclipse/jetty/util/ArrayQueue;
.super Ljava/util/AbstractList;
.source "ArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CAPACITY:I = 0x40

.field public static final DEFAULT_GROWTH:I = 0x20


# instance fields
.field protected _elements:[Ljava/lang/Object;

.field protected final _growCapacity:I

.field protected final _lock:Ljava/lang/Object;

.field protected _nextE:I

.field protected _nextSlot:I

.field protected _size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    const/16 v0, 0x40

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/util/ArrayQueue;-><init>(II)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 50
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/ArrayQueue;-><init>(II)V

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "initCapacity"    # I
    .param p2, "growBy"    # I

    .prologue
    .line 56
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/ArrayQueue;-><init>(IILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 1
    .param p1, "initCapacity"    # I
    .param p2, "growBy"    # I
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 61
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 62
    if-nez p3, :cond_0

    move-object p3, p0

    .end local p3    # "lock":Ljava/lang/Object;
    :cond_0
    iput-object p3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    .line 63
    iput p2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_growCapacity:I

    .line 64
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    .line 65
    return-void
.end method

.method private at(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 165
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    .line 166
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    .line 168
    :cond_0
    return-object v0
.end method

.method private enqueue(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 97
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->grow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return v0

    .line 100
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    .line 101
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    aput-object p1, v1, v2

    .line 102
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 103
    iput v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 105
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 305
    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-le p1, v1, :cond_1

    .line 306
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

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

    iget v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 308
    :cond_1
    :try_start_1
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->grow()Z

    move-result v1

    if-nez v1, :cond_2

    .line 309
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Full"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_2
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-ne p1, v1, :cond_3

    .line 313
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/util/ArrayQueue;->add(Ljava/lang/Object;)Z

    .line 349
    :goto_0
    monitor-exit v2

    .line 350
    return-void

    .line 317
    :cond_3
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    add-int v0, v1, p1

    .line 318
    .local v0, "i":I
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 319
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 321
    :cond_4
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    .line 322
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 323
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v1, v3, :cond_5

    .line 324
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 326
    :cond_5
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    if-ge v0, v1, :cond_6

    .line 332
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    sub-int/2addr v5, v0

    invoke-static {v1, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 339
    :cond_6
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    if-lez v1, :cond_7

    .line 341
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v5, 0x1

    iget v6, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aput-object v4, v1, v3

    .line 345
    :cond_7
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public addUnsafe(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/ArrayQueue;->enqueue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 186
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 124
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 128
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    .line 218
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-lt p1, v0, :cond_1

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

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

    iget v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 222
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ArrayQueue;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getCapacity()I
    .locals 2

    .prologue
    .line 70
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v0, v0

    monitor-exit v1

    return v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUnsafe(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 237
    .local v0, "i":I
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected grow()Z
    .locals 6

    .prologue
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    const/4 v2, 0x0

    .line 355
    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v3

    .line 357
    :try_start_0
    iget v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_growCapacity:I

    if-gtz v4, :cond_0

    .line 358
    monitor-exit v3

    .line 371
    :goto_0
    return v2

    .line 360
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    iget v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_growCapacity:I

    add-int/2addr v2, v4

    new-array v0, v2, [Ljava/lang/Object;

    .line 362
    .local v0, "elements":[Ljava/lang/Object;
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    iget v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    sub-int v1, v2, v4

    .line 363
    .local v1, "split":I
    if-lez v1, :cond_1

    .line 364
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    const/4 v5, 0x0

    invoke-static {v2, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    :cond_1
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    if-eqz v2, :cond_2

    .line 366
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    invoke-static {v2, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    :cond_2
    iput-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    .line 369
    const/4 v2, 0x0

    iput v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    .line 370
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    iput v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 371
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 372
    .end local v0    # "elements":[Ljava/lang/Object;
    .end local v1    # "split":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/ArrayQueue;->enqueue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    monitor-exit v1

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    monitor-exit v1

    .line 156
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->dequeue()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 174
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 178
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->dequeue()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v3

    .line 246
    if-ltz p1, :cond_0

    :try_start_0
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-lt p1, v2, :cond_1

    .line 247
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!(0<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 249
    :cond_1
    :try_start_1
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    add-int/2addr v2, p1

    iget-object v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v4, v4

    rem-int v0, v2, v4

    .line 250
    .local v0, "i":I
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object v1

    .line 252
    .local v1, "old":Ljava/lang/Object;, "TE;"
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    if-ge v0, v2, :cond_2

    .line 256
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v6, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    sub-int/2addr v6, v0

    invoke-static {v2, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 258
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    .line 277
    :goto_0
    monitor-exit v3

    return-object v1

    .line 264
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v6, v6

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    if-lez v2, :cond_3

    .line 267
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v2, v4

    .line 268
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 274
    :goto_1
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    goto :goto_0

    .line 272
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v3

    .line 287
    if-ltz p1, :cond_0

    :try_start_0
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-lt p1, v2, :cond_1

    .line 288
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!(0<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 290
    :cond_1
    :try_start_1
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    add-int v0, v2, p1

    .line 291
    .local v0, "i":I
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 292
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v0, v2

    .line 293
    :cond_2
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object v1

    .line 294
    .local v1, "old":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 295
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 208
    .local p0, "this":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<TE;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    monitor-exit v1

    return v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
