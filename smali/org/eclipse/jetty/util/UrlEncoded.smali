.class public Lorg/eclipse/jetty/util/UrlEncoded;
.super Lorg/eclipse/jetty/util/MultiMap;
.source "UrlEncoded.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ENCODING:Ljava/lang/String;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lorg/eclipse/jetty/util/UrlEncoded;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 51
    const-string v0, "org.eclipse.jetty.util.UrlEncoding.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 69
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/UrlEncoded;)V
    .locals 0
    .param p1, "url"    # Lorg/eclipse/jetty/util/UrlEncoded;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/MultiMap;-><init>(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 57
    return-void
.end method

.method public static decode88591To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 12
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "maxLength"    # I
    .param p3, "maxKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    monitor-enter p1

    .line 369
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 370
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 371
    .local v4, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 376
    .local v6, "value":Ljava/lang/String;
    const/4 v5, 0x0

    .line 377
    .local v5, "totalLength":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    if-ltz v0, :cond_6

    .line 379
    int-to-char v7, v0

    sparse-switch v7, :sswitch_data_0

    .line 423
    int-to-char v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 426
    :cond_1
    :goto_0
    if-ltz p2, :cond_0

    add-int/lit8 v5, v5, 0x1

    if-le v5, p2, :cond_0

    .line 427
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Form too large"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 440
    .end local v0    # "b":I
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "totalLength":I
    .end local v6    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 382
    .restart local v0    # "b":I
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "totalLength":I
    .restart local v6    # "value":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_3

    const-string v6, ""

    .line 383
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 384
    if-eqz v4, :cond_4

    .line 386
    invoke-virtual {p1, v4, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    :cond_2
    :goto_2
    const/4 v4, 0x0

    .line 393
    const/4 v6, 0x0

    .line 394
    if-lez p3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v7

    if-le v7, p3, :cond_1

    .line 396
    sget-object v7, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "maxFormKeys limit exceeded keys>{}"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    monitor-exit p1

    .line 441
    :goto_3
    return-void

    .line 382
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 388
    :cond_4
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 390
    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 402
    :sswitch_1
    if-eqz v4, :cond_5

    .line 404
    int-to-char v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 407
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 412
    :sswitch_2
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 416
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 417
    .local v2, "dh":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 418
    .local v3, "dl":I
    if-ltz v2, :cond_1

    if-ltz v3, :cond_1

    .line 420
    int-to-byte v7, v2

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    int-to-byte v8, v3

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    add-int/2addr v7, v8

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 430
    .end local v2    # "dh":I
    .end local v3    # "dl":I
    :cond_6
    if-eqz v4, :cond_9

    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_8

    const-string v6, ""

    .line 433
    :goto_4
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 434
    invoke-virtual {p1, v4, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 440
    :cond_7
    :goto_5
    monitor-exit p1

    goto :goto_3

    .line 432
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 436
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 668
    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 670
    :cond_0
    const/4 v3, 0x0

    .line 672
    .local v3, "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v7, v0, :cond_9

    .line 674
    add-int v12, p1, v7

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 675
    .local v5, "c":C
    if-ltz v5, :cond_1

    const/16 v12, 0xff

    if-le v5, v12, :cond_4

    .line 677
    :cond_1
    if-nez v3, :cond_3

    .line 679
    new-instance v3, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    .end local v3    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    move/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 680
    .restart local v3    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    add-int v13, p1, v7

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p1

    invoke-virtual {v12, p0, v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 672
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 683
    :cond_3
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 685
    :cond_4
    const/16 v12, 0x2b

    if-ne v5, v12, :cond_6

    .line 687
    if-nez v3, :cond_5

    .line 689
    new-instance v3, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    .end local v3    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    move/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 690
    .restart local v3    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    add-int v13, p1, v7

    move/from16 v0, p1

    invoke-virtual {v12, p0, v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 693
    :cond_5
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 695
    :cond_6
    const/16 v12, 0x25

    if-ne v5, v12, :cond_8

    add-int/lit8 v12, v7, 0x2

    move/from16 v0, p2

    if-ge v12, v0, :cond_8

    .line 697
    if-nez v3, :cond_7

    .line 699
    new-instance v3, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    .end local v3    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    move/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 700
    .restart local v3    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    add-int v13, p1, v7

    move/from16 v0, p1

    invoke-virtual {v12, p0, v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 705
    :cond_7
    add-int v12, p1, v7

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x10

    :try_start_0
    invoke-static {p0, v12, v13, v14}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v12

    int-to-byte v1, v12

    .line 706
    .local v1, "b":B
    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 709
    .end local v1    # "b":B
    :catch_0
    move-exception v11

    .line 711
    .local v11, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x25

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 714
    .end local v11    # "nfe":Ljava/lang/NumberFormatException;
    :cond_8
    if-eqz v3, :cond_2

    .line 715
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 718
    .end local v5    # "c":C
    :cond_9
    if-nez v3, :cond_c

    .line 720
    if-nez p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_b

    .line 821
    .end local v3    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    .end local p0    # "encoded":Ljava/lang/String;
    :cond_a
    :goto_2
    return-object p0

    .line 722
    .restart local v3    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    .restart local p0    # "encoded":Ljava/lang/String;
    :cond_b
    add-int v12, p1, p2

    move/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 725
    :cond_c
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 729
    .end local v3    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    .end local v7    # "i":I
    :cond_d
    const/4 v3, 0x0

    .line 733
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    move-object v4, v3

    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .local v4, "buffer":Ljava/lang/StringBuffer;
    :goto_3
    move/from16 v0, p2

    if-ge v7, v0, :cond_1a

    .line 735
    add-int v12, p1, v7

    :try_start_1
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 736
    .restart local v5    # "c":C
    if-ltz v5, :cond_e

    const/16 v12, 0xff

    if-le v5, v12, :cond_10

    .line 738
    :cond_e
    if-nez v4, :cond_f

    .line 740
    new-instance v3, Ljava/lang/StringBuffer;

    move/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 741
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    add-int v12, p1, v7

    add-int/lit8 v12, v12, 0x1

    :try_start_2
    move/from16 v0, p1

    invoke-virtual {v3, p0, v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 733
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object v4, v3

    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    goto :goto_3

    .line 744
    :cond_f
    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object v3, v4

    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    goto :goto_4

    .line 746
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_10
    const/16 v12, 0x2b

    if-ne v5, v12, :cond_11

    .line 748
    if-nez v4, :cond_1f

    .line 750
    new-instance v3, Ljava/lang/StringBuffer;

    move/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 751
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    add-int v12, p1, v7

    :try_start_4
    move/from16 v0, p1

    invoke-virtual {v3, p0, v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 754
    :goto_5
    const/16 v12, 0x20

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 823
    :catch_1
    move-exception v6

    .line 825
    .end local v5    # "c":C
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :goto_6
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 756
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v5    # "c":C
    :cond_11
    const/16 v12, 0x25

    if-ne v5, v12, :cond_18

    add-int/lit8 v12, v7, 0x2

    move/from16 v0, p2

    if-ge v12, v0, :cond_18

    .line 758
    if-nez v4, :cond_1e

    .line 760
    :try_start_5
    new-instance v3, Ljava/lang/StringBuffer;

    move/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    .line 761
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    add-int v12, p1, v7

    :try_start_6
    move/from16 v0, p1

    invoke-virtual {v3, p0, v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 764
    :goto_7
    move/from16 v0, p2

    new-array v2, v0, [B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1

    .line 765
    .local v2, "ba":[B
    const/4 v8, 0x0

    .local v8, "n":I
    move v9, v8

    .line 766
    .end local v8    # "n":I
    .local v9, "n":I
    :goto_8
    if-ltz v5, :cond_1d

    const/16 v12, 0xff

    if-gt v5, v12, :cond_1d

    .line 768
    const/16 v12, 0x25

    if-ne v5, v12, :cond_15

    .line 770
    add-int/lit8 v12, v7, 0x2

    move/from16 v0, p2

    if-ge v12, v0, :cond_14

    .line 774
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "n":I
    .restart local v8    # "n":I
    add-int v12, p1, v7

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x10

    :try_start_7
    invoke-static {p0, v12, v13, v14}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v2, v9
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1

    .line 775
    add-int/lit8 v7, v7, 0x3

    .line 801
    :goto_9
    move/from16 v0, p2

    if-lt v7, v0, :cond_17

    .line 806
    :goto_a
    add-int/lit8 v7, v7, -0x1

    .line 807
    :try_start_8
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-direct {v12, v2, v13, v8, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 777
    :catch_2
    move-exception v11

    .line 779
    .restart local v11    # "nfe":Ljava/lang/NumberFormatException;
    add-int/lit8 v12, v8, -0x1

    const/16 v13, 0x25

    aput-byte v13, v2, v12

    move v9, v8

    .line 780
    .end local v8    # "n":I
    .restart local v9    # "n":I
    :goto_b
    add-int/lit8 v7, v7, 0x1

    add-int v12, v7, p1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .local v10, "next":C
    const/16 v12, 0x25

    if-eq v10, v12, :cond_13

    .line 781
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "n":I
    .restart local v8    # "n":I
    const/16 v12, 0x2b

    if-ne v10, v12, :cond_12

    const/16 v10, 0x20

    .end local v10    # "next":C
    :cond_12
    int-to-byte v12, v10

    aput-byte v12, v2, v9

    move v9, v8

    .end local v8    # "n":I
    .restart local v9    # "n":I
    goto :goto_b

    .restart local v10    # "next":C
    :cond_13
    move v8, v9

    .line 782
    .end local v9    # "n":I
    .restart local v8    # "n":I
    goto :goto_9

    .line 786
    .end local v8    # "n":I
    .end local v10    # "next":C
    .end local v11    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v9    # "n":I
    :cond_14
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "n":I
    .restart local v8    # "n":I
    const/16 v12, 0x25

    aput-byte v12, v2, v9

    .line 787
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 790
    .end local v8    # "n":I
    .restart local v9    # "n":I
    :cond_15
    const/16 v12, 0x2b

    if-ne v5, v12, :cond_16

    .line 792
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "n":I
    .restart local v8    # "n":I
    const/16 v12, 0x20

    aput-byte v12, v2, v9

    .line 793
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 797
    .end local v8    # "n":I
    .restart local v9    # "n":I
    :cond_16
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "n":I
    .restart local v8    # "n":I
    int-to-byte v12, v5

    aput-byte v12, v2, v9

    .line 798
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 803
    :cond_17
    add-int v12, p1, v7

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v5

    move v9, v8

    .end local v8    # "n":I
    .restart local v9    # "n":I
    goto :goto_8

    .line 810
    .end local v2    # "ba":[B
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v9    # "n":I
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_18
    if-eqz v4, :cond_19

    .line 811
    :try_start_9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_19
    move-object v3, v4

    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_4

    .line 814
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "c":C
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_1a
    if-nez v4, :cond_1c

    .line 816
    if-nez p1, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p2

    if-eq v12, v0, :cond_a

    .line 818
    :cond_1b
    add-int v12, p1, p2

    move/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 821
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object p0

    goto/16 :goto_2

    .line 823
    :catch_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_6

    .restart local v2    # "ba":[B
    .restart local v5    # "c":C
    .restart local v9    # "n":I
    :cond_1d
    move v8, v9

    .end local v9    # "n":I
    .restart local v8    # "n":I
    goto :goto_a

    .end local v2    # "ba":[B
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v8    # "n":I
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_1e
    move-object v3, v4

    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_7

    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_1f
    move-object v3, v4

    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_5
.end method

.method public static decodeTo(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;II)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "maxLength"    # I
    .param p4, "maxKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    if-nez p2, :cond_0

    .line 557
    sget-object p2, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 560
    :cond_0
    const-string v8, "UTF-8"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 562
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    .line 659
    :goto_0
    return-void

    .line 566
    :cond_1
    const-string v8, "ISO-8859-1"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 568
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/UrlEncoded;->decode88591To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    goto :goto_0

    .line 572
    :cond_2
    const-string v8, "UTF-16"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 574
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf16To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    goto :goto_0

    .line 579
    :cond_3
    monitor-enter p1

    .line 581
    const/4 v3, 0x0

    .line 582
    .local v3, "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 585
    .local v7, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 586
    .local v1, "digit":I
    const/4 v2, 0x0

    .line 588
    .local v2, "digits":I
    const/4 v6, 0x0

    .line 589
    .local v6, "totalLength":I
    :try_start_0
    new-instance v4, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-direct {v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>()V

    .line 591
    .local v4, "output":Lorg/eclipse/jetty/util/ByteArrayOutputStream2;
    const/4 v5, 0x0

    .line 593
    .local v5, "size":I
    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-lez v0, :cond_c

    .line 595
    int-to-char v8, v0

    sparse-switch v8, :sswitch_data_0

    .line 629
    const/4 v8, 0x2

    if-ne v2, v8, :cond_a

    .line 631
    int-to-byte v8, v0

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v1

    .line 632
    const/4 v2, 0x1

    .line 644
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 645
    if-ltz p3, :cond_4

    if-le v6, p3, :cond_4

    .line 646
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Form too large"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 658
    .end local v0    # "c":I
    .end local v4    # "output":Lorg/eclipse/jetty/util/ByteArrayOutputStream2;
    .end local v5    # "size":I
    :catchall_0
    move-exception v8

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 598
    .restart local v0    # "c":I
    .restart local v4    # "output":Lorg/eclipse/jetty/util/ByteArrayOutputStream2;
    .restart local v5    # "size":I
    :sswitch_0
    :try_start_1
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v5

    .line 599
    if-nez v5, :cond_6

    const-string v7, ""

    .line 600
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    .line 601
    if-eqz v3, :cond_7

    .line 603
    invoke-virtual {p1, v3, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    :cond_5
    :goto_3
    const/4 v3, 0x0

    .line 610
    const/4 v7, 0x0

    .line 611
    goto :goto_1

    .line 599
    :cond_6
    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 605
    :cond_7
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 607
    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 613
    :sswitch_1
    if-eqz v3, :cond_8

    .line 615
    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_1

    .line 618
    :cond_8
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v5

    .line 619
    if-nez v5, :cond_9

    const-string v3, ""

    .line 620
    :goto_4
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_1

    .line 619
    :cond_9
    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 623
    :sswitch_2
    const/16 v8, 0x20

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_1

    .line 626
    :sswitch_3
    const/4 v2, 0x2

    .line 627
    goto :goto_1

    .line 634
    :cond_a
    const/4 v8, 0x1

    if-ne v2, v8, :cond_b

    .line 636
    shl-int/lit8 v8, v1, 0x4

    int-to-byte v9, v0

    invoke-static {v9}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    .line 637
    const/4 v2, 0x0

    goto :goto_1

    .line 640
    :cond_b
    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_1

    .line 649
    :cond_c
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v5

    .line 650
    if-eqz v3, :cond_f

    .line 652
    if-nez v5, :cond_e

    const-string v7, ""

    .line 653
    :goto_5
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    .line 654
    invoke-virtual {p1, v3, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 658
    :cond_d
    :goto_6
    monitor-exit p1

    goto/16 :goto_0

    .line 652
    :cond_e
    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 656
    :cond_f
    if-lez v5, :cond_d

    .line 657
    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 595
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 183
    return-void
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V
    .locals 12
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "maxKeys"    # I

    .prologue
    .line 191
    if-nez p2, :cond_0

    .line 192
    sget-object p2, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 194
    :cond_0
    monitor-enter p1

    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 198
    .local v6, "value":Ljava/lang/String;
    const/4 v5, -0x1

    .line 199
    .local v5, "mark":I
    const/4 v1, 0x0

    .line 200
    .local v1, "encoded":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 202
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 203
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 200
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :sswitch_0
    sub-int v7, v2, v5

    add-int/lit8 v4, v7, -0x1

    .line 207
    .local v4, "l":I
    if-nez v4, :cond_3

    const-string v6, ""

    .line 209
    :goto_2
    move v5, v2

    .line 210
    const/4 v1, 0x0

    .line 211
    if-eqz v3, :cond_5

    .line 213
    invoke-virtual {p1, v3, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    :cond_2
    :goto_3
    const/4 v3, 0x0

    .line 220
    const/4 v6, 0x0

    .line 221
    if-lez p3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v7

    if-le v7, p3, :cond_1

    .line 223
    sget-object v7, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "maxFormKeys limit exceeded keys>{}"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    monitor-exit p1

    .line 260
    .end local v0    # "c":C
    .end local v4    # "l":I
    :goto_4
    return-void

    .line 207
    .restart local v0    # "c":C
    .restart local v4    # "l":I
    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v7, v5, 0x1

    invoke-static {p0, v7, v4, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 215
    :cond_5
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 217
    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 259
    .end local v0    # "c":C
    .end local v4    # "l":I
    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 228
    .restart local v0    # "c":C
    :sswitch_1
    if-nez v3, :cond_1

    .line 230
    if-eqz v1, :cond_6

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v2, v5

    add-int/lit8 v8, v8, -0x1

    :try_start_1
    invoke-static {p0, v7, v8, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    :goto_5
    move v5, v2

    .line 232
    const/4 v1, 0x0

    .line 233
    goto :goto_1

    .line 230
    :cond_6
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 235
    :sswitch_2
    const/4 v1, 0x1

    .line 236
    goto :goto_1

    .line 238
    :sswitch_3
    const/4 v1, 0x1

    goto :goto_1

    .line 243
    .end local v0    # "c":C
    :cond_7
    if-eqz v3, :cond_b

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    add-int/lit8 v4, v7, -0x1

    .line 246
    .restart local v4    # "l":I
    if-nez v4, :cond_9

    const-string v6, ""

    .line 247
    :goto_6
    invoke-virtual {p1, v3, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .end local v4    # "l":I
    :cond_8
    :goto_7
    monitor-exit p1

    goto :goto_4

    .line 246
    .restart local v4    # "l":I
    :cond_9
    if-eqz v1, :cond_a

    add-int/lit8 v7, v5, 0x1

    invoke-static {p0, v7, v4, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_a
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 249
    .end local v4    # "l":I
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 251
    if-eqz v1, :cond_c

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v7, v8, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    :goto_8
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 256
    const-string v7, ""

    invoke-virtual {p1, v3, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 251
    :cond_c
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_8

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUtf16To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "maxLength"    # I
    .param p3, "maxKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-16"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 541
    .local v1, "input":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/StringWriter;

    const/16 v2, 0x2000

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 542
    .local v0, "buf":Ljava/io/StringWriter;
    int-to-long v2, p2

    invoke-static {v1, v0, v2, v3}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V

    .line 544
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {v2, p1, v3, p3}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 545
    return-void
.end method

.method public static decodeUtf8To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 14
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "maxLength"    # I
    .param p3, "maxKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    monitor-enter p1

    .line 455
    :try_start_0
    new-instance v2, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-direct {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>()V

    .line 456
    .local v2, "buffer":Lorg/eclipse/jetty/util/Utf8StringBuilder;
    const/4 v6, 0x0

    .line 457
    .local v6, "key":Ljava/lang/String;
    const/4 v8, 0x0

    .line 462
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 463
    .local v7, "totalLength":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "b":I
    if-ltz v1, :cond_6

    .line 467
    int-to-char v9, v1

    sparse-switch v9, :sswitch_data_0

    .line 511
    int-to-byte v9, v1

    :try_start_1
    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_1
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :cond_1
    :goto_0
    if-ltz p2, :cond_0

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p2

    if-le v7, v0, :cond_0

    .line 521
    :try_start_2
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Form too large"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 534
    .end local v1    # "b":I
    .end local v2    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuilder;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "totalLength":I
    .end local v8    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 470
    .restart local v1    # "b":I
    .restart local v2    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuilder;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "totalLength":I
    .restart local v8    # "value":Ljava/lang/String;
    :sswitch_0
    :try_start_3
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_3

    const-string v8, ""

    .line 471
    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 472
    if-eqz v6, :cond_4

    .line 474
    invoke-virtual {p1, v6, v8}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    :cond_2
    :goto_2
    const/4 v6, 0x0

    .line 481
    const/4 v8, 0x0

    .line 482
    if-lez p3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v9

    move/from16 v0, p3

    if-le v9, v0, :cond_1

    .line 484
    sget-object v9, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "maxFormKeys limit exceeded keys>{}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 485
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 535
    :goto_3
    return-void

    .line 470
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 476
    :cond_4
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 478
    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 515
    :catch_0
    move-exception v5

    .line 517
    .local v5, "e":Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    :try_start_6
    sget-object v9, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    sget-object v9, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 490
    .end local v5    # "e":Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    :sswitch_1
    if-eqz v6, :cond_5

    .line 492
    int-to-byte v9, v1

    :try_start_7
    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_0

    .line 495
    :cond_5
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 496
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    goto :goto_0

    .line 500
    :sswitch_2
    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_0

    .line 504
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 505
    .local v3, "dh":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 506
    .local v4, "dl":I
    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    .line 508
    int-to-byte v9, v3

    invoke-static {v9}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    int-to-byte v10, v4

    invoke-static {v10}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v10

    add-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_7
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 524
    .end local v3    # "dh":I
    .end local v4    # "dl":I
    :cond_6
    if-eqz v6, :cond_9

    .line 526
    :try_start_8
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_8

    const-string v8, ""

    .line 527
    :goto_4
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 528
    invoke-virtual {p1, v6, v8}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    :cond_7
    :goto_5
    monitor-exit p1

    goto :goto_3

    .line 526
    :cond_8
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 530
    :cond_9
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 532
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 467
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;)V
    .locals 1
    .param p0, "raw"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "map"    # Lorg/eclipse/jetty/util/MultiMap;

    .prologue
    .line 271
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V

    .line 272
    return-void
.end method

.method public static decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V
    .locals 9
    .param p0, "raw"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p4, "buffer"    # Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .prologue
    .line 284
    monitor-enter p3

    .line 286
    const/4 v4, 0x0

    .line 287
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .line 290
    .local v5, "value":Ljava/lang/String;
    add-int v2, p1, p2

    .line 291
    .local v2, "end":I
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 293
    :try_start_0
    aget-byte v0, p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .local v0, "b":B
    and-int/lit16 v6, v0, 0xff

    int-to-char v6, v6

    sparse-switch v6, :sswitch_data_0

    .line 333
    :try_start_1
    invoke-virtual {p4, v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    .line 291
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    :sswitch_0
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_2

    const-string v5, ""

    .line 300
    :goto_2
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 301
    if-eqz v4, :cond_3

    .line 303
    invoke-virtual {p3, v4, v5}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    :cond_1
    :goto_3
    const/4 v4, 0x0

    .line 310
    const/4 v5, 0x0

    .line 311
    goto :goto_1

    .line 299
    :cond_2
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 305
    :cond_3
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 307
    const-string v6, ""

    invoke-virtual {p3, v5, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 337
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    :try_start_2
    sget-object v6, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    sget-object v6, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 354
    .end local v0    # "b":B
    .end local v1    # "e":Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    :catchall_0
    move-exception v6

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 314
    .restart local v0    # "b":B
    :sswitch_1
    if-eqz v4, :cond_4

    .line 316
    :try_start_3
    invoke-virtual {p4, v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_1

    .line 319
    :cond_4
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    goto :goto_1

    .line 324
    :sswitch_2
    const/16 v6, 0x20

    invoke-virtual {p4, v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_1

    .line 328
    :sswitch_3
    add-int/lit8 v6, v3, 0x2

    if-ge v6, v2, :cond_0

    .line 329
    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v7, p0, v3

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    invoke-virtual {p4, v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_3
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 344
    .end local v0    # "b":B
    :cond_5
    if-eqz v4, :cond_8

    .line 346
    :try_start_4
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_7

    const-string v5, ""

    .line 347
    :goto_4
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 348
    invoke-virtual {p3, v4, v5}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    :cond_6
    :goto_5
    monitor-exit p3

    .line 355
    return-void

    .line 346
    :cond_7
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 350
    :cond_8
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 352
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p3, v6, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static encode(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p0, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "equalsForNullValue"    # Z

    .prologue
    const/16 v11, 0x26

    const/16 v10, 0x3d

    .line 124
    if-nez p1, :cond_0

    .line 125
    sget-object p1, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 127
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    .local v5, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 130
    .local v2, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 136
    .local v4, "list":Ljava/lang/Object;
    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v6

    .line 138
    .local v6, "s":I
    if-nez v6, :cond_3

    .line 140
    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    if-eqz p2, :cond_2

    .line 142
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 169
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 148
    if-lez v1, :cond_4

    .line 149
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    :cond_4
    invoke-static {v4, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 151
    .local v8, "val":Ljava/lang/Object;
    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    if-eqz v8, :cond_7

    .line 155
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 158
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v7, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .end local v7    # "str":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    .restart local v7    # "str":Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_5

    .line 162
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 164
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    if-eqz p2, :cond_5

    .line 165
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 171
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "list":Ljava/lang/Object;
    .end local v6    # "s":I
    .end local v8    # "val":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 838
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x0

    .line 848
    if-nez p1, :cond_0

    .line 849
    sget-object p1, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 850
    :cond_0
    const/4 v1, 0x0

    .line 853
    .local v1, "bytes":[B
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 861
    :goto_0
    array-length v5, v1

    .line 862
    .local v5, "len":I
    array-length v10, v1

    mul-int/lit8 v10, v10, 0x3

    new-array v3, v10, [B

    .line 863
    .local v3, "encoded":[B
    const/4 v6, 0x0

    .line 864
    .local v6, "n":I
    const/4 v9, 0x1

    .line 866
    .local v9, "noEncode":Z
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "n":I
    .local v7, "n":I
    :goto_1
    if-ge v4, v5, :cond_8

    .line 868
    aget-byte v0, v1, v4

    .line 870
    .local v0, "b":B
    const/16 v10, 0x20

    if-ne v0, v10, :cond_1

    .line 872
    const/4 v9, 0x0

    .line 873
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    const/16 v10, 0x2b

    aput-byte v10, v3, v7

    .line 866
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "n":I
    .restart local v7    # "n":I
    goto :goto_1

    .line 855
    .end local v0    # "b":B
    .end local v3    # "encoded":[B
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v7    # "n":I
    .end local v9    # "noEncode":Z
    :catch_0
    move-exception v2

    .line 858
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 875
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "b":B
    .restart local v3    # "encoded":[B
    .restart local v4    # "i":I
    .restart local v5    # "len":I
    .restart local v7    # "n":I
    .restart local v9    # "noEncode":Z
    :cond_1
    const/16 v10, 0x61

    if-lt v0, v10, :cond_2

    const/16 v10, 0x7a

    if-le v0, v10, :cond_4

    :cond_2
    const/16 v10, 0x41

    if-lt v0, v10, :cond_3

    const/16 v10, 0x5a

    if-le v0, v10, :cond_4

    :cond_3
    const/16 v10, 0x30

    if-lt v0, v10, :cond_5

    const/16 v10, 0x39

    if-gt v0, v10, :cond_5

    .line 879
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    aput-byte v0, v3, v7

    goto :goto_2

    .line 883
    .end local v6    # "n":I
    .restart local v7    # "n":I
    :cond_5
    const/4 v9, 0x0

    .line 884
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    const/16 v10, 0x25

    aput-byte v10, v3, v7

    .line 885
    and-int/lit16 v10, v0, 0xf0

    shr-int/lit8 v10, v10, 0x4

    int-to-byte v8, v10

    .line 886
    .local v8, "nibble":B
    if-lt v8, v12, :cond_6

    .line 887
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "n":I
    .restart local v7    # "n":I
    add-int/lit8 v10, v8, 0x41

    add-int/lit8 v10, v10, -0xa

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    .line 890
    :goto_3
    and-int/lit8 v10, v0, 0xf

    int-to-byte v8, v10

    .line 891
    if-lt v8, v12, :cond_7

    .line 892
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    add-int/lit8 v10, v8, 0x41

    add-int/lit8 v10, v10, -0xa

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    goto :goto_2

    .line 889
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "n":I
    .restart local v7    # "n":I
    add-int/lit8 v10, v8, 0x30

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    goto :goto_3

    .line 894
    :cond_7
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    add-int/lit8 v10, v8, 0x30

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    goto :goto_2

    .line 898
    .end local v0    # "b":B
    .end local v6    # "n":I
    .end local v8    # "nibble":B
    .restart local v7    # "n":I
    :cond_8
    if-eqz v9, :cond_9

    .line 908
    .end local p0    # "string":Ljava/lang/String;
    :goto_4
    return-object p0

    .line 903
    .restart local p0    # "string":Ljava/lang/String;
    :cond_9
    :try_start_1
    new-instance p0, Ljava/lang/String;

    .end local p0    # "string":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-direct {p0, v3, v10, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 905
    :catch_1
    move-exception v2

    .line 908
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v11, v7}, Ljava/lang/String;-><init>([BII)V

    goto :goto_4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 919
    new-instance v0, Lorg/eclipse/jetty/util/UrlEncoded;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/UrlEncoded;-><init>(Lorg/eclipse/jetty/util/UrlEncoded;)V

    return-object v0
.end method

.method public decode(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {p1, p0, v0, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, -0x1

    invoke-static {p1, p0, p2, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "equalsForNullValue"    # Z

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
