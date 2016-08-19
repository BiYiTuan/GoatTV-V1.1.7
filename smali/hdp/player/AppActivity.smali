.class public Lhdp/player/AppActivity;
.super Landroid/app/Activity;
.source "AppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/player/AppActivity$DowningItem;
    }
.end annotation


# static fields
.field public static localAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhdp/adapter/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Btn_Del:Landroid/widget/Button;

.field private Btn_Start:Landroid/widget/Button;

.field private Btn_Update:Landroid/widget/Button;

.field private final DOWNLOADING:I

.field private final DOWNLOAD_COMPLETED:I

.field private final DOWNLOAD_ERROR:I

.field private final DOWNLOAD_QUIT:I

.field private Exit:Z

.field private final JSONERROR:I

.field private final JSONOVER:I

.field private Jsonpath:Ljava/lang/String;

.field private adapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhdp/adapter/AppAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private app_info:Lhdp/javabean/AppInfo;

.field private app_textView:Landroid/widget/TextView;

.field private down_update:Lhdp/player/AppActivity$DowningItem;

.field private gridViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private layout_root:Landroid/widget/LinearLayout;

.field private layout_up:Landroid/view/View;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private num:D

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private savefolder:Ljava/lang/String;

.field private window:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/AppActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 63
    sget-object v0, Lhdp/http/MyApp;->appMarketInfo:Ljava/lang/String;

    iput-object v0, p0, Lhdp/player/AppActivity;->Jsonpath:Ljava/lang/String;

    .line 66
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lhdp/player/AppActivity;->num:D

    .line 74
    iput-boolean v2, p0, Lhdp/player/AppActivity;->Exit:Z

    .line 269
    iput v2, p0, Lhdp/player/AppActivity;->JSONOVER:I

    .line 270
    const/4 v0, 0x1

    iput v0, p0, Lhdp/player/AppActivity;->JSONERROR:I

    .line 271
    const/4 v0, 0x5

    iput v0, p0, Lhdp/player/AppActivity;->DOWNLOAD_COMPLETED:I

    .line 272
    const/4 v0, 0x6

    iput v0, p0, Lhdp/player/AppActivity;->DOWNLOADING:I

    .line 273
    const/4 v0, 0x7

    iput v0, p0, Lhdp/player/AppActivity;->DOWNLOAD_ERROR:I

    .line 274
    const/16 v0, 0x8

    iput v0, p0, Lhdp/player/AppActivity;->DOWNLOAD_QUIT:I

    .line 276
    new-instance v0, Lhdp/player/AppActivity$1;

    invoke-direct {v0, p0}, Lhdp/player/AppActivity$1;-><init>(Lhdp/player/AppActivity;)V

    iput-object v0, p0, Lhdp/player/AppActivity;->handler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method private CompareVer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "local"    # Ljava/lang/String;
    .param p2, "net"    # Ljava/lang/String;

    .prologue
    .line 411
    const/4 v8, 0x0

    .line 412
    .local v8, "res":Z
    const-string v9, "\\."

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "ls":[Ljava/lang/String;
    const-string v9, "\\."

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, "ns":[Ljava/lang/String;
    array-length v7, v6

    .line 415
    .local v7, "ns_le":I
    array-length v4, v3

    .line 416
    .local v4, "ls_le":I
    if-le v7, v4, :cond_0

    move v0, v4

    .line 417
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 429
    :goto_2
    return v8

    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    move v0, v7

    .line 416
    goto :goto_0

    .line 418
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    aget-object v9, v3, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 419
    .local v2, "l":I
    aget-object v9, v6, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 420
    .local v5, "n":I
    if-ge v2, v5, :cond_2

    .line 421
    const/4 v8, 0x1

    .line 422
    goto :goto_2

    .line 423
    :cond_2
    if-le v2, v5, :cond_3

    .line 424
    const/4 v8, 0x0

    .line 425
    goto :goto_2

    .line 417
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private DownLoadApp(Lhdp/player/AppActivity$DowningItem;)V
    .locals 4
    .param p1, "downing"    # Lhdp/player/AppActivity$DowningItem;

    .prologue
    .line 462
    iget-object v0, p0, Lhdp/player/AppActivity;->map:Ljava/util/Map;

    # getter for: Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;
    invoke-static {p1}, Lhdp/player/AppActivity$DowningItem;->access$0(Lhdp/player/AppActivity$DowningItem;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "begin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    # getter for: Lhdp/player/AppActivity$DowningItem;->tv:Landroid/widget/TextView;
    invoke-static {p1}, Lhdp/player/AppActivity$DowningItem;->access$1(Lhdp/player/AppActivity$DowningItem;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhdp/player/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    new-instance v0, Lhdp/player/AppActivity$5;

    invoke-direct {v0, p0, p1}, Lhdp/player/AppActivity$5;-><init>(Lhdp/player/AppActivity;Lhdp/player/AppActivity$DowningItem;)V

    .line 528
    invoke-virtual {v0}, Lhdp/player/AppActivity$5;->start()V

    .line 530
    return-void
.end method

.method private InitApp(Lhdp/javabean/AppInfo;)V
    .locals 19
    .param p1, "appInfo"    # Lhdp/javabean/AppInfo;

    .prologue
    .line 166
    move-object/from16 v0, p1

    iget-object v13, v0, Lhdp/javabean/AppInfo;->apps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 167
    .local v5, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v5, :cond_0

    .line 267
    return-void

    .line 168
    :cond_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lhdp/javabean/AppInfo;->apps:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhdp/javabean/AppInfo$AppItem;

    .line 169
    .local v3, "appItem":Lhdp/javabean/AppInfo$AppItem;
    iget-object v4, v3, Lhdp/javabean/AppInfo$AppItem;->itemapps:Ljava/util/ArrayList;

    .line 170
    .local v4, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/AppInfo$NetApp;>;"
    iget-object v9, v3, Lhdp/javabean/AppInfo$AppItem;->item:Ljava/lang/String;

    .line 171
    .local v9, "item_name":Ljava/lang/String;
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 172
    .local v10, "layout":Landroid/widget/LinearLayout;
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 173
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 174
    .local v12, "textView":Landroid/widget/TextView;
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lhdp/player/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x7f090000

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x28

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    new-instance v7, Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 180
    .local v7, "gridView":Landroid/widget/GridView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lhdp/player/AppActivity;->gridViews:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    move-object/from16 v0, p0

    iget-wide v13, v0, Lhdp/player/AppActivity;->num:D

    double-to-int v13, v13

    invoke-virtual {v7, v13}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 182
    const/16 v13, 0x1e

    invoke-virtual {v7, v13}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 183
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 184
    new-instance v2, Lhdp/adapter/AppAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lhdp/player/AppActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lhdp/player/AppActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 184
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v13, v14}, Lhdp/adapter/AppAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 186
    .local v2, "appAdapter":Lhdp/adapter/AppAdapter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lhdp/player/AppActivity;->adapters:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v7, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    move v6, v8

    .line 189
    .local v6, "grid":I
    new-instance v13, Lhdp/player/AppActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6, v4, v7}, Lhdp/player/AppActivity$3;-><init>(Lhdp/player/AppActivity;ILjava/util/ArrayList;Landroid/widget/GridView;)V

    invoke-virtual {v7, v13}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 213
    new-instance v13, Lhdp/player/AppActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v6, v7}, Lhdp/player/AppActivity$4;-><init>(Lhdp/player/AppActivity;Ljava/util/ArrayList;ILandroid/widget/GridView;)V

    invoke-virtual {v7, v13}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 257
    const-string v13, "size"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    int-to-double v15, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lhdp/player/AppActivity;->num:D

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 260
    const/4 v13, -0x1

    .line 261
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    int-to-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lhdp/player/AppActivity;->num:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    mul-double v14, v14, v16

    invoke-virtual/range {p0 .. p0}, Lhdp/player/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 262
    const v17, 0x7f090001

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 261
    mul-double v14, v14, v16

    double-to-int v14, v14

    .line 259
    invoke-direct {v11, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 263
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v10, v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lhdp/player/AppActivity;->layout_root:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private InitData()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lhdp/player/AppActivity$2;

    invoke-direct {v0, p0}, Lhdp/player/AppActivity$2;-><init>(Lhdp/player/AppActivity;)V

    .line 151
    invoke-virtual {v0}, Lhdp/player/AppActivity$2;->start()V

    .line 152
    return-void
.end method

.method private InitImageLoad()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const v1, 0x7f02003e

    .line 155
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 156
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 155
    iput-object v0, p0, Lhdp/player/AppActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 161
    iget-object v0, p0, Lhdp/player/AppActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 162
    invoke-static {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 163
    return-void
.end method

.method private Install(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 396
    const-string v2, "application/vnd.android.package-archive"

    .line 395
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v0}, Lhdp/player/AppActivity;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method

.method private IsInstall(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2, "packagename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhdp/adapter/LocalAppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    const-string v1, "null"

    :goto_0
    return-object v1

    .line 331
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/adapter/LocalAppInfo;

    .line 332
    .local v0, "localAppInfo":Lhdp/adapter/LocalAppInfo;
    iget-object v2, v0, Lhdp/adapter/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v1, v0, Lhdp/adapter/LocalAppInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method

.method private StartApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-virtual {p0}, Lhdp/player/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 388
    .local v0, "mIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Lhdp/player/AppActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    return-void
.end method

.method private Uninstall(Ljava/lang/String;)V
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 376
    .local v0, "i":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 377
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "android.intent.action.DELETE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, v0}, Lhdp/player/AppActivity;->startActivity(Landroid/content/Intent;)V

    .line 380
    return-void
.end method

.method static synthetic access$0(Lhdp/player/AppActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lhdp/player/AppActivity;->app_textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lhdp/player/AppActivity;Lhdp/javabean/AppInfo;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lhdp/player/AppActivity;->InitApp(Lhdp/javabean/AppInfo;)V

    return-void
.end method

.method static synthetic access$10(Lhdp/player/AppActivity;Lhdp/player/AppActivity$DowningItem;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lhdp/player/AppActivity;->down_update:Lhdp/player/AppActivity$DowningItem;

    return-void
.end method

.method static synthetic access$11(Lhdp/player/AppActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0, p1, p2}, Lhdp/player/AppActivity;->CompareVer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lhdp/player/AppActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lhdp/player/AppActivity;->Btn_Update:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$13(Lhdp/player/AppActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lhdp/player/AppActivity;->window:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$14(Lhdp/player/AppActivity;Lhdp/player/AppActivity$DowningItem;)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lhdp/player/AppActivity;->DownLoadApp(Lhdp/player/AppActivity$DowningItem;)V

    return-void
.end method

.method static synthetic access$15(Lhdp/player/AppActivity;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lhdp/player/AppActivity;->Exit:Z

    return v0
.end method

.method static synthetic access$2(Lhdp/player/AppActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lhdp/player/AppActivity;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lhdp/player/AppActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lhdp/player/AppActivity;->savefolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lhdp/player/AppActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Lhdp/player/AppActivity;->Install(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lhdp/player/AppActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lhdp/player/AppActivity;->Jsonpath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lhdp/player/AppActivity;Lhdp/javabean/AppInfo;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lhdp/player/AppActivity;->app_info:Lhdp/javabean/AppInfo;

    return-void
.end method

.method static synthetic access$7(Lhdp/player/AppActivity;)Lhdp/javabean/AppInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhdp/player/AppActivity;->app_info:Lhdp/javabean/AppInfo;

    return-object v0
.end method

.method static synthetic access$8(Lhdp/player/AppActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lhdp/player/AppActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lhdp/player/AppActivity;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0, p1, p2}, Lhdp/player/AppActivity;->IsInstall(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 546
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 547
    invoke-virtual {p0}, Lhdp/player/AppActivity;->finish()V

    .line 548
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 342
    .local v0, "id":I
    iget-object v1, p0, Lhdp/player/AppActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lhdp/player/AppActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 345
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 358
    :goto_0
    return-void

    .line 347
    :pswitch_0
    iget-object v1, p0, Lhdp/player/AppActivity;->down_update:Lhdp/player/AppActivity$DowningItem;

    invoke-direct {p0, v1}, Lhdp/player/AppActivity;->DownLoadApp(Lhdp/player/AppActivity$DowningItem;)V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v1, p0, Lhdp/player/AppActivity;->down_update:Lhdp/player/AppActivity$DowningItem;

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v1

    iget-object v1, v1, Lhdp/javabean/AppInfo$NetApp;->packagename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhdp/player/AppActivity;->StartApp(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :pswitch_2
    iget-object v1, p0, Lhdp/player/AppActivity;->down_update:Lhdp/player/AppActivity$DowningItem;

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v1

    iget-object v1, v1, Lhdp/javabean/AppInfo$NetApp;->packagename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhdp/player/AppActivity;->Uninstall(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0007
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x2

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lhdp/player/AppActivity;->setContentView(I)V

    .line 83
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lhdp/player/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/AppActivity;->app_textView:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lhdp/player/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhdp/player/AppActivity;->layout_root:Landroid/widget/LinearLayout;

    .line 85
    invoke-virtual {p0}, Lhdp/player/AppActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/AppActivity;->layout_up:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lhdp/player/AppActivity;->layout_up:Landroid/view/View;

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhdp/player/AppActivity;->Btn_Update:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lhdp/player/AppActivity;->layout_up:Landroid/view/View;

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhdp/player/AppActivity;->Btn_Start:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lhdp/player/AppActivity;->layout_up:Landroid/view/View;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhdp/player/AppActivity;->Btn_Del:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lhdp/player/AppActivity;->Btn_Update:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lhdp/player/AppActivity;->Btn_Start:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lhdp/player/AppActivity;->Btn_Del:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {p0}, Lhdp/http/MyApp;->getAppInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lhdp/player/AppActivity;->localAppInfos:Ljava/util/List;

    .line 96
    const-string v0, "Net_App"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lhdp/player/AppActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/AppActivity;->savefolder:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhdp/player/AppActivity;->map:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhdp/player/AppActivity;->gridViews:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhdp/player/AppActivity;->adapters:Ljava/util/List;

    .line 101
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lhdp/player/AppActivity;->layout_up:Landroid/view/View;

    invoke-direct {v0, v1, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lhdp/player/AppActivity;->window:Landroid/widget/PopupWindow;

    .line 103
    iget-object v0, p0, Lhdp/player/AppActivity;->window:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lhdp/player/AppActivity;->window:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 107
    invoke-direct {p0}, Lhdp/player/AppActivity;->InitData()V

    .line 108
    invoke-direct {p0}, Lhdp/player/AppActivity;->InitImageLoad()V

    .line 115
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/player/AppActivity;->Exit:Z

    .line 365
    iget-object v0, p0, Lhdp/player/AppActivity;->savefolder:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhdp/util/FileUtils;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 366
    iget-object v0, p0, Lhdp/player/AppActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lhdp/player/AppActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 369
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 535
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 536
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 125
    const-string v1, "hehe"

    const-string v2, "onRestart"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p0}, Lhdp/http/MyApp;->getAppInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lhdp/player/AppActivity;->localAppInfos:Ljava/util/List;

    .line 127
    iget-object v1, p0, Lhdp/player/AppActivity;->adapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    return-void

    .line 127
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/adapter/AppAdapter;

    .line 128
    .local v0, "appAdapter":Lhdp/adapter/AppAdapter;
    invoke-virtual {v0}, Lhdp/adapter/AppAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 540
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 541
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 542
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 120
    return-void
.end method
