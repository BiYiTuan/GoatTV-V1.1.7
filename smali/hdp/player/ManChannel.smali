.class public Lhdp/player/ManChannel;
.super Landroid/app/Activity;
.source "ManChannel.java"


# instance fields
.field private adapter:Lhdp/adapter/ManListAdapter;

.field allcocunt:Landroid/widget/TextView;

.field private arrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private channellist:Landroid/widget/ListView;

.field channelname:Landroid/widget/Button;

.field chleft:Landroid/widget/ImageView;

.field chright:Landroid/widget/ImageView;

.field custompass:Landroid/widget/Button;

.field daoru:Landroid/widget/Button;

.field private gson:Lcom/google/gson/Gson;

.field handler:Landroid/os/Handler;

.field hide_type:Landroid/widget/Button;

.field hidenum:Landroid/widget/TextView;

.field hideshow_lasttype:Landroid/widget/Button;

.field protected liveInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private retid:Ljava/lang/String;

.field show_type:Landroid/widget/Button;

.field private strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tidIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhdp/player/ManChannel;->strings:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Lhdp/player/ManChannel$1;

    invoke-direct {v0, p0}, Lhdp/player/ManChannel$1;-><init>(Lhdp/player/ManChannel;)V

    iput-object v0, p0, Lhdp/player/ManChannel;->handler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method private CountNum()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 570
    const/4 v0, 0x0

    .line 572
    .local v0, "hideCount":I
    iget-object v2, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 578
    iget-object v2, p0, Lhdp/player/ManChannel;->hidenum:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f06006f

    invoke-virtual {p0, v4}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    if-nez v0, :cond_2

    .line 581
    iget-object v2, p0, Lhdp/player/ManChannel;->show_type:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 586
    :goto_1
    iget-object v2, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 587
    iget-object v2, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 588
    iget-object v2, p0, Lhdp/player/ManChannel;->hide_type:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 593
    :goto_2
    return-void

    .line 572
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/LiveChannelInfo;

    .line 573
    .local v1, "info":Lhdp/javabean/LiveChannelInfo;
    iget-boolean v3, v1, Lhdp/javabean/LiveChannelInfo;->hide:Z

    if-eqz v3, :cond_0

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    .end local v1    # "info":Lhdp/javabean/LiveChannelInfo;
    :cond_2
    iget-object v2, p0, Lhdp/player/ManChannel;->show_type:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 590
    :cond_3
    iget-object v2, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 591
    iget-object v2, p0, Lhdp/player/ManChannel;->hide_type:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method private HideSHowChannel(I)V
    .locals 7
    .param p1, "tidIndex"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    iget-object v1, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveChannelInfo;

    .line 239
    .local v0, "live":Lhdp/javabean/LiveChannelInfo;
    sget-object v4, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    iget-object v1, v0, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v5, v1, v2

    iget-object v6, v0, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    iget-boolean v1, v0, Lhdp/javabean/LiveChannelInfo;->hide:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v6, v1}, Lhdp/util/LiveDataHelper;->updateChannelHide(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    iget-boolean v1, v0, Lhdp/javabean/LiveChannelInfo;->hide:Z

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Lhdp/javabean/LiveChannelInfo;->hide:Z

    .line 241
    return-void

    :cond_0
    move v1, v3

    .line 239
    goto :goto_0

    :cond_1
    move v2, v3

    .line 240
    goto :goto_1
.end method

.method private InitListener()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lhdp/player/ManChannel;->chleft:Landroid/widget/ImageView;

    new-instance v1, Lhdp/player/ManChannel$2;

    invoke-direct {v1, p0}, Lhdp/player/ManChannel$2;-><init>(Lhdp/player/ManChannel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lhdp/player/ManChannel;->chright:Landroid/widget/ImageView;

    new-instance v1, Lhdp/player/ManChannel$3;

    invoke-direct {v1, p0}, Lhdp/player/ManChannel$3;-><init>(Lhdp/player/ManChannel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    new-instance v1, Lhdp/player/ManChannel$4;

    invoke-direct {v1, p0}, Lhdp/player/ManChannel$4;-><init>(Lhdp/player/ManChannel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    new-instance v1, Lhdp/player/ManChannel$5;

    invoke-direct {v1, p0}, Lhdp/player/ManChannel$5;-><init>(Lhdp/player/ManChannel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 192
    iget-object v0, p0, Lhdp/player/ManChannel;->channellist:Landroid/widget/ListView;

    new-instance v1, Lhdp/player/ManChannel$6;

    invoke-direct {v1, p0}, Lhdp/player/ManChannel$6;-><init>(Lhdp/player/ManChannel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 211
    return-void
.end method

.method private InitView()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    .line 96
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/ManChannel;->allcocunt:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/ManChannel;->hidenum:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lhdp/player/ManChannel;->channellist:Landroid/widget/ListView;

    .line 99
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhdp/player/ManChannel;->daoru:Landroid/widget/Button;

    .line 100
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhdp/player/ManChannel;->hide_type:Landroid/widget/Button;

    .line 101
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhdp/player/ManChannel;->show_type:Landroid/widget/Button;

    .line 102
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhdp/player/ManChannel;->hideshow_lasttype:Landroid/widget/Button;

    .line 103
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    .line 104
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhdp/player/ManChannel;->chleft:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhdp/player/ManChannel;->chright:Landroid/widget/ImageView;

    .line 108
    return-void
.end method

.method private LeftorRight(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 405
    :try_start_0
    invoke-virtual {p0, p1}, Lhdp/player/ManChannel;->changeList(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lhdp/player/ManChannel;)Lhdp/adapter/ManListAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lhdp/player/ManChannel;->adapter:Lhdp/adapter/ManListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lhdp/player/ManChannel;)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Lhdp/player/ManChannel;->CountNum()V

    return-void
.end method

.method static synthetic access$2(Lhdp/player/ManChannel;I)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lhdp/player/ManChannel;->LeftorRight(I)V

    return-void
.end method

.method static synthetic access$3(Lhdp/player/ManChannel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lhdp/player/ManChannel;->channellist:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lhdp/player/ManChannel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lhdp/player/ManChannel;->retid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lhdp/player/ManChannel;I)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lhdp/player/ManChannel;->HideSHowChannel(I)V

    return-void
.end method

.method private updateIndex(Ljava/lang/String;)V
    .locals 2
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lhdp/player/ManChannel;->channelTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 430
    :goto_1
    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lhdp/player/ManChannel;->channelTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/LiveTypeInfo;

    iget-object v1, v1, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    iput-object p1, p0, Lhdp/player/ManChannel;->retid:Ljava/lang/String;

    .line 426
    iput v0, p0, Lhdp/player/ManChannel;->tidIndex:I

    goto :goto_1

    .line 423
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public CustomPass(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 338
    .local v1, "inputServer":Landroid/widget/EditText;
    const v2, 0x7f060070

    invoke-virtual {p0, v2}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060071

    invoke-virtual {p0, v2}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 341
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 342
    const v3, 0x7f06004f

    invoke-virtual {p0, v3}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    const v2, 0x7f06004e

    invoke-virtual {p0, v2}, Lhdp/player/ManChannel;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    new-instance v3, Lhdp/player/ManChannel$9;

    invoke-direct {v3, p0, v1}, Lhdp/player/ManChannel$9;-><init>(Lhdp/player/ManChannel;Landroid/widget/EditText;)V

    .line 343
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 377
    return-void
.end method

.method public Daoru(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lhdp/player/FileList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "number"

    iget-object v1, p0, Lhdp/player/ManChannel;->channelTypeList:Ljava/util/ArrayList;

    iget v3, p0, Lhdp/player/ManChannel;->tidIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/LiveTypeInfo;

    iget-object v1, v1, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lhdp/player/ManChannel;->startActivityForResult(Landroid/content/Intent;I)V

    .line 388
    return-void
.end method

.method public HideChannels(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v0, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    .line 248
    .local v0, "liveInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lhdp/player/ManChannel$7;

    invoke-direct {v2, p0, v0}, Lhdp/player/ManChannel$7;-><init>(Lhdp/player/ManChannel;Ljava/util/ArrayList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 268
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 269
    iget-object v1, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 270
    return-void
.end method

.method public ShowChannels(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lhdp/player/ManChannel$8;

    invoke-direct {v1, p0}, Lhdp/player/ManChannel$8;-><init>(Lhdp/player/ManChannel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 288
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 289
    iget-object v0, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 290
    return-void
.end method

.method public changeList(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 412
    iget v0, p0, Lhdp/player/ManChannel;->tidIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lhdp/player/ManChannel;->tidIndex:I

    .line 413
    iget v0, p0, Lhdp/player/ManChannel;->tidIndex:I

    if-gez v0, :cond_0

    .line 414
    iget-object v0, p0, Lhdp/player/ManChannel;->channelTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lhdp/player/ManChannel;->tidIndex:I

    .line 416
    :cond_0
    iget v0, p0, Lhdp/player/ManChannel;->tidIndex:I

    iget-object v1, p0, Lhdp/player/ManChannel;->channelTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lhdp/player/ManChannel;->tidIndex:I

    .line 419
    :cond_1
    iget-object v0, p0, Lhdp/player/ManChannel;->channelTypeList:Ljava/util/ArrayList;

    iget v1, p0, Lhdp/player/ManChannel;->tidIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveTypeInfo;

    iget-object v0, v0, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lhdp/player/ManChannel;->refreshView(Ljava/lang/String;I)V

    .line 420
    return-void
.end method

.method public hide_show(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    invoke-static {}, Lhdp/http/MyApp;->getShowLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    const-string v1, "hide"

    const-string v2, "hide"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 304
    iget-object v1, p0, Lhdp/player/ManChannel;->adapter:Lhdp/adapter/ManListAdapter;

    invoke-virtual {v1}, Lhdp/adapter/ManListAdapter;->notifyDataSetChanged()V

    .line 307
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lhdp/http/MyApp;->setShowLast(Z)V

    .line 308
    iget-object v1, p0, Lhdp/player/ManChannel;->hideshow_lasttype:Landroid/widget/Button;

    const v2, 0x7f060081

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 309
    iget-object v1, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 329
    :goto_0
    return-void

    .line 312
    :cond_1
    const-string v1, "hide"

    const-string v2, "show"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v1, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    .line 316
    const-string v2, "last"

    invoke-virtual {v1, v2}, Lhdp/util/LiveDataHelper;->ManageByTid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 318
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    iget-object v1, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 319
    iput-object v0, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    .line 324
    :goto_1
    iget-object v1, p0, Lhdp/player/ManChannel;->adapter:Lhdp/adapter/ManListAdapter;

    invoke-virtual {v1}, Lhdp/adapter/ManListAdapter;->notifyDataSetChanged()V

    .line 325
    const/4 v1, 0x1

    invoke-static {v1}, Lhdp/http/MyApp;->setShowLast(Z)V

    .line 326
    iget-object v1, p0, Lhdp/player/ManChannel;->hideshow_lasttype:Landroid/widget/Button;

    const v2, 0x7f060080

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 327
    iget-object v1, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 321
    :cond_2
    iget-object v1, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 392
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 393
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 394
    iget-object v0, p0, Lhdp/player/ManChannel;->channelTypeList:Ljava/util/ArrayList;

    iget v1, p0, Lhdp/player/ManChannel;->tidIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveTypeInfo;

    iget-object v0, v0, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lhdp/player/ManChannel;->refreshView(Ljava/lang/String;I)V

    .line 396
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lhdp/player/ManChannel;->channellist:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 603
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lhdp/player/ManChannel;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lhdp/player/ManChannel;->InitView()V

    .line 82
    invoke-direct {p0}, Lhdp/player/ManChannel;->InitListener()V

    .line 85
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v0}, Lhdp/util/LiveDataHelper;->getTypeList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/ManChannel;->channelTypeList:Ljava/util/ArrayList;

    .line 87
    const-string v0, "custom02"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lhdp/player/ManChannel;->refreshView(Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 613
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 614
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 615
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 607
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 608
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 609
    return-void
.end method

.method public refreshView(Ljava/lang/String;I)V
    .locals 8
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    const v7, 0x7f060073

    const v6, 0x7f060072

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 440
    invoke-direct {p0, p1}, Lhdp/player/ManChannel;->updateIndex(Ljava/lang/String;)V

    .line 442
    const-string v0, "tid"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v0, "more"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    :cond_0
    invoke-virtual {p0, p2}, Lhdp/player/ManChannel;->changeList(I)V

    .line 563
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    iget-object v1, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    iget-object v0, p0, Lhdp/player/ManChannel;->channelTypeList:Ljava/util/ArrayList;

    iget v2, p0, Lhdp/player/ManChannel;->tidIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveTypeInfo;

    iget-object v0, v0, Lhdp/javabean/LiveTypeInfo;->tname:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 451
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v0, p1}, Lhdp/util/LiveDataHelper;->ManageByTid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    .line 453
    const-string v0, "custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 455
    iget-object v0, p0, Lhdp/player/ManChannel;->hide_type:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lhdp/player/ManChannel;->show_type:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lhdp/player/ManChannel;->hideshow_lasttype:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lhdp/player/ManChannel;->daoru:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 462
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    :goto_1
    const-string v0, "custom01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 469
    const/4 v0, 0x1

    invoke-static {v0}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 470
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 548
    :cond_3
    :goto_2
    new-instance v0, Lhdp/adapter/ManListAdapter;

    iget-object v1, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lhdp/adapter/ManListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lhdp/player/ManChannel;->adapter:Lhdp/adapter/ManListAdapter;

    .line 549
    iget-object v0, p0, Lhdp/player/ManChannel;->channellist:Landroid/widget/ListView;

    iget-object v1, p0, Lhdp/player/ManChannel;->adapter:Lhdp/adapter/ManListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 551
    iget-object v0, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 552
    iget-object v0, p0, Lhdp/player/ManChannel;->allcocunt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f06006e

    invoke-virtual {p0, v2}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    const-string v0, "last"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    invoke-direct {p0}, Lhdp/player/ManChannel;->CountNum()V

    goto/16 :goto_0

    .line 464
    :cond_4
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 471
    :cond_5
    sget-boolean v0, Lhdp/player/StartActivity;->Pw1:Z

    if-eqz v0, :cond_6

    .line 472
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 474
    :cond_6
    iput-object v5, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    .line 475
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    const v1, 0x7f060074

    invoke-virtual {p0, v1}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 477
    :cond_7
    const-string v0, "custom02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 478
    const/4 v0, 0x2

    invoke-static {v0}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 479
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 480
    :cond_8
    sget-boolean v0, Lhdp/player/StartActivity;->Pw2:Z

    if-eqz v0, :cond_9

    .line 481
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 483
    :cond_9
    iput-object v5, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    .line 484
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    const v1, 0x7f060074

    invoke-virtual {p0, v1}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 486
    :cond_a
    const-string v0, "custom03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    const/4 v0, 0x3

    invoke-static {v0}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 488
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 489
    :cond_b
    sget-boolean v0, Lhdp/player/StartActivity;->Pw3:Z

    if-eqz v0, :cond_c

    .line 490
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 492
    :cond_c
    iput-object v5, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    .line 493
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    const v1, 0x7f060074

    invoke-virtual {p0, v1}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 501
    :cond_d
    iget-object v0, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 502
    :cond_e
    const-string v0, "favorite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_f

    .line 503
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 504
    :cond_f
    invoke-virtual {p0, p2}, Lhdp/player/ManChannel;->changeList(I)V

    goto/16 :goto_0

    .line 509
    :cond_10
    const-string v0, "last"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 510
    invoke-static {}, Lhdp/http/MyApp;->getShowLast()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 511
    iget-object v0, p0, Lhdp/player/ManChannel;->hideshow_lasttype:Landroid/widget/Button;

    const v1, 0x7f06007e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 516
    :goto_3
    iget-object v0, p0, Lhdp/player/ManChannel;->daoru:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lhdp/player/ManChannel;->hideshow_lasttype:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lhdp/player/ManChannel;->hide_type:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lhdp/player/ManChannel;->show_type:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lhdp/player/ManChannel;->allcocunt:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lhdp/player/ManChannel;->hidenum:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 513
    :cond_11
    iget-object v0, p0, Lhdp/player/ManChannel;->hideshow_lasttype:Landroid/widget/Button;

    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 514
    iput-object v5, p0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    goto :goto_3

    .line 525
    :cond_12
    const-string v0, "share"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 528
    iget-object v0, p0, Lhdp/player/ManChannel;->daoru:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lhdp/player/ManChannel;->hideshow_lasttype:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lhdp/player/ManChannel;->hide_type:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lhdp/player/ManChannel;->show_type:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lhdp/player/ManChannel;->allcocunt:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lhdp/player/ManChannel;->hidenum:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 537
    :cond_13
    iget-object v0, p0, Lhdp/player/ManChannel;->daoru:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lhdp/player/ManChannel;->hideshow_lasttype:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lhdp/player/ManChannel;->allcocunt:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lhdp/player/ManChannel;->hidenum:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lhdp/player/ManChannel;->hide_type:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lhdp/player/ManChannel;->show_type:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 558
    :cond_14
    iget-object v0, p0, Lhdp/player/ManChannel;->allcocunt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f06006e

    invoke-virtual {p0, v2}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lhdp/player/ManChannel;->hidenum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f06006f

    invoke-virtual {p0, v2}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v0, p0, Lhdp/player/ManChannel;->channelname:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0
.end method
