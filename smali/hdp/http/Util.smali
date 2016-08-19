.class public Lhdp/http/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final MAX_DECODE_PICTURE_SIZE:I = 0x2a3000

.field private static final TAG:Ljava/lang/String; = "SDK_Sample.Util"

.field private static hexString:Ljava/lang/String;

.field private static mProgressDialog:Landroid/app/Dialog;

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lhdp/http/Util;->hexString:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lhdp/http/Util;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1(Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lhdp/http/Util;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "needRecycle"    # Z

    .prologue
    .line 134
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 142
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-object v2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 51
    :goto_0
    return-object v4

    .line 43
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 44
    :cond_2
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 45
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 47
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static charToByte(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 78
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 266
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 268
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 270
    .local v0, "h":D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 274
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 280
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 300
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 272
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 276
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    .line 278
    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    .line 276
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 288
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v11, :cond_4

    .line 290
    if-ne p1, v11, :cond_4

    move v2, v6

    .line 292
    goto :goto_2

    .line 294
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 300
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 237
    invoke-static {p0, p1, p2}, Lhdp/http/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 243
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 245
    const/4 v1, 0x1

    .line 247
    .local v1, "roundedSize":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 259
    :goto_1
    return v1

    .line 249
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "roundedSize":I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1    # "roundedSize":I
    goto :goto_1
.end method

.method public static final dismissDialog()V
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lhdp/http/Util;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lhdp/http/Util;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 429
    const/4 v0, 0x0

    sput-object v0, Lhdp/http/Util;->mProgressDialog:Landroid/app/Dialog;

    .line 431
    :cond_0
    return-void
.end method

.method public static extractThumbNail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "crop"    # Z

    .prologue
    .line 326
    if-eqz p0, :cond_3

    const-string v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    const/4 v14, 0x1

    :goto_0
    invoke-static {v14}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 328
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 331
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    :try_start_0
    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 332
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 333
    .local v13, "tmp":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_0

    .line 334
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 335
    const/4 v13, 0x0

    .line 338
    :cond_0
    const-string v14, "SDK_Sample.Util"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "extractThumbNail: round="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", crop="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 340
    .local v4, "beY":D
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 341
    .local v2, "beX":D
    const-string v14, "SDK_Sample.Util"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "extractThumbNail: extract beX = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", beY = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-eqz p3, :cond_5

    cmpl-double v14, v4, v2

    if-lez v14, :cond_4

    move-wide v14, v2

    :goto_1
    double-to-int v14, v14

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 343
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    .line 344
    const/4 v14, 0x1

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 348
    :cond_1
    :goto_2
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v14, v15

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v14, v15

    const v15, 0x2a3000

    if-gt v14, v15, :cond_7

    .line 352
    move/from16 v9, p1

    .line 353
    .local v9, "newHeight":I
    move/from16 v10, p2

    .line 354
    .local v10, "newWidth":I
    if-eqz p3, :cond_9

    .line 355
    cmpl-double v14, v4, v2

    if-lez v14, :cond_8

    .line 356
    int-to-double v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v9, v14

    .line 368
    :goto_3
    const/4 v14, 0x0

    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 370
    const-string v14, "SDK_Sample.Util"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bitmap required size="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", orig="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", sample="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 372
    .local v6, "bm":Landroid/graphics/Bitmap;
    if-nez v6, :cond_b

    .line 373
    const-string v14, "SDK_Sample.Util"

    const-string v15, "bitmap decode failed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v6, 0x0

    .line 402
    .end local v2    # "beX":D
    .end local v4    # "beY":D
    .end local v6    # "bm":Landroid/graphics/Bitmap;
    .end local v9    # "newHeight":I
    .end local v10    # "newWidth":I
    .end local v13    # "tmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_4
    return-object v6

    .line 326
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .restart local v2    # "beX":D
    .restart local v4    # "beY":D
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "tmp":Landroid/graphics/Bitmap;
    :cond_4
    move-wide v14, v4

    .line 342
    goto/16 :goto_1

    :cond_5
    cmpg-double v14, v4, v2

    if-gez v14, :cond_6

    move-wide v14, v2

    goto/16 :goto_1

    :cond_6
    move-wide v14, v4

    goto/16 :goto_1

    .line 349
    :cond_7
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 396
    .end local v2    # "beX":D
    .end local v4    # "beY":D
    .end local v13    # "tmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 397
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    const-string v14, "SDK_Sample.Util"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "decode bitmap failed: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v14, "error"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v11, 0x0

    .line 402
    const/4 v6, 0x0

    goto :goto_4

    .line 358
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "beX":D
    .restart local v4    # "beY":D
    .restart local v9    # "newHeight":I
    .restart local v10    # "newWidth":I
    .restart local v13    # "tmp":Landroid/graphics/Bitmap;
    :cond_8
    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    :try_start_1
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v10, v14

    .line 360
    goto/16 :goto_3

    .line 361
    :cond_9
    cmpg-double v14, v4, v2

    if-gez v14, :cond_a

    .line 362
    int-to-double v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v9, v14

    .line 363
    goto/16 :goto_3

    .line 364
    :cond_a
    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v10, v14

    goto/16 :goto_3

    .line 377
    .restart local v6    # "bm":Landroid/graphics/Bitmap;
    :cond_b
    const-string v14, "SDK_Sample.Util"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bitmap decoded size="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v14, 0x1

    invoke-static {v6, v10, v9, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 379
    .local v12, "scale":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_c

    .line 380
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    move-object v6, v12

    .line 384
    :cond_c
    if-eqz p3, :cond_2

    .line 385
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int v14, v14, p2

    shr-int/lit8 v14, v14, 0x1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int v15, v15, p1

    shr-int/lit8 v15, v15, 0x1

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v6, v14, v15, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 386
    .local v7, "cropped":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 390
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 391
    move-object v6, v7

    .line 392
    const-string v14, "SDK_Sample.Util"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bitmap croped size="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public static getHtmlByteArray(Ljava/lang/String;)[B
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v4, 0x0

    .line 152
    .local v4, "htmlUrl":Ljava/net/URL;
    const/4 v7, 0x0

    .line 154
    .local v7, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    .end local v4    # "htmlUrl":Ljava/net/URL;
    .local v5, "htmlUrl":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 156
    .local v1, "connection":Ljava/net/URLConnection;
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 157
    .local v6, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 158
    .local v8, "responseCode":I
    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 159
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    move-object v4, v5

    .line 166
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v5    # "htmlUrl":Ljava/net/URL;
    .end local v6    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v8    # "responseCode":I
    .restart local v4    # "htmlUrl":Ljava/net/URL;
    :goto_0
    invoke-static {v7}, Lhdp/http/Util;->inputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 168
    .local v2, "data":[B
    return-object v2

    .line 161
    .end local v2    # "data":[B
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/net/MalformedURLException;
    :goto_1
    const-string v9, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 164
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    const-string v9, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "htmlUrl":Ljava/net/URL;
    .restart local v5    # "htmlUrl":Ljava/net/URL;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5    # "htmlUrl":Ljava/net/URL;
    .restart local v4    # "htmlUrl":Ljava/net/URL;
    goto :goto_2

    .line 161
    .end local v4    # "htmlUrl":Ljava/net/URL;
    .restart local v5    # "htmlUrl":Ljava/net/URL;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5    # "htmlUrl":Ljava/net/URL;
    .restart local v4    # "htmlUrl":Ljava/net/URL;
    goto :goto_1

    .end local v4    # "htmlUrl":Ljava/net/URL;
    .restart local v1    # "connection":Ljava/net/URLConnection;
    .restart local v5    # "htmlUrl":Ljava/net/URL;
    .restart local v6    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v8    # "responseCode":I
    :cond_0
    move-object v4, v5

    .end local v5    # "htmlUrl":Ljava/net/URL;
    .restart local v4    # "htmlUrl":Ljava/net/URL;
    goto :goto_0
.end method

.method public static getbitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 485
    const-string v5, "SDK_Sample.Util"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getbitmap:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x0

    .line 489
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 491
    .local v4, "myFileUrl":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 490
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 492
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 493
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 494
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 495
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 496
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 498
    const-string v5, "SDK_Sample.Util"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "image download finished."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 504
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "myFileUrl":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 499
    :catch_0
    move-exception v2

    .line 500
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "SDK_Sample.Util"

    const-string v6, "getbitmap bmp fail---"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v5, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 70
    :cond_1
    return-object v0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 64
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 65
    .local v1, "hexChars":[C
    new-array v0, v3, [B

    .line 66
    .local v0, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 67
    mul-int/lit8 v4, v2, 0x2

    .line 68
    .local v4, "pos":I
    aget-char v5, v1, v4

    invoke-static {v5}, Lhdp/http/Util;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lhdp/http/Util;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static hexToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 105
    const-string v5, "0x"

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 110
    .local v0, "baKeyword":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_1

    .line 124
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local p0    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    move-object p0, v4

    .line 130
    .end local v4    # "s":Ljava/lang/String;
    .restart local p0    # "s":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 114
    :cond_1
    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x2

    :try_start_1
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 128
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static inputStreamToByte(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 173
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    .local v0, "bytestream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "ch":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 179
    .local v3, "imgdata":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 185
    .end local v0    # "bytestream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "ch":I
    .end local v3    # "imgdata":[B
    :goto_1
    return-object v3

    .line 176
    .restart local v0    # "bytestream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "ch":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v0    # "bytestream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "ch":I
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static readBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 310
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "test.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 311
    .local v3, "stream":Ljava/io/FileInputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 312
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v4, 0x8

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 313
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 314
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 315
    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 320
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readFromFile(Ljava/lang/String;II)[B
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 189
    if-nez p0, :cond_0

    .line 230
    :goto_0
    return-object v0

    .line 193
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    const-string v4, "SDK_Sample.Util"

    const-string v5, "readFromFile: file not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 200
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int p2, v4

    .line 203
    :cond_2
    const-string v4, "SDK_Sample.Util"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readFromFile : offset = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset + len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, p1, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-gez p1, :cond_3

    .line 206
    const-string v4, "SDK_Sample.Util"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readFromFile invalid offset:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_3
    if-gtz p2, :cond_4

    .line 210
    const-string v4, "SDK_Sample.Util"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readFromFile invalid len:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_4
    add-int v4, p1, p2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    if-le v4, v5, :cond_5

    .line 214
    const-string v4, "SDK_Sample.Util"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readFromFile invalid file len:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 218
    :cond_5
    const/4 v0, 0x0

    .line 220
    .local v0, "b":[B
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v3, "in":Ljava/io/RandomAccessFile;
    new-array v0, p2, [B

    .line 222
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 223
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 224
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 226
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SDK_Sample.Util"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readFromFile : errMsg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v4, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static final showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-static {}, Lhdp/http/Util;->dismissDialog()V

    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const-string p1, "\u8bf7\u7a0d\u5019"

    .line 420
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    const-string p2, "\u6b63\u5728\u52a0\u8f7d..."

    .line 423
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lhdp/http/Util;->mProgressDialog:Landroid/app/Dialog;

    .line 424
    return-void
.end method

.method public static final showResultDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 408
    :cond_0
    const-string v1, ","

    const-string v2, "\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "rmsg":Ljava/lang/String;
    const-string v1, "Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 411
    const-string v2, "\u77e5\u9053\u4e86"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 92
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 96
    :cond_0
    sget-object v3, Lhdp/http/Util;->hexString:Ljava/lang/String;

    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    sget-object v3, Lhdp/http/Util;->hexString:Ljava/lang/String;

    aget-byte v4, v0, v1

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v4, v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final toastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lhdp/http/Util;->toastMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public static final toastMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "logLevel"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v0, "w"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "sdkDemo"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    new-instance v0, Lhdp/http/Util$1;

    invoke-direct {v0, p0, p1}, Lhdp/http/Util$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 462
    return-void

    .line 445
    :cond_0
    const-string v0, "e"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    const-string v0, "sdkDemo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_1
    const-string v0, "sdkDemo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
