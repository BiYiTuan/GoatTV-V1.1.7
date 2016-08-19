.class public Lorg/eclipse/jetty/util/StringMap;
.super Ljava/util/AbstractMap;
.source "StringMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/StringMap$1;,
        Lorg/eclipse/jetty/util/StringMap$NullEntry;,
        Lorg/eclipse/jetty/util/StringMap$Node;
    }
.end annotation


# static fields
.field public static final CASE_INSENSTIVE:Z = true

.field protected static final __HASH_WIDTH:I = 0x11


# instance fields
.field protected _entrySet:Ljava/util/HashSet;

.field protected _ignoreCase:Z

.field protected _nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

.field protected _nullValue:Ljava/lang/Object;

.field protected _root:Lorg/eclipse/jetty/util/StringMap$Node;

.field protected _umEntrySet:Ljava/util/Set;

.field protected _width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 42
    const/16 v0, 0x11

    iput v0, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    .line 43
    new-instance v0, Lorg/eclipse/jetty/util/StringMap$Node;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap$Node;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    .line 45
    iput-object v1, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 46
    iput-object v1, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_umEntrySet:Ljava/util/Set;

    .line 54
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "ignoreCase"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    .line 63
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    .line 64
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "ignoreCase"    # Z
    .param p2, "width"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    .line 75
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    .line 76
    iput p2, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    .line 77
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 538
    new-instance v0, Lorg/eclipse/jetty/util/StringMap$Node;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap$Node;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 539
    iput-object v1, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 540
    iput-object v1, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 541
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 542
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 528
    if-nez p1, :cond_2

    .line 529
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    if-eqz v2, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 529
    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_3

    move v2, v1

    :goto_1
    invoke-virtual {p0, v3, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_umEntrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 240
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 238
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 239
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 240
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 252
    :goto_0
    return-object v1

    .line 249
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 250
    .local v0, "entry":Ljava/util/Map$Entry;
    if-nez v0, :cond_1

    .line 251
    const/4 v1, 0x0

    goto :goto_0

    .line 252
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getBestEntry([BII)Ljava/util/Map$Entry;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .prologue
    const/4 v5, 0x0

    .line 378
    if-nez p1, :cond_1

    .line 379
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 426
    :cond_0
    :goto_0
    return-object v4

    .line 381
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 382
    .local v4, "node":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v3, -0x1

    .line 386
    .local v3, "ni":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_a

    .line 388
    add-int v6, p2, v2

    aget-byte v6, p1, v6

    int-to-char v0, v6

    .line 391
    .local v0, "c":C
    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    .line 393
    const/4 v3, 0x0

    .line 395
    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v6, :cond_6

    move-object v1, v5

    .line 397
    .local v1, "child":Lorg/eclipse/jetty/util/StringMap$Node;
    :goto_2
    if-nez v1, :cond_2

    if-gtz v2, :cond_0

    .line 399
    :cond_2
    move-object v4, v1

    .line 403
    .end local v1    # "child":Lorg/eclipse/jetty/util/StringMap$Node;
    :cond_3
    :goto_3
    if-eqz v4, :cond_9

    .line 406
    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v6, v6, v3

    if-eq v6, v0, :cond_4

    iget-boolean v6, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    if-eqz v6, :cond_7

    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v6, v6, v3

    if-ne v6, v0, :cond_7

    .line 408
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 409
    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v6, v6

    if-ne v3, v6, :cond_5

    .line 410
    const/4 v3, -0x1

    .line 386
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    :cond_6
    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v7, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v7, v0, v7

    aget-object v1, v6, v7

    goto :goto_2

    .line 415
    :cond_7
    if-lez v3, :cond_8

    move-object v4, v5

    goto :goto_0

    .line 418
    :cond_8
    iget-object v4, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_3

    :cond_9
    move-object v4, v5

    .line 420
    goto :goto_0

    .line 423
    .end local v0    # "c":C
    :cond_a
    if-lez v3, :cond_b

    move-object v4, v5

    goto :goto_0

    .line 424
    :cond_b
    if-eqz v4, :cond_0

    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    if-nez v6, :cond_0

    move-object v4, v5

    .line 425
    goto :goto_0
.end method

.method public getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 265
    if-nez p1, :cond_1

    .line 266
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 308
    :cond_0
    :goto_0
    return-object v4

    .line 268
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 269
    .local v3, "node":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v2, -0x1

    .line 273
    .local v2, "ni":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_7

    .line 275
    add-int v5, p2, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 278
    .local v0, "c":C
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 280
    const/4 v2, 0x0

    .line 281
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v5, :cond_5

    move-object v3, v4

    .line 285
    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    .line 288
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v5, v5, v2

    if-eq v5, v0, :cond_3

    iget-boolean v5, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    if-eqz v5, :cond_6

    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v5, v5, v2

    if-ne v5, v0, :cond_6

    .line 290
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 291
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v5, v5

    if-ne v2, v5, :cond_4

    .line 292
    const/4 v2, -0x1

    .line 273
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    :cond_5
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v6, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v6, v0, v6

    aget-object v3, v5, v6

    goto :goto_2

    .line 297
    :cond_6
    if-gtz v2, :cond_0

    .line 300
    iget-object v3, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_2

    .line 305
    .end local v0    # "c":C
    :cond_7
    if-gtz v2, :cond_0

    .line 306
    if-eqz v3, :cond_8

    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    if-eqz v5, :cond_0

    :cond_8
    move-object v4, v3

    .line 308
    goto :goto_0
.end method

.method public getEntry([CII)Ljava/util/Map$Entry;
    .locals 7
    .param p1, "key"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 321
    if-nez p1, :cond_1

    .line 322
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 364
    :cond_0
    :goto_0
    return-object v4

    .line 324
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 325
    .local v3, "node":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v2, -0x1

    .line 329
    .local v2, "ni":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_7

    .line 331
    add-int v5, p2, v1

    aget-char v0, p1, v5

    .line 334
    .local v0, "c":C
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 336
    const/4 v2, 0x0

    .line 337
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v5, :cond_5

    move-object v3, v4

    .line 341
    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    .line 344
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v5, v5, v2

    if-eq v5, v0, :cond_3

    iget-boolean v5, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    if-eqz v5, :cond_6

    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v5, v5, v2

    if-ne v5, v0, :cond_6

    .line 346
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 347
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v5, v5

    if-ne v2, v5, :cond_4

    .line 348
    const/4 v2, -0x1

    .line 329
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    :cond_5
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v6, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v6, v0, v6

    aget-object v3, v5, v6

    goto :goto_2

    .line 353
    :cond_6
    if-gtz v2, :cond_0

    .line 356
    iget-object v3, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_2

    .line 361
    .end local v0    # "c":C
    :cond_7
    if-gtz v2, :cond_0

    .line 362
    if-eqz v3, :cond_8

    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    if-eqz v5, :cond_0

    :cond_8
    move-object v4, v3

    .line 364
    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isIgnoreCase()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 124
    if-nez p1, :cond_1

    .line 126
    iget-object v7, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 127
    .local v7, "oldValue":Ljava/lang/Object;
    iput-object p2, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 128
    iget-object v10, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    if-nez v10, :cond_0

    .line 130
    new-instance v10, Lorg/eclipse/jetty/util/StringMap$NullEntry;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lorg/eclipse/jetty/util/StringMap$NullEntry;-><init>(Lorg/eclipse/jetty/util/StringMap;Lorg/eclipse/jetty/util/StringMap$1;)V

    iput-object v10, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 131
    iget-object v10, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    iget-object v11, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v7    # "oldValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v7

    .line 136
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 137
    .local v4, "node":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v3, -0x1

    .line 138
    .local v3, "ni":I
    const/4 v9, 0x0

    .line 139
    .local v9, "prev":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v8, 0x0

    .line 143
    .local v8, "parent":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_9

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 148
    .local v0, "c":C
    const/4 v10, -0x1

    if-ne v3, v10, :cond_2

    .line 150
    move-object v8, v4

    .line 151
    const/4 v9, 0x0

    .line 152
    const/4 v3, 0x0

    .line 153
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v10, :cond_5

    const/4 v4, 0x0

    .line 157
    :cond_2
    :goto_2
    if-eqz v4, :cond_8

    .line 160
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v10, v10, v3

    if-eq v10, v0, :cond_3

    iget-boolean v10, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    if-eqz v10, :cond_6

    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v10, v10, v3

    if-ne v10, v0, :cond_6

    .line 162
    :cond_3
    const/4 v9, 0x0

    .line 163
    add-int/lit8 v3, v3, 0x1

    .line 164
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v10, v10

    if-ne v3, v10, :cond_4

    .line 165
    const/4 v3, -0x1

    .line 143
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_5
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v11, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v11, v0, v11

    aget-object v4, v10, v11

    goto :goto_2

    .line 171
    :cond_6
    if-nez v3, :cond_7

    .line 174
    move-object v9, v4

    .line 175
    iget-object v4, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_2

    .line 180
    :cond_7
    invoke-virtual {v4, p0, v3}, Lorg/eclipse/jetty/util/StringMap$Node;->split(Lorg/eclipse/jetty/util/StringMap;I)Lorg/eclipse/jetty/util/StringMap$Node;

    .line 181
    add-int/lit8 v1, v1, -0x1

    .line 182
    const/4 v3, -0x1

    .line 183
    goto :goto_3

    .line 188
    :cond_8
    new-instance v4, Lorg/eclipse/jetty/util/StringMap$Node;

    .end local v4    # "node":Lorg/eclipse/jetty/util/StringMap$Node;
    iget-boolean v10, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    invoke-direct {v4, v10, p1, v1}, Lorg/eclipse/jetty/util/StringMap$Node;-><init>(ZLjava/lang/String;I)V

    .line 190
    .restart local v4    # "node":Lorg/eclipse/jetty/util/StringMap$Node;
    if-eqz v9, :cond_b

    .line 191
    iput-object v4, v9, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 217
    .end local v0    # "c":C
    :cond_9
    :goto_4
    if-eqz v4, :cond_10

    .line 220
    if-lez v3, :cond_a

    .line 221
    invoke-virtual {v4, p0, v3}, Lorg/eclipse/jetty/util/StringMap$Node;->split(Lorg/eclipse/jetty/util/StringMap;I)Lorg/eclipse/jetty/util/StringMap$Node;

    .line 223
    :cond_a
    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 224
    .local v6, "old":Ljava/lang/Object;
    iput-object p1, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    .line 225
    iput-object p2, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 226
    iget-object v10, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v7, v6

    .line 227
    goto :goto_0

    .line 192
    .end local v6    # "old":Ljava/lang/Object;
    .restart local v0    # "c":C
    :cond_b
    if-eqz v8, :cond_f

    .line 194
    iget-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v10, :cond_c

    .line 195
    iget v10, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    new-array v10, v10, [Lorg/eclipse/jetty/util/StringMap$Node;

    iput-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    .line 196
    :cond_c
    iget-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v11, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v11, v0, v11

    aput-object v4, v10, v11

    .line 197
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    const/4 v11, 0x0

    aget-char v10, v10, v11

    iget v11, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v5, v10, v11

    .line 198
    .local v5, "oi":I
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    if-eqz v10, :cond_9

    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    const/4 v11, 0x0

    aget-char v10, v10, v11

    iget v11, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v10, v11

    if-eq v10, v5, :cond_9

    .line 200
    iget-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    aget-object v10, v10, v5

    if-nez v10, :cond_d

    .line 201
    iget-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    aput-object v4, v10, v5

    goto :goto_4

    .line 204
    :cond_d
    iget-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    aget-object v2, v10, v5

    .line 205
    .local v2, "n":Lorg/eclipse/jetty/util/StringMap$Node;
    :goto_5
    iget-object v10, v2, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    if-eqz v10, :cond_e

    .line 206
    iget-object v2, v2, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_5

    .line 207
    :cond_e
    iput-object v4, v2, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_4

    .line 212
    .end local v2    # "n":Lorg/eclipse/jetty/util/StringMap$Node;
    .end local v5    # "oi":I
    :cond_f
    iput-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_4

    .line 229
    .end local v0    # "c":C
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 686
    .local v0, "ic":Z
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 687
    .local v1, "map":Ljava/util/HashMap;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/StringMap;->setIgnoreCase(Z)V

    .line 688
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/StringMap;->putAll(Ljava/util/Map;)V

    .line 689
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 442
    if-nez p1, :cond_2

    .line 444
    iget-object v5, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 445
    .local v5, "oldValue":Ljava/lang/Object;
    iget-object v7, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    if-eqz v7, :cond_0

    .line 447
    iget-object v7, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    iget-object v8, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 448
    iput-object v6, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 449
    iput-object v6, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    :cond_0
    move-object v6, v5

    .line 500
    .end local v5    # "oldValue":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v6

    .line 454
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 455
    .local v3, "node":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v2, -0x1

    .line 459
    .local v2, "ni":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 461
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 464
    .local v0, "c":C
    const/4 v7, -0x1

    if-ne v2, v7, :cond_3

    .line 466
    const/4 v2, 0x0

    .line 467
    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v7, :cond_6

    move-object v3, v6

    .line 471
    :cond_3
    :goto_2
    if-eqz v3, :cond_1

    .line 474
    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v7, v7, v2

    if-eq v7, v0, :cond_4

    iget-boolean v7, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    if-eqz v7, :cond_7

    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v7, v7, v2

    if-ne v7, v0, :cond_7

    .line 476
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 477
    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v7, v7

    if-ne v2, v7, :cond_5

    .line 478
    const/4 v2, -0x1

    .line 459
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 467
    :cond_6
    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v8, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v8, v0, v8

    aget-object v3, v7, v8

    goto :goto_2

    .line 483
    :cond_7
    if-gtz v2, :cond_1

    .line 486
    iget-object v3, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_2

    .line 491
    .end local v0    # "c":C
    :cond_8
    if-gtz v2, :cond_1

    .line 492
    if-eqz v3, :cond_9

    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 495
    :cond_9
    iget-object v4, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 496
    .local v4, "old":Ljava/lang/Object;
    iget-object v7, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 497
    iput-object v6, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 498
    iput-object v6, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    move-object v6, v4

    .line 500
    goto :goto_0
.end method

.method public setIgnoreCase(Z)V
    .locals 2
    .param p1, "ic"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    iget-object v0, v0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be set before first put"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    .line 88
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 103
    iput p1, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    .line 104
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 677
    .local v0, "map":Ljava/util/HashMap;
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 678
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 679
    return-void
.end method
