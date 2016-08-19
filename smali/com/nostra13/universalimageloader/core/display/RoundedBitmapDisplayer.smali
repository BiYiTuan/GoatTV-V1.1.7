.class public Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source "RoundedBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$1;
    }
.end annotation


# instance fields
.field private final roundPixels:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "roundPixels"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    .line 40
    return-void
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPixels"    # I
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "destRect"    # Landroid/graphics/Rect;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 156
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 157
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 162
    .local v1, "destRectF":Landroid/graphics/RectF;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 164
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    int-to-float v4, p1

    int-to-float v5, p1

    invoke-virtual {v0, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 167
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 168
    invoke-virtual {v0, p0, p2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 170
    return-object v2
.end method

.method public static roundCorners(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "roundPixels"    # I

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 62
    .local v10, "bw":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 63
    .local v9, "bh":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v19

    .line 64
    .local v19, "vw":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v18

    .line 65
    .local v18, "vh":I
    if-gtz v19, :cond_0

    move/from16 v19, v10

    .line 66
    :cond_0
    if-gtz v18, :cond_1

    move/from16 v18, v9

    .line 71
    :cond_1
    sget-object v2, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 95
    :pswitch_0
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v17, v2, v3

    .line 96
    .local v17, "vRation":F
    int-to-float v2, v10

    int-to-float v3, v9

    div-float v8, v2, v3

    .line 97
    .local v8, "bRation":F
    cmpl-float v2, v17, v8

    if-lez v2, :cond_3

    .line 98
    int-to-float v2, v10

    int-to-float v3, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v3, v3, v22

    div-float/2addr v2, v3

    float-to-int v6, v2

    .line 99
    .local v6, "width":I
    move/from16 v7, v18

    .line 104
    .local v7, "height":I
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .local v4, "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v8    # "bRation":F
    .end local v17    # "vRation":F
    .local v5, "destRect":Landroid/graphics/Rect;
    :goto_1
    move-object/from16 v2, p0

    move/from16 v3, p2

    .line 146
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 152
    .local v14, "roundBitmap":Landroid/graphics/Bitmap;
    :goto_2
    return-object v14

    .line 73
    .end local v4    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "destRect":Landroid/graphics/Rect;
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v14    # "roundBitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v17, v2, v3

    .line 74
    .restart local v17    # "vRation":F
    int-to-float v2, v10

    int-to-float v3, v9

    div-float v8, v2, v3

    .line 77
    .restart local v8    # "bRation":F
    cmpl-float v2, v17, v8

    if-lez v2, :cond_2

    .line 78
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 79
    .local v11, "destHeight":I
    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v3, v3, v22

    div-float/2addr v2, v3

    float-to-int v12, v2

    .line 84
    .local v12, "destWidth":I
    :goto_3
    sub-int v2, v19, v12

    div-int/lit8 v20, v2, 0x2

    .line 85
    .local v20, "x":I
    sub-int v2, v18, v11

    div-int/lit8 v21, v2, 0x2

    .line 86
    .local v21, "y":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 87
    .restart local v4    # "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    add-int v2, v20, v12

    add-int v3, v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    .restart local v5    # "destRect":Landroid/graphics/Rect;
    move/from16 v6, v19

    .line 89
    .restart local v6    # "width":I
    move/from16 v7, v18

    .line 90
    .restart local v7    # "height":I
    goto :goto_1

    .line 81
    .end local v4    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "destRect":Landroid/graphics/Rect;
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v11    # "destHeight":I
    .end local v12    # "destWidth":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_2
    move/from16 v0, v19

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 82
    .restart local v12    # "destWidth":I
    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v0, v12

    move/from16 v22, v0

    div-float v3, v3, v22

    div-float/2addr v2, v3

    float-to-int v11, v2

    .restart local v11    # "destHeight":I
    goto :goto_3

    .line 101
    .end local v11    # "destHeight":I
    .end local v12    # "destWidth":I
    :cond_3
    move/from16 v6, v19

    .line 102
    .restart local v6    # "width":I
    int-to-float v2, v9

    int-to-float v3, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v3, v3, v22

    div-float/2addr v2, v3

    float-to-int v7, v2

    .restart local v7    # "height":I
    goto :goto_0

    .line 108
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v8    # "bRation":F
    .end local v17    # "vRation":F
    :pswitch_2
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v17, v2, v3

    .line 109
    .restart local v17    # "vRation":F
    int-to-float v2, v10

    int-to-float v3, v9

    div-float v8, v2, v3

    .line 112
    .restart local v8    # "bRation":F
    cmpl-float v2, v17, v8

    if-lez v2, :cond_4

    .line 113
    move/from16 v16, v10

    .line 114
    .local v16, "srcWidth":I
    move/from16 v0, v18

    int-to-float v2, v0

    int-to-float v3, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v3, v3, v22

    mul-float/2addr v2, v3

    float-to-int v15, v2

    .line 115
    .local v15, "srcHeight":I
    const/16 v20, 0x0

    .line 116
    .restart local v20    # "x":I
    sub-int v2, v9, v15

    div-int/lit8 v21, v2, 0x2

    .line 123
    .restart local v21    # "y":I
    :goto_4
    move/from16 v6, v16

    .line 124
    .restart local v6    # "width":I
    move v7, v15

    .line 125
    .restart local v7    # "height":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v2, v20, v16

    add-int v3, v21, v15

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    .restart local v4    # "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    .restart local v5    # "destRect":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 118
    .end local v4    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "destRect":Landroid/graphics/Rect;
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v15    # "srcHeight":I
    .end local v16    # "srcWidth":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_4
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v3, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v3, v3, v22

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 119
    .restart local v16    # "srcWidth":I
    move v15, v9

    .line 120
    .restart local v15    # "srcHeight":I
    sub-int v2, v10, v16

    div-int/lit8 v20, v2, 0x2

    .line 121
    .restart local v20    # "x":I
    const/16 v21, 0x0

    .restart local v21    # "y":I
    goto :goto_4

    .line 129
    .end local v8    # "bRation":F
    .end local v15    # "srcHeight":I
    .end local v16    # "srcWidth":I
    .end local v17    # "vRation":F
    .end local v20    # "x":I
    .end local v21    # "y":I
    :pswitch_3
    move/from16 v6, v19

    .line 130
    .restart local v6    # "width":I
    move/from16 v7, v18

    .line 131
    .restart local v7    # "height":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 132
    .restart local v4    # "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    .restart local v5    # "destRect":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 136
    .end local v4    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "destRect":Landroid/graphics/Rect;
    .end local v6    # "width":I
    .end local v7    # "height":I
    :pswitch_4
    move/from16 v0, v19

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 137
    .restart local v6    # "width":I
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 138
    .restart local v7    # "height":I
    sub-int v2, v10, v6

    div-int/lit8 v20, v2, 0x2

    .line 139
    .restart local v20    # "x":I
    sub-int v2, v9, v7

    div-int/lit8 v21, v2, 0x2

    .line 140
    .restart local v21    # "y":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v2, v20, v6

    add-int v3, v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    .restart local v4    # "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v5    # "destRect":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 147
    .end local v20    # "x":I
    .end local v21    # "y":I
    :catch_0
    move-exception v13

    .line 148
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "Can\'t create bitmap with rounded corners. Not enough memory."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13, v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    move-object/from16 v14, p0

    .restart local v14    # "roundBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 44
    iget v1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    invoke-static {p1, p2, v1}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundCorners(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "roundedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    return-object v0
.end method
