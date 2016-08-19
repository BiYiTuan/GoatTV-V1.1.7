.class public Lorg/eclipse/jetty/io/BufferUtil;
.super Ljava/lang/Object;
.source "BufferUtil.java"


# static fields
.field static final DIGIT:[B

.field static final MINUS:B = 0x2dt

.field static final SPACE:B = 0x20t

.field private static final decDivisors:[I

.field private static final decDivisorsL:[J

.field private static final hexDivisors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/io/BufferUtil;->DIGIT:[B

    .line 281
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eclipse/jetty/io/BufferUtil;->decDivisors:[I

    .line 295
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/eclipse/jetty/io/BufferUtil;->hexDivisors:[I

    .line 307
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lorg/eclipse/jetty/io/BufferUtil;->decDivisorsL:[J

    return-void

    .line 28
    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data

    .line 281
    :array_1
    .array-data 4
        0x3b9aca00
        0x5f5e100
        0x989680
        0xf4240
        0x186a0
        0x2710
        0x3e8
        0x64
        0xa
        0x1
    .end array-data

    .line 295
    :array_2
    .array-data 4
        0x10000000
        0x1000000
        0x100000
        0x10000
        0x1000
        0x100
        0x10
        0x1
    .end array-data

    .line 307
    :array_3
    .array-data 8
        0xde0b6b3a7640000L
        0x16345785d8a0000L
        0x2386f26fc10000L
        0x38d7ea4c68000L
        0x5af3107a4000L
        0x9184e72a000L
        0xe8d4a51000L
        0x174876e800L
        0x2540be400L
        0x3b9aca00
        0x5f5e100
        0x989680
        0xf4240
        0x186a0
        0x2710
        0x3e8
        0x64
        0xa
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrefix(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 6
    .param p0, "prefix"    # Lorg/eclipse/jetty/io/Buffer;
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v3

    .line 341
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    .line 342
    .local v0, "bi":I
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 343
    invoke-interface {p0, v2}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v4

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bi":I
    .local v1, "bi":I
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v5

    if-ne v4, v5, :cond_0

    .line 342
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1    # "bi":I
    .restart local v0    # "bi":I
    goto :goto_1

    .line 345
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static prependHexInt(Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 4
    .param p0, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p1, "n"    # I

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 165
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    .line 166
    .local v1, "gi":I
    add-int/lit8 v1, v1, -0x1

    const/16 v3, 0x30

    invoke-interface {p0, v1, v3}, Lorg/eclipse/jetty/io/Buffer;->poke(IB)V

    .line 167
    invoke-interface {p0, v1}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 190
    :goto_0
    return-void

    .line 171
    .end local v1    # "gi":I
    :cond_0
    const/4 v2, 0x0

    .line 172
    .local v2, "minus":Z
    if-gez p1, :cond_1

    .line 174
    const/4 v2, 0x1

    .line 175
    neg-int p1, p1

    .line 178
    :cond_1
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    .line 179
    .restart local v1    # "gi":I
    :goto_1
    if-lez p1, :cond_2

    .line 181
    and-int/lit8 v0, p1, 0xf

    .line 182
    .local v0, "d":I
    shr-int/lit8 p1, p1, 0x4

    .line 183
    add-int/lit8 v1, v1, -0x1

    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->DIGIT:[B

    aget-byte v3, v3, v0

    invoke-interface {p0, v1, v3}, Lorg/eclipse/jetty/io/Buffer;->poke(IB)V

    goto :goto_1

    .line 186
    .end local v0    # "d":I
    :cond_2
    if-eqz v2, :cond_3

    .line 187
    add-int/lit8 v1, v1, -0x1

    const/16 v3, 0x2d

    invoke-interface {p0, v1, v3}, Lorg/eclipse/jetty/io/Buffer;->poke(IB)V

    .line 188
    :cond_3
    invoke-interface {p0, v1}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    goto :goto_0
.end method

.method public static putCRLF(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p0, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 333
    const/16 v0, 0xd

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 334
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 335
    return-void
.end method

.method public static putDecInt(Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 4
    .param p0, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p1, "n"    # I

    .prologue
    .line 196
    if-gez p1, :cond_0

    .line 198
    const/16 v3, 0x2d

    invoke-interface {p0, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 200
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_2

    .line 202
    const/16 v3, 0x32

    invoke-interface {p0, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 203
    const p1, 0x8ca6c00

    .line 209
    :cond_0
    :goto_0
    const/16 v3, 0xa

    if-ge p1, v3, :cond_3

    .line 211
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->DIGIT:[B

    aget-byte v3, v3, p1

    invoke-interface {p0, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 232
    :cond_1
    return-void

    .line 206
    :cond_2
    neg-int p1, p1

    goto :goto_0

    .line 215
    :cond_3
    const/4 v2, 0x0

    .line 217
    .local v2, "started":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->decDivisors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 219
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->decDivisors:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_5

    .line 221
    if-eqz v2, :cond_4

    .line 222
    const/16 v3, 0x30

    invoke-interface {p0, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 217
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    :cond_5
    const/4 v2, 0x1

    .line 227
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->decDivisors:[I

    aget v3, v3, v1

    div-int v0, p1, v3

    .line 228
    .local v0, "d":I
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->DIGIT:[B

    aget-byte v3, v3, v0

    invoke-interface {p0, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 229
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->decDivisors:[I

    aget v3, v3, v1

    mul-int/2addr v3, v0

    sub-int/2addr p1, v3

    goto :goto_2
.end method

.method public static putDecLong(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 6
    .param p0, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p1, "n"    # J

    .prologue
    .line 236
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    .line 238
    const/16 v4, 0x2d

    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 240
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, p1, v4

    if-nez v4, :cond_2

    .line 242
    const/16 v4, 0x39

    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 243
    const-wide p1, 0x31993af1d7c0000L

    .line 249
    :cond_0
    :goto_0
    const-wide/16 v4, 0xa

    cmp-long v4, p1, v4

    if-gez v4, :cond_3

    .line 251
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->DIGIT:[B

    long-to-int v5, p1

    aget-byte v4, v4, v5

    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 272
    :cond_1
    return-void

    .line 246
    :cond_2
    neg-long p1, p1

    goto :goto_0

    .line 255
    :cond_3
    const/4 v3, 0x0

    .line 257
    .local v3, "started":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->decDivisorsL:[J

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 259
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->decDivisorsL:[J

    aget-wide v4, v4, v2

    cmp-long v4, p1, v4

    if-gez v4, :cond_5

    .line 261
    if-eqz v3, :cond_4

    .line 262
    const/16 v4, 0x30

    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 257
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    :cond_5
    const/4 v3, 0x1

    .line 267
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->decDivisorsL:[J

    aget-wide v4, v4, v2

    div-long v0, p1, v4

    .line 268
    .local v0, "d":J
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->DIGIT:[B

    long-to-int v5, v0

    aget-byte v4, v4, v5

    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 269
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->decDivisorsL:[J

    aget-wide v4, v4, v2

    mul-long/2addr v4, v0

    sub-long/2addr p1, v4

    goto :goto_2
.end method

.method public static putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 5
    .param p0, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p1, "n"    # I

    .prologue
    const/16 v4, 0x30

    .line 110
    if-gez p1, :cond_2

    .line 112
    const/16 v3, 0x2d

    invoke-interface {p0, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 114
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_1

    .line 116
    const/16 v3, 0x38

    invoke-interface {p0, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 117
    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 118
    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 119
    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 120
    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 121
    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 122
    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 123
    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    neg-int p1, p1

    .line 130
    :cond_2
    const/16 v3, 0x10

    if-ge p1, v3, :cond_3

    .line 132
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->DIGIT:[B

    aget-byte v3, v3, p1

    invoke-interface {p0, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    goto :goto_0

    .line 136
    :cond_3
    const/4 v2, 0x0

    .line 138
    .local v2, "started":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->hexDivisors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 140
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->hexDivisors:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_5

    .line 142
    if-eqz v2, :cond_4

    .line 143
    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 138
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_5
    const/4 v2, 0x1

    .line 148
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->hexDivisors:[I

    aget v3, v3, v1

    div-int v0, p1, v3

    .line 149
    .local v0, "d":I
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->DIGIT:[B

    aget-byte v3, v3, v0

    invoke-interface {p0, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 150
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->hexDivisors:[I

    aget v3, v3, v1

    mul-int/2addr v3, v0

    sub-int/2addr p1, v3

    goto :goto_2
.end method

.method public static to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 350
    instance-of v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ISO-8859-1"

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toBuffer(J)Lorg/eclipse/jetty/io/Buffer;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 276
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 277
    .local v0, "buf":Lorg/eclipse/jetty/io/ByteArrayBuffer;
    invoke-static {v0, p0, p1}, Lorg/eclipse/jetty/io/BufferUtil;->putDecLong(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 278
    return-object v0
.end method

.method public static toInt(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 7
    .param p0, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 40
    const/4 v4, 0x0

    .line 41
    .local v4, "val":I
    const/4 v3, 0x0

    .line 42
    .local v3, "started":Z
    const/4 v2, 0x0

    .line 43
    .local v2, "minus":Z
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 45
    invoke-interface {p0, v1}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    .line 46
    .local v0, "b":B
    const/16 v5, 0x20

    if-gt v0, v5, :cond_2

    .line 48
    if-eqz v3, :cond_3

    .line 64
    .end local v0    # "b":B
    :cond_0
    if-eqz v3, :cond_5

    .line 65
    if-eqz v2, :cond_1

    neg-int v4, v4

    .end local v4    # "val":I
    :cond_1
    return v4

    .line 51
    .restart local v0    # "b":B
    .restart local v4    # "val":I
    :cond_2
    const/16 v5, 0x30

    if-lt v0, v5, :cond_4

    const/16 v5, 0x39

    if-gt v0, v5, :cond_4

    .line 53
    mul-int/lit8 v5, v4, 0xa

    add-int/lit8 v6, v0, -0x30

    add-int v4, v5, v6

    .line 54
    const/4 v3, 0x1

    .line 43
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_4
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_0

    if-nez v3, :cond_0

    .line 58
    const/4 v2, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "b":B
    :cond_5
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static toLong(Lorg/eclipse/jetty/io/Buffer;)J
    .locals 10
    .param p0, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 78
    const-wide/16 v4, 0x0

    .line 79
    .local v4, "val":J
    const/4 v3, 0x0

    .line 80
    .local v3, "started":Z
    const/4 v2, 0x0

    .line 81
    .local v2, "minus":Z
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 83
    invoke-interface {p0, v1}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    .line 84
    .local v0, "b":B
    const/16 v6, 0x20

    if-gt v0, v6, :cond_2

    .line 86
    if-eqz v3, :cond_3

    .line 102
    .end local v0    # "b":B
    :cond_0
    if-eqz v3, :cond_5

    .line 103
    if-eqz v2, :cond_1

    neg-long v4, v4

    .end local v4    # "val":J
    :cond_1
    return-wide v4

    .line 89
    .restart local v0    # "b":B
    .restart local v4    # "val":J
    :cond_2
    const/16 v6, 0x30

    if-lt v0, v6, :cond_4

    const/16 v6, 0x39

    if-gt v0, v6, :cond_4

    .line 91
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 92
    const/4 v3, 0x1

    .line 81
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_4
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_0

    if-nez v3, :cond_0

    .line 96
    const/4 v2, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "b":B
    :cond_5
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
