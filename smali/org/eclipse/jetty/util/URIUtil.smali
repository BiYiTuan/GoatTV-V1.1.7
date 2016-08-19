.class public Lorg/eclipse/jetty/util/URIUtil;
.super Ljava/lang/Object;
.source "URIUtil.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTPS_COLON:Ljava/lang/String; = "https:"

.field public static final HTTP_COLON:Ljava/lang/String; = "http:"

.field public static final SLASH:Ljava/lang/String; = "/"

.field public static final __CHARSET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "org.eclipse.jetty.util.URI.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "p1"    # Ljava/lang/String;
    .param p1, "p2"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2f

    .line 313
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 315
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    .line 354
    .end local p0    # "p1":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "p1":Ljava/lang/String;
    :cond_2
    move-object p0, p1

    .line 317
    goto :goto_0

    .line 319
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 323
    .local v1, "split":I
    if-gez v1, :cond_4

    .line 324
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 325
    :cond_4
    if-nez v1, :cond_5

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 327
    :cond_5
    if-gez v1, :cond_6

    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 330
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 331
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_8

    .line 335
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 337
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 341
    :cond_7
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :cond_8
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 346
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 349
    :cond_9
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 350
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/16 v10, 0x2f

    const/16 v9, 0x2e

    .line 394
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 517
    .end local p0    # "path":Ljava/lang/String;
    .local v0, "buf":Ljava/lang/StringBuilder;
    .local v1, "delEnd":I
    .local v2, "delStart":I
    .local v3, "end":I
    .local v4, "skip":I
    .local v6, "start":I
    :cond_0
    :goto_0
    return-object p0

    .line 397
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "delEnd":I
    .end local v2    # "delStart":I
    .end local v3    # "end":I
    .end local v4    # "skip":I
    .end local v6    # "start":I
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 398
    .restart local v3    # "end":I
    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 401
    .local v5, "start":I
    :goto_1
    if-lez v3, :cond_3

    .line 403
    sub-int v8, v3, v5

    packed-switch v8, :pswitch_data_0

    .line 415
    :cond_2
    :goto_2
    move v3, v5

    .line 416
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    goto :goto_1

    .line 406
    :pswitch_0
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    .line 420
    :cond_3
    if-ge v5, v3, :cond_0

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 425
    .restart local v2    # "delStart":I
    const/4 v1, -0x1

    .line 426
    .restart local v1    # "delEnd":I
    const/4 v4, 0x0

    .restart local v4    # "skip":I
    move v6, v5

    .line 428
    .end local v5    # "start":I
    .restart local v6    # "start":I
    :goto_3
    if-lez v3, :cond_12

    .line 430
    sub-int v8, v3, v6

    packed-switch v8, :pswitch_data_1

    .line 487
    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 489
    if-ltz v6, :cond_11

    move v2, v6

    .line 490
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 491
    add-int/lit8 v2, v2, 0x1

    .line 496
    :cond_4
    :goto_5
    if-gtz v4, :cond_5

    if-ltz v2, :cond_5

    if-lt v1, v2, :cond_5

    .line 498
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 499
    const/4 v1, -0x1

    move v2, v1

    .line 500
    if-lez v4, :cond_5

    .line 501
    move v1, v3

    .line 504
    :cond_5
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "start":I
    .restart local v5    # "start":I
    move v3, v6

    .line 505
    :goto_6
    if-ltz v5, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_15

    .line 506
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 410
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "delEnd":I
    .end local v2    # "delStart":I
    .end local v4    # "skip":I
    :pswitch_1
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_3

    goto :goto_2

    .line 433
    .end local v5    # "start":I
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "delEnd":I
    .restart local v2    # "delStart":I
    .restart local v4    # "skip":I
    .restart local v6    # "start":I
    :pswitch_2
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_7

    .line 435
    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 437
    if-ltz v6, :cond_6

    move v2, v6

    .line 438
    :goto_7
    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v2, v7

    .line 437
    goto :goto_7

    .line 444
    :cond_7
    if-gez v6, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v11, :cond_8

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_4

    .line 447
    :cond_8
    if-gez v1, :cond_9

    .line 448
    move v1, v3

    .line 449
    :cond_9
    move v2, v6

    .line 450
    if-ltz v2, :cond_a

    if-nez v2, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_b

    .line 452
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_4

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 457
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ne v3, v8, :cond_c

    .line 458
    add-int/lit8 v2, v2, 0x1

    .line 460
    :cond_c
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "start":I
    .restart local v5    # "start":I
    move v3, v6

    .line 461
    :goto_8
    if-ltz v5, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_15

    .line 462
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 466
    .end local v5    # "start":I
    .restart local v6    # "start":I
    :pswitch_3
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_d

    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_f

    .line 468
    :cond_d
    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 469
    if-ltz v6, :cond_e

    move v2, v6

    .line 470
    :goto_9
    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_e
    move v2, v7

    .line 469
    goto :goto_9

    .line 476
    :cond_f
    move v2, v6

    .line 477
    if-gez v1, :cond_10

    .line 478
    move v1, v3

    .line 480
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 481
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "start":I
    .restart local v5    # "start":I
    move v3, v6

    .line 482
    :goto_a
    if-ltz v5, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_15

    .line 483
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .end local v5    # "start":I
    .restart local v6    # "start":I
    :cond_11
    move v2, v7

    .line 489
    goto/16 :goto_4

    .line 510
    :cond_12
    if-lez v4, :cond_13

    .line 511
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 514
    :cond_13
    if-ltz v1, :cond_14

    .line 515
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 517
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .end local v6    # "start":I
    .restart local v5    # "start":I
    :cond_15
    move v6, v5

    .end local v5    # "start":I
    .restart local v6    # "start":I
    goto/16 :goto_3

    .line 403
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 430
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static compactPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 528
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 580
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    :sswitch_0
    return-object p0

    .line 531
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 532
    .local v4, "state":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 533
    .local v2, "end":I
    const/4 v3, 0x0

    .line 536
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 538
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 539
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 549
    const/4 v4, 0x0

    .line 551
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 552
    goto :goto_1

    .line 544
    :sswitch_1
    add-int/lit8 v4, v4, 0x1

    .line 545
    if-ne v4, v7, :cond_2

    .line 554
    .end local v1    # "c":C
    :cond_3
    if-lt v4, v7, :cond_0

    .line 557
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 558
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    invoke-virtual {v0, p0, v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move v5, v4

    .line 561
    .end local v4    # "state":I
    .local v5, "state":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 563
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 564
    .restart local v1    # "c":C
    sparse-switch v1, :sswitch_data_1

    .line 574
    const/4 v4, 0x0

    .line 575
    .end local v5    # "state":I
    .restart local v4    # "state":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 577
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .line 578
    .end local v4    # "state":I
    .restart local v5    # "state":I
    goto :goto_2

    .line 567
    :sswitch_2
    invoke-virtual {v0, p0, v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 580
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 570
    .restart local v1    # "c":C
    :sswitch_3
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "state":I
    .restart local v4    # "state":I
    if-nez v5, :cond_4

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 539
    :sswitch_data_0
    .sparse-switch
        0x2f -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 564
    :sswitch_data_1
    .sparse-switch
        0x2f -> :sswitch_3
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method public static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x0

    .line 191
    if-nez p0, :cond_1

    .line 192
    const/4 p0, 0x0

    .line 259
    .end local p0    # "path":Ljava/lang/String;
    .local v1, "b":I
    .local v2, "bytes":[B
    .local v4, "chars":[C
    .local v6, "i":I
    .local v7, "len":I
    .local v8, "n":I
    :cond_0
    :goto_0
    return-object p0

    .line 193
    .end local v1    # "b":I
    .end local v2    # "bytes":[B
    .end local v4    # "chars":[C
    .end local v6    # "i":I
    .end local v7    # "len":I
    .end local v8    # "n":I
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 194
    .restart local v4    # "chars":[C
    const/4 v8, 0x0

    .line 195
    .restart local v8    # "n":I
    const/4 v2, 0x0

    .line 196
    .restart local v2    # "bytes":[B
    const/4 v0, 0x0

    .line 198
    .local v0, "b":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 200
    .restart local v7    # "len":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v1, v0

    .end local v0    # "b":I
    .restart local v1    # "b":I
    :goto_1
    if-ge v6, v7, :cond_5

    .line 202
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 204
    .local v3, "c":C
    const/16 v11, 0x25

    if-ne v3, v11, :cond_3

    add-int/lit8 v11, v6, 0x2

    if-ge v11, v7, :cond_3

    .line 206
    if-nez v4, :cond_2

    .line 208
    new-array v4, v7, [C

    .line 209
    new-array v2, v7, [B

    .line 210
    invoke-virtual {p0, v14, v6, v4, v14}, Ljava/lang/String;->getChars(II[CI)V

    .line 212
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    add-int/lit8 v11, v6, 0x1

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-static {p0, v11, v12, v13}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    .line 213
    add-int/lit8 v6, v6, 0x2

    .line 200
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v1, v0

    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_1

    .line 216
    :cond_3
    if-nez v2, :cond_4

    .line 218
    add-int/lit8 v8, v8, 0x1

    move v0, v1

    .line 219
    .end local v1    # "b":I
    .restart local v0    # "b":I
    goto :goto_2

    .line 222
    .end local v0    # "b":I
    .restart local v1    # "b":I
    :cond_4
    if-lez v1, :cond_7

    .line 227
    :try_start_0
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v10, v2, v11, v1, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .local v10, "s":Ljava/lang/String;
    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v14, v11, v4, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 234
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    .line 235
    const/4 v0, 0x0

    .line 238
    .end local v1    # "b":I
    .end local v10    # "s":Ljava/lang/String;
    .restart local v0    # "b":I
    :goto_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "n":I
    .local v9, "n":I
    aput-char v3, v4, v8

    move v8, v9

    .end local v9    # "n":I
    .restart local v8    # "n":I
    goto :goto_2

    .line 229
    .end local v0    # "b":I
    .restart local v1    # "b":I
    :catch_0
    move-exception v5

    .line 231
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v10    # "s":Ljava/lang/String;
    goto :goto_3

    .line 241
    .end local v3    # "c":C
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_0

    .line 244
    if-lez v1, :cond_6

    .line 249
    :try_start_1
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v10, v2, v11, v1, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    .restart local v10    # "s":Ljava/lang/String;
    :goto_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v14, v11, v4, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 256
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    .line 259
    .end local v10    # "s":Ljava/lang/String;
    :cond_6
    new-instance p0, Ljava/lang/String;

    .end local p0    # "path":Ljava/lang/String;
    invoke-direct {p0, v4, v14, v8}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 251
    .restart local p0    # "path":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 253
    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v10    # "s":Ljava/lang/String;
    goto :goto_5

    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "s":Ljava/lang/String;
    .restart local v3    # "c":C
    :cond_7
    move v0, v1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    goto :goto_4
.end method

.method public static decodePath([BII)Ljava/lang/String;
    .locals 9
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "bytes":[B
    const/4 v4, 0x0

    .line 272
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v5, v4

    .end local v4    # "n":I
    .local v5, "n":I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 274
    add-int v6, v2, p1

    aget-byte v0, p0, v6

    .line 276
    .local v0, "b":B
    const/16 v6, 0x25

    if-ne v0, v6, :cond_1

    add-int/lit8 v6, v2, 0x2

    if-ge v6, p2, :cond_1

    .line 278
    add-int v6, v2, p1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x10

    invoke-static {p0, v6, v7, v8}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v0, v6

    .line 279
    add-int/lit8 v2, v2, 0x2

    .line 287
    :cond_0
    if-nez v1, :cond_2

    .line 289
    new-array v1, p2, [B

    .line 290
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 291
    add-int v6, v3, p1

    aget-byte v6, p0, v6

    aput-byte v6, v1, v3

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 281
    .end local v3    # "j":I
    :cond_1
    if-nez v1, :cond_0

    .line 283
    add-int/lit8 v4, v5, 0x1

    .line 272
    .end local v5    # "n":I
    .restart local v4    # "n":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "n":I
    .restart local v5    # "n":I
    goto :goto_0

    .line 294
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "n":I
    .restart local v4    # "n":I
    aput-byte v0, v1, v5

    goto :goto_2

    .line 297
    .end local v0    # "b":B
    .end local v4    # "n":I
    .restart local v5    # "n":I
    :cond_3
    if-nez v1, :cond_4

    .line 298
    sget-object v6, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {p0, p1, p2, v6}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 299
    :goto_3
    return-object v6

    :cond_4
    const/4 v6, 0x0

    sget-object v7, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v1, v6, v5, v7}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 59
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 58
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static encodePath(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 70
    if-nez p0, :cond_1

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 76
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :sswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    .end local v0    # "c":C
    .restart local p0    # "buf":Ljava/lang/StringBuilder;
    :cond_0
    if-nez p0, :cond_1

    .line 92
    const/4 p0, 0x0

    .line 136
    .end local p0    # "buf":Ljava/lang/StringBuilder;
    :goto_1
    return-object p0

    .line 95
    .end local v1    # "i":I
    .restart local p0    # "buf":Ljava/lang/StringBuilder;
    :cond_1
    monitor-enter p0

    .line 97
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 100
    .restart local v0    # "c":C
    sparse-switch v0, :sswitch_data_1

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 103
    :sswitch_1
    const-string v2, "%25"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 134
    .end local v0    # "c":C
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 106
    .restart local v0    # "c":C
    :sswitch_2
    :try_start_1
    const-string v2, "%3F"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 109
    :sswitch_3
    const-string v2, "%3B"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 112
    :sswitch_4
    const-string v2, "%23"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 115
    :sswitch_5
    const-string v2, "%22"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 118
    :sswitch_6
    const-string v2, "%27"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 121
    :sswitch_7
    const-string v2, "%3C"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 124
    :sswitch_8
    const-string v2, "%3E"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 127
    :sswitch_9
    const-string v2, "%20"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 134
    .end local v0    # "c":C
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 100
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_9
        0x22 -> :sswitch_5
        0x23 -> :sswitch_4
        0x25 -> :sswitch_1
        0x27 -> :sswitch_6
        0x3b -> :sswitch_3
        0x3c -> :sswitch_7
        0x3e -> :sswitch_8
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method public static encodeString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "encode"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x25

    .line 150
    if-nez p0, :cond_3

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 156
    .local v0, "c":C
    if-eq v0, v4, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 162
    .end local v0    # "c":C
    .restart local p0    # "buf":Ljava/lang/StringBuilder;
    :cond_1
    if-nez p0, :cond_3

    .line 163
    const/4 p0, 0x0

    .line 181
    .end local p0    # "buf":Ljava/lang/StringBuilder;
    :goto_1
    return-object p0

    .line 153
    .restart local v0    # "c":C
    .restart local p0    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_3
    monitor-enter p0

    .line 168
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    .restart local v0    # "c":C
    if-eq v0, v4, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    .line 173
    :cond_4
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x10

    invoke-static {p0, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->append(Ljava/lang/StringBuilder;BI)V

    .line 168
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 177
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 179
    .end local v0    # "c":C
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static hasScheme(Ljava/lang/String;)Z
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 590
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 592
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 593
    .local v0, "c":C
    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    .line 594
    const/4 v2, 0x1

    .line 604
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 595
    .restart local v0    # "c":C
    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7a

    if-le v0, v2, :cond_5

    :cond_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_5

    :cond_2
    if-lez v1, :cond_4

    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-le v0, v2, :cond_5

    :cond_3
    const/16 v2, 0x2e

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_5

    .line 604
    .end local v0    # "c":C
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 590
    .restart local v0    # "c":C
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "p"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 363
    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-object v1

    .line 365
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 366
    .local v0, "slash":I
    if-ltz v0, :cond_0

    .line 367
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static stripPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 377
    if-nez p0, :cond_1

    .line 378
    const/4 p0, 0x0

    .line 382
    .end local p0    # "path":Ljava/lang/String;
    .local v0, "semi":I
    :cond_0
    :goto_0
    return-object p0

    .line 379
    .end local v0    # "semi":I
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 380
    .restart local v0    # "semi":I
    if-ltz v0, :cond_0

    .line 382
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
