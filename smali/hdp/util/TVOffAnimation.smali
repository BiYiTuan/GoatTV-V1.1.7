.class public Lhdp/util/TVOffAnimation;
.super Landroid/view/animation/Animation;
.source "TVOffAnimation.java"


# instance fields
.field private halfHeight:I

.field private halfWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const v6, 0x3c23d70a    # 0.01f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 31
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 32
    .local v0, "matrix":Landroid/graphics/Matrix;
    float-to-double v1, p1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 33
    const/high16 v1, 0x3f200000    # 0.625f

    mul-float/2addr v1, p1

    add-float/2addr v1, v5

    .line 34
    const v2, 0x3f4ccccd    # 0.8f

    div-float v2, p1, v2

    sub-float v2, v5, v2

    add-float/2addr v2, v6

    iget v3, p0, Lhdp/util/TVOffAnimation;->halfWidth:I

    int-to-float v3, v3

    iget v4, p0, Lhdp/util/TVOffAnimation;->halfHeight:I

    int-to-float v4, v4

    .line 33
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    const/high16 v1, 0x40f00000    # 7.5f

    sub-float v2, v5, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lhdp/util/TVOffAnimation;->halfWidth:I

    int-to-float v2, v2

    .line 37
    iget v3, p0, Lhdp/util/TVOffAnimation;->halfHeight:I

    int-to-float v3, v3

    .line 36
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 18
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 19
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lhdp/util/TVOffAnimation;->setDuration(J)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhdp/util/TVOffAnimation;->setFillAfter(Z)V

    .line 22
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lhdp/util/TVOffAnimation;->halfWidth:I

    .line 23
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lhdp/util/TVOffAnimation;->halfHeight:I

    .line 24
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lhdp/util/TVOffAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 26
    return-void
.end method
