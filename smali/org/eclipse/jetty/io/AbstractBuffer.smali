.class public abstract Lorg/eclipse/jetty/io/AbstractBuffer;
.super Ljava/lang/Object;
.source "AbstractBuffer.java"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffer;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field protected static final __IMMUTABLE:Ljava/lang/String; = "IMMUTABLE"

.field protected static final __READONLY:Ljava/lang/String; = "READONLY"

.field protected static final __READWRITE:Ljava/lang/String; = "READWRITE"

.field protected static final __VOLATILE:Ljava/lang/String; = "VOLATILE"

.field private static final __boundsChecking:Z


# instance fields
.field protected _access:I

.field protected _get:I

.field protected _hash:I

.field protected _hashGet:I

.field protected _hashPut:I

.field protected _mark:I

.field protected _put:I

.field protected _string:Ljava/lang/String;

.field protected _view:Lorg/eclipse/jetty/io/View;

.field protected _volatile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/eclipse/jetty/io/AbstractBuffer;->$assertionsDisabled:Z

    .line 30
    const-class v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/AbstractBuffer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 32
    const-string v0, "org.eclipse.jetty.io.AbstractBuffer.boundsChecking"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/eclipse/jetty/io/AbstractBuffer;->__boundsChecking:Z

    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "access"    # I
    .param p2, "isVolatile"    # Z

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IMMUTABLE && VOLATILE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 62
    iput p1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_access:I

    .line 63
    iput-boolean p2, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_volatile:Z

    .line 64
    return-void
.end method


# virtual methods
.method public asArray()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    new-array v1, v2, [B

    .line 72
    .local v1, "bytes":[B
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 73
    .local v0, "array":[B
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v2

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :goto_0
    return-object v1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v3

    invoke-virtual {p0, v2, v1, v4, v3}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I[BII)I

    goto :goto_0
.end method

.method public asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    .end local p0    # "this":Lorg/eclipse/jetty/io/AbstractBuffer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/eclipse/jetty/io/AbstractBuffer;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->duplicate(I)Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public asMutableBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 6

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    .end local p0    # "this":Lorg/eclipse/jetty/io/AbstractBuffer;
    .local v1, "b":Lorg/eclipse/jetty/io/Buffer;
    :goto_0
    return-object p0

    .line 117
    .end local v1    # "b":Lorg/eclipse/jetty/io/Buffer;
    .restart local p0    # "this":Lorg/eclipse/jetty/io/AbstractBuffer;
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 118
    .restart local v1    # "b":Lorg/eclipse/jetty/io/Buffer;
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->duplicate(I)Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v4

    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_access:I

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public asNonVolatileBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    .end local p0    # "this":Lorg/eclipse/jetty/io/AbstractBuffer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/eclipse/jetty/io/AbstractBuffer;
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_access:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->duplicate(I)Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public asReadOnlyBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 6

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    .end local p0    # "this":Lorg/eclipse/jetty/io/AbstractBuffer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/eclipse/jetty/io/AbstractBuffer;
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public buffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 0

    .prologue
    .line 127
    return-object p0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 133
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 134
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 135
    return-void
.end method

.method public compact()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "READONLY"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v2

    .line 141
    .local v2, "s":I
    :goto_0
    if-lez v2, :cond_3

    .line 143
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 144
    .local v0, "array":[B
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v3

    sub-int v1, v3, v2

    .line 145
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 147
    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v4

    invoke-static {v3, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 153
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 154
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 156
    .end local v0    # "array":[B
    .end local v1    # "length":I
    :cond_3
    return-void

    .line 140
    .end local v2    # "s":I
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v2

    goto :goto_0

    .line 150
    .restart local v0    # "array":[B
    .restart local v1    # "length":I
    .restart local v2    # "s":I
    :cond_5
    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(ILorg/eclipse/jetty/io/Buffer;)I

    goto :goto_1
.end method

.method public duplicate(I)Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .locals 5
    .param p1, "access"    # I

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 83
    .local v0, "b":Lorg/eclipse/jetty/io/Buffer;
    instance-of v1, p0, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v3

    invoke-direct {v1, v2, v4, v3, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;-><init>([BIII)V

    .line 86
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v3

    invoke-direct {v1, v2, v4, v3, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 161
    if-ne p1, p0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v8

    .line 165
    :cond_1
    if-eqz p1, :cond_2

    instance-of v10, p1, Lorg/eclipse/jetty/io/Buffer;

    if-nez v10, :cond_3

    :cond_2
    move v8, v9

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 166
    check-cast v1, Lorg/eclipse/jetty/io/Buffer;

    .line 168
    .local v1, "b":Lorg/eclipse/jetty/io/Buffer;
    instance-of v10, p0, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-nez v10, :cond_4

    instance-of v10, v1, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-eqz v10, :cond_5

    .line 169
    :cond_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v8

    goto :goto_0

    .line 172
    :cond_5
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v10

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v11

    if-eq v10, v11, :cond_6

    move v8, v9

    goto :goto_0

    .line 175
    :cond_6
    iget v10, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v10, :cond_7

    instance-of v10, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v10, :cond_7

    move-object v0, p1

    .line 177
    check-cast v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 178
    .local v0, "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    iget v10, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v10, :cond_7

    iget v10, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    iget v11, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v10, v11, :cond_7

    move v8, v9

    goto :goto_0

    .line 182
    .end local v0    # "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v5

    .line 183
    .local v5, "get":I
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    .line 184
    .local v4, "bi":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v6

    .local v6, "i":I
    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :goto_1
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-le v7, v5, :cond_0

    .line 186
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v2

    .line 187
    .local v2, "b1":B
    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v3

    .line 188
    .local v3, "b2":B
    if-eq v2, v3, :cond_8

    move v8, v9

    goto :goto_0

    :cond_8
    move v7, v6

    .line 189
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1
.end method

.method public equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 11
    .param p1, "b"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 195
    if-ne p1, p0, :cond_0

    .line 196
    const/4 v9, 0x1

    .line 242
    :goto_0
    return v9

    .line 199
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v9

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v10

    if-eq v9, v10, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 202
    :cond_1
    iget v9, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v9, :cond_2

    instance-of v9, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v9, :cond_2

    move-object v0, p1

    .line 204
    check-cast v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 205
    .local v0, "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    iget v9, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v9, :cond_2

    iget v9, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    iget v10, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v9, v10, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    .line 209
    .end local v0    # "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v6

    .line 210
    .local v6, "get":I
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v5

    .line 212
    .local v5, "bi":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 213
    .local v1, "array":[B
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v4

    .line 214
    .local v4, "barray":[B
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 216
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v7

    .local v7, "i":I
    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    :goto_1
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    if-le v8, v6, :cond_a

    .line 218
    aget-byte v2, v1, v7

    .line 219
    .local v2, "b1":B
    add-int/lit8 v5, v5, -0x1

    aget-byte v3, v4, v5

    .line 220
    .local v3, "b2":B
    if-eq v2, v3, :cond_5

    .line 222
    const/16 v9, 0x61

    if-gt v9, v2, :cond_3

    const/16 v9, 0x7a

    if-gt v2, v9, :cond_3

    add-int/lit8 v9, v2, -0x61

    add-int/lit8 v9, v9, 0x41

    int-to-byte v2, v9

    .line 223
    :cond_3
    const/16 v9, 0x61

    if-gt v9, v3, :cond_4

    const/16 v9, 0x7a

    if-gt v3, v9, :cond_4

    add-int/lit8 v9, v3, -0x61

    add-int/lit8 v9, v9, 0x41

    int-to-byte v3, v9

    .line 224
    :cond_4
    if-eq v2, v3, :cond_5

    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    move v8, v7

    .line 226
    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    .line 230
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v7

    .restart local v7    # "i":I
    move v8, v7

    .end local v7    # "i":I
    .restart local v8    # "i":I
    :goto_2
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    if-le v8, v6, :cond_a

    .line 232
    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v2

    .line 233
    .restart local v2    # "b1":B
    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v3

    .line 234
    .restart local v3    # "b2":B
    if-eq v2, v3, :cond_9

    .line 236
    const/16 v9, 0x61

    if-gt v9, v2, :cond_7

    const/16 v9, 0x7a

    if-gt v2, v9, :cond_7

    add-int/lit8 v9, v2, -0x61

    add-int/lit8 v9, v9, 0x41

    int-to-byte v2, v9

    .line 237
    :cond_7
    const/16 v9, 0x61

    if-gt v9, v3, :cond_8

    const/16 v9, 0x7a

    if-gt v3, v9, :cond_8

    add-int/lit8 v9, v3, -0x61

    add-int/lit8 v9, v9, 0x41

    int-to-byte v3, v9

    .line 238
    :cond_8
    if-eq v2, v3, :cond_9

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_9
    move v8, v7

    .line 240
    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_2

    .line 242
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v8    # "i":I
    .restart local v7    # "i":I
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public get()B
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v0

    return v0
.end method

.method public get([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    .line 253
    .local v0, "gi":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v1

    .line 254
    .local v1, "l":I
    if-nez v1, :cond_0

    .line 255
    const/4 v2, -0x1

    .line 263
    :goto_0
    return v2

    .line 257
    :cond_0
    if-le p3, v1, :cond_1

    .line 258
    move p3, v1

    .line 260
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I[BII)I

    move-result p3

    .line 261
    if-lez p3, :cond_2

    .line 262
    add-int v2, v0, p3

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    :cond_2
    move v2, p3

    .line 263
    goto :goto_0
.end method

.method public get(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    .line 269
    .local v0, "gi":I
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 270
    .local v1, "view":Lorg/eclipse/jetty/io/Buffer;
    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 271
    return-object v1
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    return v0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x7a

    const/16 v7, 0x61

    .line 287
    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hashGet:I

    iget v6, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    if-ne v5, v6, :cond_0

    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hashPut:I

    iget v6, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    if-eq v5, v6, :cond_6

    .line 289
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v2

    .line 290
    .local v2, "get":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 291
    .local v0, "array":[B
    if-nez v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v3

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-le v4, v2, :cond_4

    .line 295
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v1

    .line 296
    .local v1, "b":B
    if-gt v7, v1, :cond_1

    if-gt v1, v8, :cond_1

    .line 297
    add-int/lit8 v5, v1, -0x61

    add-int/lit8 v5, v5, 0x41

    int-to-byte v1, v5

    .line 298
    :cond_1
    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v1

    iput v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    move v4, v3

    .line 299
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 303
    .end local v1    # "b":B
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v3

    .restart local v3    # "i":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-le v4, v2, :cond_4

    .line 305
    aget-byte v1, v0, v3

    .line 306
    .restart local v1    # "b":B
    if-gt v7, v1, :cond_3

    if-gt v1, v8, :cond_3

    .line 307
    add-int/lit8 v5, v1, -0x61

    add-int/lit8 v5, v5, 0x41

    int-to-byte v1, v5

    .line 308
    :cond_3
    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v1

    iput v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    move v4, v3

    .line 309
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 311
    .end local v1    # "b":B
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_4
    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-nez v5, :cond_5

    .line 312
    const/4 v5, -0x1

    iput v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    .line 313
    :cond_5
    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    iput v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hashGet:I

    .line 314
    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    iput v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hashPut:I

    .line 317
    .end local v0    # "array":[B
    .end local v2    # "get":I
    .end local v3    # "i":I
    :cond_6
    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    return v5
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_access:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 327
    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_access:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVolatile()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_volatile:Z

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark()V
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 343
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 347
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 348
    return-void
.end method

.method public markIndex()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_mark:I

    return v0
.end method

.method public peek()B
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v0

    return v0
.end method

.method public peek(II)Lorg/eclipse/jetty/io/Buffer;
    .locals 6
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v2, -0x1

    .line 362
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    if-nez v0, :cond_1

    .line 364
    new-instance v0, Lorg/eclipse/jetty/io/View;

    add-int v4, p1, p2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;IIII)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    .line 375
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    return-object v0

    .line 364
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 370
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 371
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 372
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    goto :goto_1
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 380
    const/4 v7, 0x0

    iput v7, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    .line 388
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    .line 389
    .local v3, "length":I
    add-int v7, p1, v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 391
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v7

    sub-int v3, v7, p1

    .line 398
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v6

    .line 399
    .local v6, "src_array":[B
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 400
    .local v0, "dst_array":[B
    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 401
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v7

    invoke-static {v6, v7, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    :goto_0
    return v3

    .line 402
    :cond_1
    if-eqz v6, :cond_3

    .line 404
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    .line 405
    .local v4, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "s":I
    .local v5, "s":I
    move v2, p1

    .end local p1    # "index":I
    .local v2, "index":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 406
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    aget-byte v7, v6, v5

    invoke-virtual {p0, v2, v7}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(IB)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    :cond_2
    move p1, v2

    .line 407
    .end local v2    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    .line 408
    .end local v1    # "i":I
    .end local v5    # "s":I
    :cond_3
    if-eqz v0, :cond_5

    .line 410
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    .line 411
    .restart local v4    # "s":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 412
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    invoke-interface {p2, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v7

    aput-byte v7, v0, v2

    .line 411
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    goto :goto_2

    :cond_4
    move p1, v2

    .line 413
    .end local v2    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    .line 416
    .end local v1    # "i":I
    .end local v5    # "s":I
    :cond_5
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    .line 417
    .restart local v4    # "s":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    :goto_3
    if-ge v1, v3, :cond_6

    .line 418
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    invoke-interface {p2, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v7

    invoke-virtual {p0, v2, v7}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(IB)V

    .line 417
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    goto :goto_3

    :cond_6
    move p1, v2

    .end local v2    # "index":I
    .restart local p1    # "index":I
    goto :goto_0
.end method

.method public poke(I[BII)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 427
    const/4 v5, 0x0

    iput v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    .line 434
    add-int v5, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 436
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v5

    sub-int p4, v5, p1

    .line 442
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 443
    .local v0, "dst_array":[B
    if-eqz v0, :cond_1

    .line 444
    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    :goto_0
    return p4

    .line 447
    :cond_1
    move v3, p3

    .line 448
    .local v3, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "s":I
    .local v4, "s":I
    move v2, p1

    .end local p1    # "index":I
    .local v2, "index":I
    :goto_1
    if-ge v1, p4, :cond_2

    .line 449
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "s":I
    .restart local v3    # "s":I
    aget-byte v5, p2, v4

    invoke-virtual {p0, v2, v5}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(IB)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "s":I
    .restart local v4    # "s":I
    move v2, p1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    :cond_2
    move p1, v2

    .end local v2    # "index":I
    .restart local p1    # "index":I
    goto :goto_0
.end method

.method public put(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3
    .param p1, "src"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v1

    .line 457
    .local v1, "pi":I
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(ILorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 458
    .local v0, "l":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 459
    return v0
.end method

.method public put([B)I
    .locals 4
    .param p1, "b"    # [B

    .prologue
    .line 479
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v1

    .line 480
    .local v1, "pi":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v1, p1, v2, v3}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(I[BII)I

    move-result v0

    .line 481
    .local v0, "l":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 482
    return v0
.end method

.method public put([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 471
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v1

    .line 472
    .local v1, "pi":I
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(I[BII)I

    move-result v0

    .line 473
    .local v0, "l":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 474
    return v0
.end method

.method public put(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 464
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    .line 465
    .local v0, "pi":I
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(IB)V

    .line 466
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 467
    return-void
.end method

.method public final putIndex()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x400

    const/4 v7, 0x0

    .line 683
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 684
    .local v0, "array":[B
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->space()I

    move-result v4

    .line 685
    .local v4, "s":I
    if-le v4, p2, :cond_0

    .line 686
    move v4, p2

    .line 688
    :cond_0
    if-eqz v0, :cond_3

    .line 690
    iget v6, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    invoke-virtual {p1, v0, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 691
    .local v2, "l":I
    if-lez v2, :cond_1

    .line 692
    iget v6, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    :cond_1
    move v5, v2

    .line 708
    .end local v2    # "l":I
    :cond_2
    :goto_0
    return v5

    .line 697
    :cond_3
    if-le v4, v6, :cond_4

    :goto_1
    new-array v1, v6, [B

    .line 698
    .local v1, "buf":[B
    const/4 v5, 0x0

    .line 699
    .local v5, "total":I
    :goto_2
    if-lez v4, :cond_2

    .line 701
    array-length v6, v1

    invoke-virtual {p1, v1, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 702
    .restart local v2    # "l":I
    if-gez v2, :cond_5

    .line 703
    if-gtz v5, :cond_2

    const/4 v5, -0x1

    goto :goto_0

    .end local v1    # "buf":[B
    .end local v2    # "l":I
    .end local v5    # "total":I
    :cond_4
    move v6, v4

    .line 697
    goto :goto_1

    .line 704
    .restart local v1    # "buf":[B
    .restart local v2    # "l":I
    .restart local v5    # "total":I
    :cond_5
    invoke-virtual {p0, v1, v7, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->put([BII)I

    move-result v3

    .line 705
    .local v3, "p":I
    sget-boolean v6, Lorg/eclipse/jetty/io/AbstractBuffer;->$assertionsDisabled:Z

    if-nez v6, :cond_6

    if-eq v2, v3, :cond_6

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 706
    :cond_6
    sub-int/2addr v4, v2

    .line 707
    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 493
    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 498
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 499
    return-void
.end method

.method public setGetIndex(I)V
    .locals 3
    .param p1, "getIndex"    # I

    .prologue
    .line 504
    sget-boolean v0, Lorg/eclipse/jetty/io/AbstractBuffer;->__boundsChecking:Z

    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    if-gez p1, :cond_1

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndex<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndex>putIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_2
    iput p1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    .line 516
    return-void
.end method

.method public setMarkIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 521
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    iput p1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_mark:I

    .line 525
    return-void
.end method

.method public setPutIndex(I)V
    .locals 3
    .param p1, "putIndex"    # I

    .prologue
    .line 529
    sget-boolean v0, Lorg/eclipse/jetty/io/AbstractBuffer;->__boundsChecking:Z

    if-eqz v0, :cond_2

    .line 532
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putIndex>capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndex>putIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_2
    iput p1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    .line 542
    return-void
.end method

.method public skip(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 546
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result p1

    .line 547
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 548
    return p1
.end method

.method public slice()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public sliceFromMark()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->sliceFromMark(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public sliceFromMark(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 566
    :goto_0
    return-object v0

    .line 564
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 565
    .local v0, "view":Lorg/eclipse/jetty/io/Buffer;
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    goto :goto_0
.end method

.method public space()I
    .locals 2

    .prologue
    .line 571
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDetailString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string v5, "["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    const-string v5, ",m="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    const-string v5, ",g="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    const-string v5, ",p="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    const-string v5, ",c="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    const-string v5, "]={"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v5

    if-ltz v5, :cond_1

    .line 592
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v4

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 594
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v0

    .line 595
    .local v0, "b":B
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(BLjava/lang/Appendable;)V

    .line 592
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 597
    .end local v0    # "b":B
    :cond_0
    const-string v5, "}{"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .end local v4    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 600
    .local v2, "count":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v4

    .restart local v4    # "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 602
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v0

    .line 603
    .restart local v0    # "b":B
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(BLjava/lang/Appendable;)V

    .line 604
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    const/16 v5, 0x32

    if-ne v2, v5, :cond_2

    .line 606
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v5

    sub-int/2addr v5, v4

    const/16 v6, 0x14

    if-le v5, v6, :cond_2

    .line 608
    const-string v5, " ... "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v5

    add-int/lit8 v4, v5, -0x14

    .line 600
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 613
    .end local v0    # "b":B
    :cond_3
    const/16 v5, 0x7d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 621
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_string:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_string:Ljava/lang/String;

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_string:Ljava/lang/String;

    .line 627
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 635
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 636
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 637
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v4

    invoke-direct {v2, v0, v3, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 644
    .end local v0    # "bytes":[B
    :goto_0
    return-object v2

    .line 638
    .restart local v0    # "bytes":[B
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v5

    invoke-direct {v2, v3, v4, v5, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/io/AbstractBuffer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 644
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v4

    invoke-direct {v2, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v6, 0x0

    .line 658
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v0

    .line 660
    .local v0, "array":[B
    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v6

    invoke-virtual {p1, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 677
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->clear()V

    .line 678
    return-void

    .line 666
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v3

    .line 667
    .local v3, "len":I
    if-le v3, v5, :cond_2

    :goto_0
    new-array v1, v5, [B

    .line 668
    .local v1, "buf":[B
    iget v4, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    .line 669
    .local v4, "offset":I
    :goto_1
    if-lez v3, :cond_0

    .line 671
    array-length v5, v1

    if-le v3, v5, :cond_3

    array-length v5, v1

    :goto_2
    invoke-virtual {p0, v4, v1, v6, v5}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I[BII)I

    move-result v2

    .line 672
    .local v2, "l":I
    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 673
    add-int/2addr v4, v2

    .line 674
    sub-int/2addr v3, v2

    .line 675
    goto :goto_1

    .end local v1    # "buf":[B
    .end local v2    # "l":I
    .end local v4    # "offset":I
    :cond_2
    move v5, v3

    .line 667
    goto :goto_0

    .restart local v1    # "buf":[B
    .restart local v4    # "offset":I
    :cond_3
    move v5, v3

    .line 671
    goto :goto_2
.end method
