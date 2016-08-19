.class public Lorg/eclipse/jetty/io/ByteArrayBuffer;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "ByteArrayBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;
    }
.end annotation


# instance fields
.field protected final _bytes:[B


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    new-array v0, p1, [B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 67
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 68
    return-void
.end method

.method protected constructor <init>(IIZ)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "access"    # I
    .param p3, "isVolatile"    # Z

    .prologue
    const/4 v2, 0x0

    .line 33
    new-array v1, p1, [B

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIIIZ)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 73
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 74
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 76
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 77
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 97
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 99
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 100
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "immutable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 83
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 84
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 86
    if-eqz p2, :cond_0

    .line 88
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 89
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 91
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 38
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 39
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I

    .prologue
    .line 43
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 44
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "access"    # I

    .prologue
    .line 48
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 50
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 51
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 52
    iput p4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 53
    return-void
.end method

.method public constructor <init>([BIIIZ)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "access"    # I
    .param p5, "isVolatile"    # Z

    .prologue
    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 58
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 59
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 60
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 61
    iput p4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 62
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    return v0
.end method

.method public compact()V
    .locals 5

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "READONLY"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v1

    .line 119
    .local v1, "s":I
    :goto_0
    if-lez v1, :cond_3

    .line 121
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    sub-int v0, v2, v1

    .line 122
    .local v0, "length":I
    if-lez v0, :cond_1

    .line 124
    iget-object v2, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setMarkIndex(I)V

    .line 127
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 128
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 130
    .end local v0    # "length":I
    :cond_3
    return-void

    .line 118
    .end local v1    # "s":I
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 136
    if-ne p1, p0, :cond_1

    .line 169
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v8

    .line 139
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    instance-of v10, p1, Lorg/eclipse/jetty/io/Buffer;

    if-nez v10, :cond_3

    :cond_2
    move v8, v9

    .line 140
    goto :goto_0

    .line 142
    :cond_3
    instance-of v10, p1, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-eqz v10, :cond_4

    .line 143
    check-cast p1, Lorg/eclipse/jetty/io/Buffer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v8

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    move-object v1, p1

    .line 146
    check-cast v1, Lorg/eclipse/jetty/io/Buffer;

    .line 149
    .local v1, "b":Lorg/eclipse/jetty/io/Buffer;
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v10

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v11

    if-eq v10, v11, :cond_5

    move v8, v9

    .line 150
    goto :goto_0

    .line 153
    :cond_5
    iget v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v10, :cond_6

    instance-of v10, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v10, :cond_6

    move-object v0, p1

    .line 155
    check-cast v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 156
    .local v0, "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    iget v10, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v10, :cond_6

    iget v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    iget v11, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v10, v11, :cond_6

    move v8, v9

    .line 157
    goto :goto_0

    .line 161
    .end local v0    # "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v5

    .line 162
    .local v5, "get":I
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    .line 163
    .local v4, "bi":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

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

    .line 165
    iget-object v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v2, v10, v6

    .line 166
    .local v2, "b1":B
    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v3

    .line 167
    .local v3, "b2":B
    if-eq v2, v3, :cond_7

    move v8, v9

    goto :goto_0

    :cond_7
    move v7, v6

    .line 168
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1
.end method

.method public equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 14
    .param p1, "b"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v8, 0x1

    const/16 v13, 0x7a

    const/16 v12, 0x61

    const/4 v9, 0x0

    .line 176
    if-ne p1, p0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v8

    .line 180
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v10

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v11

    if-eq v10, v11, :cond_3

    :cond_2
    move v8, v9

    .line 181
    goto :goto_0

    .line 184
    :cond_3
    iget v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v10, :cond_4

    instance-of v10, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v10, :cond_4

    move-object v0, p1

    .line 186
    check-cast v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 187
    .local v0, "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    iget v10, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v10, :cond_4

    iget v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    iget v11, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v10, v11, :cond_4

    move v8, v9

    goto :goto_0

    .line 191
    .end local v0    # "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v5

    .line 192
    .local v5, "get":I
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    .line 193
    .local v4, "bi":I
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v3

    .line 194
    .local v3, "barray":[B
    if-nez v3, :cond_8

    .line 196
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

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

    .line 198
    iget-object v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v1, v10, v6

    .line 199
    .local v1, "b1":B
    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v2

    .line 200
    .local v2, "b2":B
    if-eq v1, v2, :cond_7

    .line 202
    if-gt v12, v1, :cond_5

    if-gt v1, v13, :cond_5

    add-int/lit8 v10, v1, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v1, v10

    .line 203
    :cond_5
    if-gt v12, v2, :cond_6

    if-gt v2, v13, :cond_6

    add-int/lit8 v10, v2, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v2, v10

    .line 204
    :cond_6
    if-eq v1, v2, :cond_7

    move v8, v9

    goto :goto_0

    :cond_7
    move v7, v6

    .line 206
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    .line 210
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v7    # "i":I
    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v6

    .restart local v6    # "i":I
    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    :goto_2
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-le v7, v5, :cond_0

    .line 212
    iget-object v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v1, v10, v6

    .line 213
    .restart local v1    # "b1":B
    add-int/lit8 v4, v4, -0x1

    aget-byte v2, v3, v4

    .line 214
    .restart local v2    # "b2":B
    if-eq v1, v2, :cond_b

    .line 216
    if-gt v12, v1, :cond_9

    if-gt v1, v13, :cond_9

    add-int/lit8 v10, v1, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v1, v10

    .line 217
    :cond_9
    if-gt v12, v2, :cond_a

    if-gt v2, v13, :cond_a

    add-int/lit8 v10, v2, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v2, v10

    .line 218
    :cond_a
    if-eq v1, v2, :cond_b

    move v8, v9

    goto/16 :goto_0

    :cond_b
    move v7, v6

    .line 220
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_2
.end method

.method public get()B
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 234
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashGet:I

    iget v5, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashPut:I

    iget v5, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    if-eq v4, v5, :cond_4

    .line 236
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    .line 237
    .local v1, "get":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-le v3, v1, :cond_2

    .line 239
    iget-object v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v4, v2

    .line 240
    .local v0, "b":B
    const/16 v4, 0x61

    if-gt v4, v0, :cond_1

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_1

    .line 241
    add-int/lit8 v4, v0, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-byte v0, v4

    .line 242
    :cond_1
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v0

    iput v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    move v3, v2

    .line 243
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 244
    .end local v0    # "b":B
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_2
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-nez v4, :cond_3

    .line 245
    const/4 v4, -0x1

    iput v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 246
    :cond_3
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    iput v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashGet:I

    .line 247
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    iput v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashPut:I

    .line 249
    .end local v1    # "get":I
    .end local v2    # "i":I
    :cond_4
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    return v4
.end method

.method public peek(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public peek(I[BII)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v1, -0x1

    .line 260
    move v0, p4

    .line 261
    .local v0, "l":I
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 263
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v2

    sub-int v0, v2, p1

    .line 264
    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    .line 268
    :cond_1
    if-ltz v0, :cond_0

    .line 271
    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v1, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    .line 272
    goto :goto_0
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 292
    const/4 v6, 0x0

    iput v6, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 301
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    .line 302
    .local v2, "length":I
    add-int v6, p1, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 304
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v6

    sub-int v2, v6, p1

    .line 311
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v5

    .line 312
    .local v5, "src_array":[B
    if-eqz v5, :cond_1

    .line 313
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v6

    iget-object v7, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v5, v6, v7, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    :goto_0
    return v2

    .line 316
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    .line 317
    .local v3, "s":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "s":I
    .local v4, "s":I
    move v1, p1

    .end local p1    # "index":I
    .local v1, "index":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 318
    iget-object v6, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "s":I
    .restart local v3    # "s":I
    invoke-interface {p2, v4}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v7

    aput-byte v7, v6, v1

    .line 317
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "s":I
    .restart local v4    # "s":I
    move v1, p1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    :cond_2
    move p1, v1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_0
.end method

.method public poke(I[BII)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 336
    add-int v0, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v0

    sub-int p4, v0, p1

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    return p4
.end method

.method public poke(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 286
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aput-byte p2, v0, p1

    .line 287
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v4

    if-le p2, v4, :cond_1

    .line 364
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result p2

    .line 365
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    .line 367
    .local v2, "p":I
    const/4 v1, 0x0

    .local v1, "len":I
    const/4 v3, 0x0

    .local v3, "total":I
    move v0, p2

    .line 368
    .local v0, "available":I
    :cond_2
    if-ge v3, p2, :cond_3

    .line 370
    iget-object v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p1, v4, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 371
    if-gez v1, :cond_5

    .line 383
    :cond_3
    :goto_0
    if-gez v1, :cond_4

    if-nez v3, :cond_4

    .line 384
    const/4 v3, -0x1

    .line 385
    .end local v3    # "total":I
    :cond_4
    return v3

    .line 373
    .restart local v3    # "total":I
    :cond_5
    if-lez v1, :cond_6

    .line 375
    add-int/2addr v2, v1

    .line 376
    add-int/2addr v3, v1

    .line 377
    sub-int/2addr v0, v1

    .line 378
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 380
    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_0
.end method

.method public space()I
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 355
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 357
    :cond_0
    return-void
.end method
