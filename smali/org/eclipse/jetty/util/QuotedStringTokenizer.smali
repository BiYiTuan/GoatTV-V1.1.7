.class public Lorg/eclipse/jetty/util/QuotedStringTokenizer;
.super Ljava/util/StringTokenizer;
.source "QuotedStringTokenizer.java"


# static fields
.field private static final __delim:Ljava/lang/String; = "\t\n\r"

.field private static final escapes:[C


# instance fields
.field private _delim:Ljava/lang/String;

.field private _double:Z

.field private _hasToken:Z

.field private _i:I

.field private _lastStart:I

.field private _returnDelimiters:Z

.field private _returnQuotes:Z

.field private _single:Z

.field private _string:Ljava/lang/String;

.field private _token:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 319
    const/16 v0, 0x20

    new-array v0, v0, [C

    sput-object v0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->escapes:[C

    .line 322
    sget-object v0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->escapes:[C

    const v1, 0xffff

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 323
    sget-object v0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->escapes:[C

    const/16 v1, 0x8

    const/16 v2, 0x62

    aput-char v2, v0, v1

    .line 324
    sget-object v0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->escapes:[C

    const/16 v1, 0x9

    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 325
    sget-object v0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->escapes:[C

    const/16 v1, 0xa

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    .line 326
    sget-object v0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->escapes:[C

    const/16 v1, 0xc

    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 327
    sget-object v0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->escapes:[C

    const/16 v1, 0xd

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 328
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returnDelimiters"    # Z

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returnDelimiters"    # Z
    .param p4, "returnQuotes"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v0, "\t\n\r"

    iput-object v0, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnQuotes:Z

    .line 40
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnDelimiters:Z

    .line 42
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    .line 43
    iput v1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_i:I

    .line 44
    iput v1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_lastStart:I

    .line 45
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_double:Z

    .line 46
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_single:Z

    .line 55
    iput-object p1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_string:Ljava/lang/String;

    .line 56
    if-eqz p2, :cond_0

    .line 57
    iput-object p2, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    .line 58
    :cond_0
    iput-boolean p3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnDelimiters:Z

    .line 59
    iput-boolean p4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnQuotes:Z

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t use quotes as delimiters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_3

    const/16 v0, 0x200

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    .line 66
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 308
    if-nez p0, :cond_0

    .line 309
    const/4 v1, 0x0

    .line 315
    :goto_0
    return-object v1

    .line 310
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 311
    const-string v1, "\"\""

    goto :goto_0

    .line 313
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 314
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static quote(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 9
    .param p0, "buffer"    # Ljava/lang/Appendable;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x22

    const/16 v6, 0x5c

    .line 340
    const/16 v4, 0x22

    :try_start_0
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 341
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 343
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 344
    .local v0, "c":C
    const/16 v4, 0x20

    if-lt v0, v4, :cond_2

    .line 346
    if-eq v0, v7, :cond_0

    if-ne v0, v6, :cond_1

    .line 347
    :cond_0
    const/16 v4, 0x5c

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 348
    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 341
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_2
    sget-object v4, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->escapes:[C

    aget-char v1, v4, v0

    .line 353
    .local v1, "escape":C
    const v4, 0xffff

    if-ne v1, v4, :cond_4

    .line 356
    const/16 v4, 0x5c

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    const/16 v5, 0x75

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    const/16 v5, 0x30

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    const/16 v5, 0x30

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 357
    if-ge v0, v8, :cond_3

    .line 358
    const/16 v4, 0x30

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 359
    :cond_3
    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 369
    .end local v0    # "c":C
    .end local v1    # "escape":C
    .end local v2    # "i":I
    :catch_0
    move-exception v3

    .line 371
    .local v3, "x":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 363
    .end local v3    # "x":Ljava/io/IOException;
    .restart local v0    # "c":C
    .restart local v1    # "escape":C
    .restart local v2    # "i":I
    :cond_4
    const/16 v4, 0x5c

    :try_start_1
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 367
    .end local v0    # "c":C
    .end local v1    # "escape":C
    :cond_5
    const/16 v4, 0x22

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    return-void
.end method

.method public static quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    .line 278
    if-nez p0, :cond_1

    .line 279
    const/4 p0, 0x0

    .line 295
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 280
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 281
    const-string p0, "\"\""

    goto :goto_0

    .line 284
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 286
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 287
    .local v1, "c":C
    const/16 v3, 0x5c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x22

    if-eq v1, v3, :cond_3

    const/16 v3, 0x27

    if-eq v1, v3, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 289
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 290
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 284
    .end local v0    # "b":Ljava/lang/StringBuffer;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "buf"    # Ljava/lang/Appendable;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .prologue
    .line 386
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 388
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 389
    .local v0, "c":C
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 391
    invoke-static {p0, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 392
    const/4 v3, 0x1

    .line 399
    .end local v0    # "c":C
    :goto_1
    return v3

    .line 386
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "c":C
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    const/4 v3, 0x0

    goto :goto_1

    .line 401
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x22

    .line 414
    if-nez p0, :cond_1

    .line 415
    const/4 p0, 0x0

    .line 482
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 416
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 419
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 420
    .local v3, "first":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 421
    .local v6, "last":C
    if-ne v3, v6, :cond_0

    if-eq v3, v9, :cond_2

    const/16 v7, 0x27

    if-ne v3, v7, :cond_0

    .line 424
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 425
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 426
    .local v2, "escape":Z
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_5

    .line 428
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 430
    .local v1, "c":C
    if-eqz v2, :cond_3

    .line 432
    const/4 v2, 0x0

    .line 433
    sparse-switch v1, :sswitch_data_0

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 436
    :sswitch_0
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 439
    :sswitch_1
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 442
    :sswitch_2
    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 445
    :sswitch_3
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 448
    :sswitch_4
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 451
    :sswitch_5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 454
    :sswitch_6
    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 457
    :sswitch_7
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 460
    :sswitch_8
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    add-int/2addr v7, v8

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 472
    :cond_3
    if-ne v1, v10, :cond_4

    .line 474
    const/4 v2, 0x1

    goto :goto_2

    .line 478
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 482
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 433
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x2f -> :sswitch_6
        0x5c -> :sswitch_5
        0x62 -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_0
        0x72 -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public countTokens()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, -0x1

    return v0
.end method

.method public getDouble()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_double:Z

    return v0
.end method

.method public getSingle()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_single:Z

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .locals 10

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x27

    const/16 v7, 0x22

    const/4 v3, 0x1

    .line 94
    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    if-eqz v4, :cond_0

    .line 214
    :goto_0
    return v3

    .line 97
    :cond_0
    iget v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_i:I

    iput v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_lastStart:I

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "state":I
    const/4 v1, 0x0

    .line 101
    .local v1, "escape":Z
    :cond_1
    :goto_1
    iget v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_i:I

    iget-object v5, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_string:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_17

    .line 103
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_string:Ljava/lang/String;

    iget v5, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 105
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 108
    :pswitch_0
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 110
    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnDelimiters:Z

    if-eqz v4, :cond_1

    .line 112
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    iput-boolean v3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    goto :goto_0

    .line 116
    :cond_2
    if-ne v0, v8, :cond_4

    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_single:Z

    if-eqz v4, :cond_4

    .line 118
    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_3

    .line 119
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 122
    :cond_4
    if-ne v0, v7, :cond_6

    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_double:Z

    if-eqz v4, :cond_6

    .line 124
    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_5

    .line 125
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    .line 130
    :cond_6
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    iput-boolean v3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    .line 132
    const/4 v2, 0x1

    .line 134
    goto :goto_1

    .line 137
    :pswitch_1
    iput-boolean v3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    .line 138
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_8

    .line 140
    iget-boolean v3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnDelimiters:Z

    if-eqz v3, :cond_7

    .line 141
    iget v3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_i:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_i:I

    .line 142
    :cond_7
    iget-boolean v3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    goto :goto_0

    .line 144
    :cond_8
    if-ne v0, v8, :cond_a

    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_single:Z

    if-eqz v4, :cond_a

    .line 146
    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_9

    .line 147
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    :cond_9
    const/4 v2, 0x2

    goto :goto_1

    .line 150
    :cond_a
    if-ne v0, v7, :cond_c

    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_double:Z

    if-eqz v4, :cond_c

    .line 152
    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_b

    .line 153
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    :cond_b
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 158
    :cond_c
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 163
    :pswitch_2
    iput-boolean v3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    .line 164
    if-eqz v1, :cond_d

    .line 166
    const/4 v1, 0x0

    .line 167
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 169
    :cond_d
    if-ne v0, v8, :cond_f

    .line 171
    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_e

    .line 172
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 175
    :cond_f
    if-ne v0, v9, :cond_11

    .line 177
    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_10

    .line 178
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 179
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 183
    :cond_11
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 188
    :pswitch_3
    iput-boolean v3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    .line 189
    if-eqz v1, :cond_12

    .line 191
    const/4 v1, 0x0

    .line 192
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 194
    :cond_12
    if-ne v0, v7, :cond_14

    .line 196
    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_13

    .line 197
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 200
    :cond_14
    if-ne v0, v9, :cond_16

    .line 202
    iget-boolean v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_15

    .line 203
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    :cond_15
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 208
    :cond_16
    iget-object v4, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 214
    .end local v0    # "c":C
    :cond_17
    iget-boolean v3, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    goto/16 :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    if-nez v1, :cond_1

    .line 223
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 224
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 226
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    .line 227
    return-object v0
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 235
    iput-object p1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    .line 236
    iget v0, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_lastStart:I

    iput v0, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_i:I

    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 238
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_hasToken:Z

    .line 239
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDouble(Z)V
    .locals 0
    .param p1, "d"    # Z

    .prologue
    .line 500
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_double:Z

    .line 501
    return-void
.end method

.method public setSingle(Z)V
    .locals 0
    .param p1, "single"    # Z

    .prologue
    .line 518
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->_single:Z

    .line 519
    return-void
.end method
