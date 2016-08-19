.class Lhdp/util/ACache$Utils;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/util/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Utils"
.end annotation


# static fields
.field private static final mSeparator:C = ' '


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 802
    if-nez p0, :cond_0

    .line 803
    const/4 v1, 0x0

    .line 807
    :goto_0
    return-object v1

    .line 805
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 806
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 807
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method private static Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 814
    array-length v0, p0

    if-nez v0, :cond_0

    .line 815
    const/4 v0, 0x0

    .line 817
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$0(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    invoke-static {p0, p1}, Lhdp/util/ACache$Utils;->newStringWithDateInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 699
    invoke-static {p0}, Lhdp/util/ACache$Utils;->isDue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    invoke-static {p0}, Lhdp/util/ACache$Utils;->clearDateInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(I[B)[B
    .locals 1

    .prologue
    .line 730
    invoke-static {p0, p1}, Lhdp/util/ACache$Utils;->newByteArrayWithDateInfo(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4([B)Z
    .locals 1

    .prologue
    .line 709
    invoke-static {p0}, Lhdp/util/ACache$Utils;->isDue([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5([B)[B
    .locals 1

    .prologue
    .line 746
    invoke-static {p0}, Lhdp/util/ACache$Utils;->clearDateInfo([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Landroid/graphics/Bitmap;)[B
    .locals 1

    .prologue
    .line 801
    invoke-static {p0}, Lhdp/util/ACache$Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7([B)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 813
    invoke-static {p0}, Lhdp/util/ACache$Utils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 823
    invoke-static {p0}, Lhdp/util/ACache$Utils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 847
    invoke-static {p0}, Lhdp/util/ACache$Utils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 848
    if-nez p0, :cond_0

    .line 849
    const/4 v0, 0x0

    .line 851
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static clearDateInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strInfo"    # Ljava/lang/String;

    .prologue
    .line 739
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lhdp/util/ACache$Utils;->hasDateInfo([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 741
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 740
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 743
    :cond_0
    return-object p0
.end method

.method private static clearDateInfo([B)[B
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 747
    invoke-static {p0}, Lhdp/util/ACache$Utils;->hasDateInfo([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lhdp/util/ACache$Utils;->indexOf([BC)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 749
    array-length v1, p0

    .line 748
    invoke-static {p0, v0, v1}, Lhdp/util/ACache$Utils;->copyOfRange([BII)[B

    move-result-object p0

    .line 751
    .end local p0    # "data":[B
    :cond_0
    return-object p0
.end method

.method private static copyOfRange([BII)[B
    .locals 5
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 779
    sub-int v1, p2, p1

    .line 780
    .local v1, "newLength":I
    if-gez v1, :cond_0

    .line 781
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 782
    :cond_0
    new-array v0, v1, [B

    .line 783
    .local v0, "copy":[B
    const/4 v2, 0x0

    .line 784
    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 783
    invoke-static {p0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    return-object v0
.end method

.method private static createDateInfo(I)Ljava/lang/String;
    .locals 4
    .param p0, "second"    # I

    .prologue
    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "currentTime":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 793
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 824
    if-nez p0, :cond_0

    .line 825
    const/4 v0, 0x0

    .line 840
    :goto_0
    return-object v0

    .line 828
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 829
    .local v4, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 831
    .local v3, "h":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 834
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_1
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 836
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 837
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 839
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 832
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method private static getDateInfoFromDate([B)[Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 760
    invoke-static {p0}, Lhdp/util/ACache$Utils;->hasDateInfo([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xd

    invoke-static {p0, v4, v2}, Lhdp/util/ACache$Utils;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 762
    .local v1, "saveDate":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0xe

    .line 763
    const/16 v3, 0x20

    invoke-static {p0, v3}, Lhdp/util/ACache$Utils;->indexOf([BC)I

    move-result v3

    .line 762
    invoke-static {p0, v2, v3}, Lhdp/util/ACache$Utils;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 764
    .local v0, "deleteAfter":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 766
    .end local v0    # "deleteAfter":Ljava/lang/String;
    .end local v1    # "saveDate":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static hasDateInfo([B)Z
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 755
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/16 v0, 0xd

    aget-byte v0, p0, v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 756
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lhdp/util/ACache$Utils;->indexOf([BC)I

    move-result v0

    const/16 v1, 0xe

    .line 755
    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static indexOf([BC)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "c"    # C

    .prologue
    .line 770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 775
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 771
    .restart local v0    # "i":I
    :cond_1
    aget-byte v1, p0, v0

    if-eq v1, p1, :cond_0

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isDue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 700
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lhdp/util/ACache$Utils;->isDue([B)Z

    move-result v0

    return v0
.end method

.method private static isDue([B)Z
    .locals 12
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 710
    invoke-static {p0}, Lhdp/util/ACache$Utils;->getDateInfoFromDate([B)[Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, "strs":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 712
    aget-object v4, v5, v7

    .line 713
    .local v4, "saveTimeStr":Ljava/lang/String;
    :goto_0
    const-string v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 717
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 718
    .local v2, "saveTime":J
    aget-object v8, v5, v6

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 719
    .local v0, "deleteAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    add-long/2addr v10, v2

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 723
    .end local v0    # "deleteAfter":J
    .end local v2    # "saveTime":J
    .end local v4    # "saveTimeStr":Ljava/lang/String;
    :goto_1
    return v6

    .line 715
    .restart local v4    # "saveTimeStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 714
    goto :goto_0

    .end local v4    # "saveTimeStr":Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 723
    goto :goto_1
.end method

.method private static newByteArrayWithDateInfo(I[B)[B
    .locals 5
    .param p0, "second"    # I
    .param p1, "data2"    # [B

    .prologue
    const/4 v4, 0x0

    .line 731
    invoke-static {p0}, Lhdp/util/ACache$Utils;->createDateInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 732
    .local v0, "data1":[B
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 733
    .local v1, "retdata":[B
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 734
    array-length v2, v0

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    return-object v1
.end method

.method private static newStringWithDateInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "second"    # I
    .param p1, "strInfo"    # Ljava/lang/String;

    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lhdp/util/ACache$Utils;->createDateInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
