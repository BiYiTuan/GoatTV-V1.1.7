.class public Lhdp/player/LiveChannelList;
.super Landroid/widget/PopupWindow;
.source "LiveChannelList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/player/LiveChannelList$MyLinearLayout;
    }
.end annotation


# static fields
.field public static NewType:Z


# instance fields
.field private adapter:Lhdp/adapter/ChannelListAdapter;

.field private final autoHideDelay:I

.field private channelTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private channel_list_last:Landroid/widget/LinearLayout;

.field private channellist:Landroid/widget/ListView;

.field hide:Ljava/lang/Runnable;

.field private liveInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private tidIndex:I

.field private txtChannelType:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lhdp/player/LiveChannelList;->NewType:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 56
    const/16 v0, 0x1770

    iput v0, p0, Lhdp/player/LiveChannelList;->autoHideDelay:I

    .line 59
    iput-object v1, p0, Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Lhdp/player/LiveChannelList;->view:Landroid/view/View;

    .line 67
    new-instance v0, Lhdp/player/LiveChannelList$1;

    invoke-direct {v0, p0}, Lhdp/player/LiveChannelList$1;-><init>(Lhdp/player/LiveChannelList;)V

    iput-object v0, p0, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lhdp/player/LiveChannelList;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;

    .line 78
    invoke-virtual {p0}, Lhdp/player/LiveChannelList;->init()V

    .line 79
    return-void
.end method

.method static synthetic access$0(Lhdp/player/LiveChannelList;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lhdp/player/LiveChannelList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lhdp/player/LiveChannelList;)Lhdp/adapter/ChannelListAdapter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhdp/player/LiveChannelList;->adapter:Lhdp/adapter/ChannelListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lhdp/player/LiveChannelList;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public changeList(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 494
    iget v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    .line 497
    iget v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    if-gez v0, :cond_0

    .line 498
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    .line 501
    :cond_0
    iget v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    iget-object v1, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 502
    iput v2, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    .line 506
    :cond_1
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    iget v1, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveTypeInfo;

    iget-object v0, v0, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, p1}, Lhdp/player/LiveChannelList;->refreshView(Ljava/lang/String;II)V

    .line 508
    iget-object v0, p0, Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 509
    iget-object v0, p0, Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    return-void
.end method

.method public changeList_onLive(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 518
    iget v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    .line 520
    iget v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    if-gez v0, :cond_0

    .line 522
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    .line 526
    :cond_0
    iget v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    iget-object v1, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    .line 532
    :cond_1
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    iget v1, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveTypeInfo;

    iget-object v0, v0, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lhdp/player/LiveChannelList;->refreshView(Ljava/lang/String;II)V

    .line 533
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 338
    return-void
.end method

.method public favCurrentChannel(Lhdp/javabean/LiveChannelInfo;)V
    .locals 5
    .param p1, "channelInfo"    # Lhdp/javabean/LiveChannelInfo;

    .prologue
    const/4 v1, 0x0

    .line 578
    iget-object v2, p1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "custom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    iget-object v2, p1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "favorit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    :cond_0
    iget-object v2, p0, Lhdp/player/LiveChannelList;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lhdp/player/LiveChannelList;->mContext:Landroid/content/Context;

    const v4, 0x7f060057

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 610
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v2, p1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "last"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 587
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lhdp/player/LiveChannelList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 588
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 589
    const v1, 0x7f06004e

    .line 590
    new-instance v2, Lhdp/player/LiveChannelList$9;

    invoke-direct {v2, p0}, Lhdp/player/LiveChannelList$9;-><init>(Lhdp/player/LiveChannelList;)V

    .line 589
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 597
    const v2, 0x7f06004f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 599
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 600
    invoke-virtual {p0}, Lhdp/player/LiveChannelList;->dismiss()V

    goto :goto_0

    .line 605
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    sget-object v2, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v2, p1}, Lhdp/util/LiveDataHelper;->updateChannelFav(Lhdp/javabean/LiveChannelInfo;)V

    .line 608
    iget-boolean v2, p1, Lhdp/javabean/LiveChannelInfo;->favorite:Z

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v1, p1, Lhdp/javabean/LiveChannelInfo;->favorite:Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public getChannelsInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 87
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v3}, Lhdp/player/LiveChannelList;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lhdp/player/LiveChannelList;->setFocusable(Z)V

    .line 91
    const/4 v3, -0x2

    .line 92
    const/4 v4, -0x1

    .line 91
    invoke-virtual {p0, v3, v4}, Lhdp/player/LiveChannelList;->setWindowLayoutMode(II)V

    .line 94
    new-instance v0, Lhdp/player/LiveChannelList$MyLinearLayout;

    iget-object v3, p0, Lhdp/player/LiveChannelList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lhdp/player/LiveChannelList$MyLinearLayout;-><init>(Lhdp/player/LiveChannelList;Landroid/content/Context;)V

    .line 96
    .local v0, "root":Lhdp/player/LiveChannelList$MyLinearLayout;
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v3

    const-string v4, "small"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lhdp/player/LiveChannelList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 98
    const v4, 0x7f030013

    .line 97
    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lhdp/player/LiveChannelList;->view:Landroid/view/View;

    .line 108
    :goto_0
    invoke-virtual {p0, v0}, Lhdp/player/LiveChannelList;->setContentView(Landroid/view/View;)V

    .line 110
    const v3, 0x7f07000f

    invoke-virtual {p0, v3}, Lhdp/player/LiveChannelList;->setAnimationStyle(I)V

    .line 112
    sget-object v3, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v3}, Lhdp/util/LiveDataHelper;->getTypeList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    .line 115
    iget-object v3, p0, Lhdp/player/LiveChannelList;->view:Landroid/view/View;

    .line 116
    const v4, 0x7f0a003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 115
    iput-object v3, p0, Lhdp/player/LiveChannelList;->txtChannelType:Landroid/widget/TextView;

    .line 118
    iget-object v3, p0, Lhdp/player/LiveChannelList;->view:Landroid/view/View;

    .line 119
    const v4, 0x7f0a003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 118
    check-cast v1, Landroid/widget/ImageView;

    .line 121
    .local v1, "typeLeft":Landroid/widget/ImageView;
    iget-object v3, p0, Lhdp/player/LiveChannelList;->view:Landroid/view/View;

    .line 122
    const v4, 0x7f0a003d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 121
    check-cast v2, Landroid/widget/ImageView;

    .line 124
    .local v2, "typeRight":Landroid/widget/ImageView;
    iget-object v3, p0, Lhdp/player/LiveChannelList;->view:Landroid/view/View;

    .line 125
    const v4, 0x7f0a0041

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 124
    iput-object v3, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    .line 148
    iget-object v3, p0, Lhdp/player/LiveChannelList;->view:Landroid/view/View;

    .line 149
    const v4, 0x7f0a003f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 148
    iput-object v3, p0, Lhdp/player/LiveChannelList;->channel_list_last:Landroid/widget/LinearLayout;

    .line 237
    new-instance v3, Lhdp/player/LiveChannelList$2;

    invoke-direct {v3, p0}, Lhdp/player/LiveChannelList$2;-><init>(Lhdp/player/LiveChannelList;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v3, Lhdp/player/LiveChannelList$3;

    invoke-direct {v3, p0}, Lhdp/player/LiveChannelList$3;-><init>(Lhdp/player/LiveChannelList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v3, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    new-instance v4, Lhdp/player/LiveChannelList$4;

    invoke-direct {v4, p0}, Lhdp/player/LiveChannelList$4;-><init>(Lhdp/player/LiveChannelList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 265
    iget-object v3, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    new-instance v4, Lhdp/player/LiveChannelList$5;

    invoke-direct {v4, p0}, Lhdp/player/LiveChannelList$5;-><init>(Lhdp/player/LiveChannelList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 280
    iget-object v3, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    new-instance v4, Lhdp/player/LiveChannelList$6;

    invoke-direct {v4, p0}, Lhdp/player/LiveChannelList$6;-><init>(Lhdp/player/LiveChannelList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 294
    iget-object v3, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    new-instance v4, Lhdp/player/LiveChannelList$7;

    invoke-direct {v4, p0}, Lhdp/player/LiveChannelList$7;-><init>(Lhdp/player/LiveChannelList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 315
    iget-object v3, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    new-instance v4, Lhdp/player/LiveChannelList$8;

    invoke-direct {v4, p0}, Lhdp/player/LiveChannelList$8;-><init>(Lhdp/player/LiveChannelList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 332
    return-void

    .line 99
    .end local v1    # "typeLeft":Landroid/widget/ImageView;
    .end local v2    # "typeRight":Landroid/widget/ImageView;
    :cond_0
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v3

    const-string v4, "large"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lhdp/player/LiveChannelList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 101
    const v4, 0x7f030011

    .line 100
    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lhdp/player/LiveChannelList;->view:Landroid/view/View;

    goto/16 :goto_0

    .line 103
    :cond_1
    iget-object v3, p0, Lhdp/player/LiveChannelList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 104
    const v4, 0x7f030012

    .line 103
    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lhdp/player/LiveChannelList;->view:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public refreshView(Ljava/lang/String;II)V
    .locals 5
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "flag"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 370
    sget-boolean v0, Lhdp/player/LiveChannelList;->NewType:Z

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v0}, Lhdp/util/LiveDataHelper;->getTypeList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    .line 373
    sput-boolean v3, Lhdp/player/LiveChannelList;->NewType:Z

    .line 376
    :cond_0
    const-string v0, "tid\u4e3a----"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0, p1}, Lhdp/player/LiveChannelList;->updateIndex(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lhdp/player/LiveChannelList;->txtChannelType:Landroid/widget/TextView;

    iget-object v0, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    iget v2, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveTypeInfo;

    iget-object v0, v0, Lhdp/javabean/LiveTypeInfo;->tname:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v0, p1}, Lhdp/util/LiveDataHelper;->getChannelListByTid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;

    .line 385
    const-string v0, "more"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    if-nez p2, :cond_2

    .line 395
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channel_list_last:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 469
    :goto_0
    return-void

    .line 400
    :cond_1
    const-string v0, "last"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channel_list_last:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 445
    :cond_2
    :goto_1
    iget-object v0, p0, Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const-string v0, "other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 446
    iget-object v0, p0, Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 448
    :cond_3
    if-nez p2, :cond_6

    .line 450
    invoke-virtual {p0, p3}, Lhdp/player/LiveChannelList;->changeList(I)V

    goto :goto_0

    .line 408
    :cond_4
    const-string v0, "favorite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channel_list_last:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 420
    :cond_5
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channel_list_last:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 422
    const-string v0, "custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 426
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 454
    :cond_6
    invoke-virtual {p0, p3}, Lhdp/player/LiveChannelList;->changeList_onLive(I)V

    goto :goto_0

    .line 461
    :cond_7
    new-instance v0, Lhdp/adapter/ChannelListAdapter;

    iget-object v1, p0, Lhdp/player/LiveChannelList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lhdp/adapter/ChannelListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lhdp/player/LiveChannelList;->adapter:Lhdp/adapter/ChannelListAdapter;

    .line 463
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    iget-object v1, p0, Lhdp/player/LiveChannelList;->adapter:Lhdp/adapter/ChannelListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 465
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 467
    iget-object v0, p0, Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 352
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 353
    iget-object v0, p0, Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget-object v0, p0, Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 343
    iget-object v0, p0, Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    iget-object v0, p0, Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    return-void
.end method

.method public updateIndex(Ljava/lang/String;)V
    .locals 2
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 486
    :goto_1
    return-void

    .line 478
    :cond_0
    iget-object v1, p0, Lhdp/player/LiveChannelList;->channelTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/LiveTypeInfo;

    iget-object v1, v1, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    iput v0, p0, Lhdp/player/LiveChannelList;->tidIndex:I

    goto :goto_1

    .line 476
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
