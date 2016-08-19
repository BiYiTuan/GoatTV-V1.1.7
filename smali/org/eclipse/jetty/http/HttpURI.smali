.class public Lorg/eclipse/jetty/http/HttpURI;
.super Ljava/lang/Object;
.source "HttpURI.java"


# static fields
.field private static final ASTERISK:I = 0xa

.field private static final AUTH:I = 0x4

.field private static final AUTH_OR_PATH:I = 0x1

.field private static final IPV6:I = 0x5

.field private static final PARAM:I = 0x8

.field private static final PATH:I = 0x7

.field private static final PORT:I = 0x6

.field private static final QUERY:I = 0x9

.field private static final SCHEME_OR_PATH:I = 0x2

.field private static final START:I

.field private static final __empty:[B


# instance fields
.field _authority:I

.field _encoded:Z

.field _end:I

.field _fragment:I

.field _host:I

.field _param:I

.field _partial:Z

.field _path:I

.field _port:I

.field _portValue:I

.field _query:I

.field _raw:[B

.field _rawString:Ljava/lang/String;

.field _scheme:I

.field final _utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 59
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 71
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 59
    sget-object v1, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 71
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 73
    new-instance v1, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 91
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 93
    .local v0, "b":[B
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Lorg/eclipse/jetty/http/HttpURI;->parse([BII)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 59
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 71
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 103
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpURI;->parse(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "parsePartialAuth"    # Z

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 59
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 71
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 86
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 87
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 59
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 71
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpURI;->parse2([BII)V

    .line 99
    return-void
.end method

.method private parse2([BII)V
    .locals 12
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v11, 0x23

    const/16 v10, 0x3a

    const/16 v9, 0x2f

    .line 195
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 196
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 197
    move v2, p2

    .line 198
    .local v2, "i":I
    add-int v1, p2, p3

    .line 199
    .local v1, "e":I
    const/4 v6, 0x0

    .line 200
    .local v6, "state":I
    move v4, p2

    .line 201
    .local v4, "m":I
    add-int v7, p2, p3

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    .line 202
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    .line 203
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    .line 204
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 205
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 206
    const/4 v7, -0x1

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 207
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 208
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 209
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 210
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    :cond_0
    move v3, v2

    .line 211
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_9

    .line 213
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v7, v7, v3

    and-int/lit16 v7, v7, 0xff

    int-to-char v0, v7

    .line 214
    .local v0, "c":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v5, v3

    .line 216
    .local v5, "s":I
    packed-switch v6, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v3, v2

    .line 482
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 220
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_1
    move v4, v5

    .line 221
    sparse-switch v0, :sswitch_data_0

    .line 246
    const/4 v6, 0x2

    move v3, v2

    .line 249
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 224
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_0
    const/4 v6, 0x1

    move v3, v2

    .line 225
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 227
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 228
    const/16 v6, 0x8

    move v3, v2

    .line 229
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 231
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 232
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 233
    const/16 v6, 0x9

    move v3, v2

    .line 234
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 236
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_3
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 237
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 238
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    move v3, v2

    .line 239
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 241
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_4
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 242
    const/16 v6, 0xa

    move v3, v2

    .line 243
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 254
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_2
    iget-boolean v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    if-nez v7, :cond_1

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    if-eq v7, v8, :cond_2

    :cond_1
    if-ne v0, v9, :cond_2

    .line 256
    iput v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 257
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 258
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 259
    const/4 v6, 0x4

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 261
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_2
    const/16 v7, 0x3b

    if-eq v0, v7, :cond_3

    const/16 v7, 0x3f

    if-eq v0, v7, :cond_3

    if-ne v0, v11, :cond_4

    .line 263
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 264
    const/4 v6, 0x7

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 268
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_4
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 269
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 270
    const/4 v6, 0x7

    move v3, v2

    .line 272
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 278
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_3
    const/4 v7, 0x6

    if-le p3, v7, :cond_b

    const/16 v7, 0x74

    if-ne v0, v7, :cond_b

    .line 280
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v8, p2, 0x3

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_5

    .line 282
    add-int/lit8 v5, p2, 0x3

    .line 283
    add-int/lit8 v2, p2, 0x4

    .line 284
    const/16 v0, 0x3a

    move v3, v2

    .line 300
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_2
    sparse-switch v0, :sswitch_data_1

    :goto_3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_4
    move v3, v2

    .line 348
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 286
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_5
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v8, p2, 0x4

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_6

    .line 288
    add-int/lit8 v5, p2, 0x4

    .line 289
    add-int/lit8 v2, p2, 0x5

    .line 290
    const/16 v0, 0x3a

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 292
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_6
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v8, p2, 0x5

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_b

    .line 294
    add-int/lit8 v5, p2, 0x5

    .line 295
    add-int/lit8 v2, p2, 0x6

    .line 296
    const/16 v0, 0x3a

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 304
    :sswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .line 305
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    .line 306
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 307
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v7, v7, v2

    and-int/lit16 v7, v7, 0xff

    int-to-char v0, v7

    .line 308
    if-ne v0, v9, :cond_7

    .line 309
    const/4 v6, 0x1

    goto :goto_4

    .line 312
    :cond_7
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 313
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 314
    const/4 v6, 0x7

    .line 316
    goto :goto_4

    .line 321
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_6
    const/4 v6, 0x7

    move v2, v3

    .line 322
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 327
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_7
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 328
    const/16 v6, 0x8

    move v2, v3

    .line 329
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 334
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_8
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 335
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 336
    const/16 v6, 0x9

    move v2, v3

    .line 337
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 342
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_9
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 343
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 344
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto :goto_3

    .line 353
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_4
    sparse-switch v0, :sswitch_data_2

    :goto_5
    move v3, v2

    .line 381
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 358
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_a
    move v4, v5

    .line 359
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 360
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 361
    const/4 v6, 0x7

    .line 362
    goto :goto_5

    .line 366
    :sswitch_b
    iput v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    goto :goto_5

    .line 371
    :sswitch_c
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 372
    const/4 v6, 0x6

    .line 373
    goto :goto_5

    .line 377
    :sswitch_d
    const/4 v6, 0x5

    goto :goto_5

    .line 386
    :pswitch_5
    sparse-switch v0, :sswitch_data_3

    :goto_6
    move v3, v2

    .line 399
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 390
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No closing \']\' for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    sget-object v10, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v9, p2, p3, v10}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 394
    :sswitch_f
    const/4 v6, 0x4

    goto :goto_6

    .line 404
    :pswitch_6
    if-ne v0, v9, :cond_0

    .line 406
    move v4, v5

    .line 407
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 408
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    if-gt v7, v8, :cond_8

    .line 409
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 410
    :cond_8
    const/4 v6, 0x7

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 417
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_7
    sparse-switch v0, :sswitch_data_4

    :goto_7
    move v3, v2

    .line 444
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 421
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_10
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 422
    const/16 v6, 0x8

    .line 423
    goto :goto_7

    .line 427
    :sswitch_11
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 428
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 429
    const/16 v6, 0x9

    .line 430
    goto :goto_7

    .line 434
    :sswitch_12
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 435
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 436
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto/16 :goto_1

    .line 441
    :sswitch_13
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    goto :goto_7

    .line 449
    :pswitch_8
    sparse-switch v0, :sswitch_data_5

    :goto_8
    move v3, v2

    .line 464
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 453
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_14
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 454
    const/16 v6, 0x9

    .line 455
    goto :goto_8

    .line 459
    :sswitch_15
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 460
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto/16 :goto_1

    .line 469
    :pswitch_9
    if-ne v0, v11, :cond_0

    .line 471
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto/16 :goto_1

    .line 479
    :pswitch_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "only \'*\'"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 484
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v5    # "s":I
    .restart local v3    # "i":I
    :cond_9
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    if-ge v7, v8, :cond_a

    .line 485
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v10, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0xa

    invoke-static {v7, v8, v9, v10}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v7

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 486
    :cond_a
    return-void

    .end local v3    # "i":I
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    .restart local v5    # "s":I
    :cond_b
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_2

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 221
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2a -> :sswitch_4
        0x2f -> :sswitch_0
        0x3b -> :sswitch_1
        0x3f -> :sswitch_2
    .end sparse-switch

    .line 300
    :sswitch_data_1
    .sparse-switch
        0x23 -> :sswitch_9
        0x2f -> :sswitch_6
        0x3a -> :sswitch_5
        0x3b -> :sswitch_7
        0x3f -> :sswitch_8
    .end sparse-switch

    .line 353
    :sswitch_data_2
    .sparse-switch
        0x2f -> :sswitch_a
        0x3a -> :sswitch_c
        0x40 -> :sswitch_b
        0x5b -> :sswitch_d
    .end sparse-switch

    .line 386
    :sswitch_data_3
    .sparse-switch
        0x2f -> :sswitch_e
        0x5d -> :sswitch_f
    .end sparse-switch

    .line 417
    :sswitch_data_4
    .sparse-switch
        0x23 -> :sswitch_12
        0x25 -> :sswitch_13
        0x3b -> :sswitch_10
        0x3f -> :sswitch_11
    .end sparse-switch

    .line 449
    :sswitch_data_5
    .sparse-switch
        0x23 -> :sswitch_15
        0x3f -> :sswitch_14
    .end sparse-switch
.end method

.method private toUtf8String(II)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 490
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 491
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    .line 492
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 655
    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    .line 656
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 657
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 658
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 659
    return-void
.end method

.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 4
    .param p1, "parameters"    # Lorg/eclipse/jetty/util/MultiMap;

    .prologue
    .line 635
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 638
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-static {v0, v1, v2, p1, v3}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V

    goto :goto_0
.end method

.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "parameters"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 644
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 651
    :goto_0
    return-void

    .line 647
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;)V

    goto :goto_0

    .line 650
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 3

    .prologue
    .line 519
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    if-ne v0, v1, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 521
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 595
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    if-ne v0, v1, :cond_0

    .line 596
    const/4 v0, 0x0

    .line 597
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDecodedPath()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 545
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ne v6, v7, :cond_0

    .line 546
    const/4 v6, 0x0

    .line 583
    :goto_0
    return-object v6

    .line 548
    :cond_0
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int v3, v6, v7

    .line 549
    .local v3, "length":I
    const/4 v1, 0x0

    .line 550
    .local v1, "bytes":[B
    const/4 v4, 0x0

    .line 552
    .local v4, "n":I
    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .local v2, "i":I
    :goto_1
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ge v2, v6, :cond_5

    .line 554
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v0, v6, v2

    .line 556
    .local v0, "b":B
    const/16 v6, 0x25

    if-ne v0, v6, :cond_4

    .line 558
    add-int/lit8 v6, v2, 0x2

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-lt v6, v7, :cond_1

    .line 559
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad % encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 560
    :cond_1
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v7, v2, 0x1

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v6, v7, v8, v9}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v0, v6

    .line 561
    add-int/lit8 v2, v2, 0x2

    .line 569
    :cond_2
    if-nez v1, :cond_3

    .line 571
    new-array v1, v3, [B

    .line 572
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    invoke-static {v6, v7, v1, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "n":I
    .local v5, "n":I
    aput-byte v0, v1, v4

    move v4, v5

    .line 552
    .end local v5    # "n":I
    .restart local v4    # "n":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 563
    :cond_4
    if-nez v1, :cond_2

    .line 565
    add-int/lit8 v4, v4, 0x1

    .line 566
    goto :goto_2

    .line 578
    .end local v0    # "b":B
    :cond_5
    if-nez v1, :cond_6

    .line 579
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    invoke-direct {p0, v6, v3}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 581
    :cond_6
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 582
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v6, v1, v10, v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    .line 583
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 3

    .prologue
    .line 628
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    if-ne v0, v1, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 526
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    if-ne v0, v1, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 528
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 602
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    if-ne v0, v1, :cond_0

    .line 603
    const/4 v0, 0x0

    .line 604
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 538
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ne v0, v1, :cond_0

    .line 539
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPathAndParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 588
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    if-ne v0, v1, :cond_0

    .line 589
    const/4 v0, 0x0

    .line 590
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .prologue
    .line 609
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 610
    const/4 v0, 0x0

    .line 611
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 616
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 617
    const/4 v0, 0x0

    .line 618
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x70

    const/16 v4, 0x68

    const/16 v3, 0x74

    .line 497
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    if-ne v1, v2, :cond_0

    .line 498
    const/4 v1, 0x0

    .line 514
    :goto_0
    return-object v1

    .line 499
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int v0, v1, v2

    .line 500
    .local v0, "l":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_1

    .line 505
    const-string v1, "http"

    goto :goto_0

    .line 506
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2

    .line 512
    const-string v1, "https"

    goto :goto_0

    .line 514
    :cond_2
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 623
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 3
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 109
    .local v0, "b":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/http/HttpURI;->parse2([BII)V

    .line 110
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public parse([BII)V
    .locals 1
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpURI;->parse2([BII)V

    .line 117
    return-void
.end method

.method public parseConnect([BII)V
    .locals 11
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 122
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 123
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 124
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 125
    move v2, p2

    .line 126
    .local v2, "i":I
    add-int v1, p2, p3

    .line 127
    .local v1, "e":I
    const/4 v6, 0x4

    .line 128
    .local v6, "state":I
    move v4, p2

    .line 129
    .local v4, "m":I
    add-int v7, p2, p3

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    .line 130
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    .line 131
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    .line 132
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 133
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 134
    const/4 v7, -0x1

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 135
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 136
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 137
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 138
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    move v3, v2

    .line 140
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 142
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v7, v7, v3

    and-int/lit16 v7, v7, 0xff

    int-to-char v0, v7

    .line 143
    .local v0, "c":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v5, v3

    .line 145
    .local v5, "s":I
    packed-switch v6, :pswitch_data_0

    move v3, v2

    .line 183
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 149
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    move v3, v2

    .line 162
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 153
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_0
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 185
    .end local v0    # "c":C
    .end local v5    # "s":I
    :goto_2
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    if-ge v7, v8, :cond_0

    .line 186
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v10, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0xa

    invoke-static {v7, v8, v9, v10}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v7

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 189
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 190
    return-void

    .line 158
    .restart local v0    # "c":C
    .restart local v5    # "s":I
    :sswitch_1
    const/4 v6, 0x5

    goto :goto_1

    .line 167
    :pswitch_1
    sparse-switch v0, :sswitch_data_1

    :goto_3
    move v3, v2

    .line 180
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 171
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No closing \']\' for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    sget-object v10, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v9, p2, p3, v10}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 175
    :sswitch_3
    const/4 v6, 0x4

    goto :goto_3

    .line 188
    .end local v0    # "c":C
    .end local v5    # "s":I
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "No port"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x5b -> :sswitch_1
    .end sparse-switch

    .line 167
    :sswitch_data_1
    .sparse-switch
        0x2f -> :sswitch_2
        0x5d -> :sswitch_3
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 664
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 665
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 666
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lorg/eclipse/jetty/util/Utf8StringBuilder;)V
    .locals 4
    .param p1, "buf"    # Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .prologue
    .line 671
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    .line 672
    return-void
.end method
