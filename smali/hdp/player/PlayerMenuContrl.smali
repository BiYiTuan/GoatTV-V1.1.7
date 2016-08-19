.class public Lhdp/player/PlayerMenuContrl;
.super Landroid/widget/PopupWindow;
.source "PlayerMenuContrl.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static _port:I


# instance fields
.field private Turn:Landroid/widget/LinearLayout;

.field private TurnTv:Landroid/widget/TextView;

.field private appline:Landroid/widget/LinearLayout;

.field private final autoDismiss:I

.field autoHide:Ljava/lang/Runnable;

.field private bangding:Landroid/widget/LinearLayout;

.field private channel:Lhdp/javabean/LiveChannelInfo;

.field check_lib:Z

.field private clear:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field currentvol:I

.field private handler:Landroid/os/Handler;

.field private huikan:Landroid/widget/LinearLayout;

.field private jiema:Landroid/widget/LinearLayout;

.field private jiemaLeft:Landroid/widget/ImageView;

.field private jiemaRight:Landroid/widget/ImageView;

.field private jiemaTv:Landroid/widget/TextView;

.field private jmLength:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private manchannels:Landroid/widget/LinearLayout;

.field private maxvol:I

.field private scalor:Landroid/widget/LinearLayout;

.field private scalorLeft:Landroid/widget/ImageView;

.field private scalorRight:Landroid/widget/ImageView;

.field private scalorTv:Landroid/widget/TextView;

.field private sizeLeft:Landroid/widget/ImageView;

.field private sizeRight:Landroid/widget/ImageView;

.field private sizeTv:Landroid/widget/TextView;

.field private sodownhdp:Ljava/lang/String;

.field private starts:Landroid/widget/LinearLayout;

.field private startsLeft:Landroid/widget/ImageView;

.field private startsRight:Landroid/widget/ImageView;

.field private startsTv:Landroid/widget/TextView;

.field private textsize:Landroid/widget/LinearLayout;

.field private timeout:Landroid/widget/LinearLayout;

.field private tranvol:D

.field private turnLeft:Landroid/widget/ImageView;

.field private turnRight:Landroid/widget/ImageView;

.field private volLeft:Landroid/widget/ImageView;

.field private volRight:Landroid/widget/ImageView;

.field private volTv:Landroid/widget/TextView;

.field private vollayout:Landroid/widget/LinearLayout;

.field volset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput v0, Lhdp/player/PlayerMenuContrl;->_port:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 68
    const/16 v0, 0x1f40

    iput v0, p0, Lhdp/player/PlayerMenuContrl;->autoDismiss:I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    .line 78
    sget-object v0, Lhdp/http/MyApp;->jiemaContent:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lhdp/player/PlayerMenuContrl;->jmLength:I

    .line 81
    const-string v0, "http://www.iaarc.com/libarm/libarm.so"

    iput-object v0, p0, Lhdp/player/PlayerMenuContrl;->sodownhdp:Ljava/lang/String;

    .line 83
    new-instance v0, Lhdp/player/PlayerMenuContrl$1;

    invoke-direct {v0, p0}, Lhdp/player/PlayerMenuContrl$1;-><init>(Lhdp/player/PlayerMenuContrl;)V

    iput-object v0, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhdp/player/PlayerMenuContrl;->check_lib:Z

    .line 92
    iput-object p1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lhdp/player/PlayerMenuContrl;->init()V

    .line 94
    invoke-direct {p0}, Lhdp/player/PlayerMenuContrl;->initData()V

    .line 95
    return-void
.end method

.method private ChangeJiemaDialog()V
    .locals 4

    .prologue
    .line 594
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 596
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f06007a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 597
    const v2, 0x7f06004e

    .line 598
    new-instance v3, Lhdp/player/PlayerMenuContrl$5;

    invoke-direct {v3, p0}, Lhdp/player/PlayerMenuContrl$5;-><init>(Lhdp/player/PlayerMenuContrl;)V

    .line 597
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 606
    const v2, 0x7f06004f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 607
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 608
    return-void
.end method

.method private Clear_app()V
    .locals 4

    .prologue
    .line 979
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 980
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const v2, 0x7f060082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 981
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 982
    const/4 v3, 0x0

    .line 981
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 983
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 984
    new-instance v2, Lhdp/player/PlayerMenuContrl$6;

    invoke-direct {v2, p0}, Lhdp/player/PlayerMenuContrl$6;-><init>(Lhdp/player/PlayerMenuContrl;)V

    .line 983
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 999
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1000
    return-void
.end method

.method private CreatDownDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "str1"    # Ljava/lang/String;
    .param p3, "str2"    # Ljava/lang/String;

    .prologue
    .line 526
    new-instance v0, Lhdp/widget/DownProgressDialog;

    .line 527
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    .line 526
    invoke-direct {v0, v1, p2, p3}, Lhdp/widget/DownProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .local v0, "progressDialog":Lhdp/widget/DownProgressDialog;
    new-instance v1, Lhdp/player/PlayerMenuContrl$3;

    invoke-direct {v1, p0, v0}, Lhdp/player/PlayerMenuContrl$3;-><init>(Lhdp/player/PlayerMenuContrl;Lhdp/widget/DownProgressDialog;)V

    invoke-virtual {v0, v1}, Lhdp/widget/DownProgressDialog;->setOnDownloadListening(Lhdp/widget/DownProgressDialog$OnDownloadListening;)V

    .line 575
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const v2, 0x7f06004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 576
    new-instance v2, Lhdp/player/PlayerMenuContrl$4;

    invoke-direct {v2, p0, v0}, Lhdp/player/PlayerMenuContrl$4;-><init>(Lhdp/player/PlayerMenuContrl;Lhdp/widget/DownProgressDialog;)V

    .line 575
    invoke-virtual {v0, v1, v2}, Lhdp/widget/DownProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 584
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhdp/widget/DownProgressDialog;->setCancelable(Z)V

    .line 586
    invoke-virtual {v0}, Lhdp/widget/DownProgressDialog;->show()V

    .line 587
    return-void
.end method

.method private Dialog_DownvitamioSo()V
    .locals 3

    .prologue
    .line 492
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 494
    const v1, 0x7f06004e

    .line 495
    new-instance v2, Lhdp/player/PlayerMenuContrl$2;

    invoke-direct {v2, p0}, Lhdp/player/PlayerMenuContrl$2;-><init>(Lhdp/player/PlayerMenuContrl;)V

    .line 494
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 508
    const v1, 0x7f06004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 510
    return-void
.end method

.method private SetVol()V
    .locals 4

    .prologue
    .line 971
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lhdp/player/PlayerMenuContrl;->currentvol:I

    .line 973
    iget v0, p0, Lhdp/player/PlayerMenuContrl;->currentvol:I

    int-to-double v0, v0

    iget-wide v2, p0, Lhdp/player/PlayerMenuContrl;->tranvol:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lhdp/player/PlayerMenuContrl;->volset:I

    .line 975
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->volTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lhdp/player/PlayerMenuContrl;->volset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    return-void
.end method

.method private VolAd(I)V
    .locals 6
    .param p1, "ad"    # I

    .prologue
    .line 274
    if-nez p1, :cond_2

    .line 275
    iget v0, p0, Lhdp/player/PlayerMenuContrl;->volset:I

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->volTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lhdp/player/PlayerMenuContrl;->volset:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lhdp/player/PlayerMenuContrl;->volset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :goto_1
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 287
    iget v2, p0, Lhdp/player/PlayerMenuContrl;->volset:I

    int-to-double v2, v2

    iget-wide v4, p0, Lhdp/player/PlayerMenuContrl;->tranvol:D

    div-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    .line 286
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 280
    :cond_2
    iget v0, p0, Lhdp/player/PlayerMenuContrl;->volset:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->volTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lhdp/player/PlayerMenuContrl;->volset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lhdp/player/PlayerMenuContrl;->volset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lhdp/player/PlayerMenuContrl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lhdp/player/PlayerMenuContrl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->sodownhdp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lhdp/player/PlayerMenuContrl;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0, p1, p2, p3}, Lhdp/player/PlayerMenuContrl;->CreatDownDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lhdp/player/PlayerMenuContrl;)V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaDialog()V

    return-void
.end method

.method private changScale_Live(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const v3, 0x7f06004c

    const v2, 0x7f06004b

    .line 330
    packed-switch p1, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    instance-of v0, v0, Lhdp/player/LivePlayer;

    if-eqz v0, :cond_8

    .line 367
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    check-cast v0, Lhdp/player/LivePlayer;

    invoke-virtual {v0}, Lhdp/player/LivePlayer;->changScale()V

    .line 372
    :cond_1
    :goto_1
    return-void

    .line 332
    :pswitch_1
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    const-string v0, "4X3"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvScale(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    const-string v1, "4:3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 335
    :cond_2
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4X3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    const-string v0, "16X9"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvScale(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    const-string v1, "16:9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 338
    :cond_3
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "16X9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    const-string v0, "yuanshi"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvScale(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 341
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 342
    :cond_4
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yuanshi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "quanping"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvScale(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 348
    :pswitch_2
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    const-string v0, "yuanshi"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvScale(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 351
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 352
    :cond_5
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4X3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 353
    const-string v0, "quanping"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvScale(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 355
    :cond_6
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "16X9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 356
    const-string v0, "4X3"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvScale(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    const-string v1, "4:3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 358
    :cond_7
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yuanshi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "16X9"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvScale(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    const-string v1, "16:9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 368
    :cond_8
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    instance-of v0, v0, Lhdp/player/LivePlayerS;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    check-cast v0, Lhdp/player/LivePlayerS;

    invoke-virtual {v0}, Lhdp/player/LivePlayerS;->changScale()V

    goto/16 :goto_1

    .line 330
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "root":Landroid/view/View;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v2}, Lhdp/player/PlayerMenuContrl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lhdp/player/PlayerMenuContrl;->setFocusable(Z)V

    .line 104
    invoke-virtual {p0, v3, v3}, Lhdp/player/PlayerMenuContrl;->setWindowLayoutMode(II)V

    .line 107
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    .line 108
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    check-cast v0, Landroid/view/LayoutInflater;

    .line 109
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "small"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const v2, 0x7f03001b

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 118
    :goto_0
    const v2, 0x7f0a0059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->vollayout:Landroid/widget/LinearLayout;

    .line 120
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->vollayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a005b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->volTv:Landroid/widget/TextView;

    .line 122
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->vollayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a005a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->volLeft:Landroid/widget/ImageView;

    .line 124
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->vollayout:Landroid/widget/LinearLayout;

    .line 125
    const v3, 0x7f0a005c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 124
    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->volRight:Landroid/widget/ImageView;

    .line 128
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->vollayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 129
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->volLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->volRight:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v2, 0x7f0a005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->Turn:Landroid/widget/LinearLayout;

    .line 135
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->Turn:Landroid/widget/LinearLayout;

    const v3, 0x7f0a005f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->TurnTv:Landroid/widget/TextView;

    .line 137
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->Turn:Landroid/widget/LinearLayout;

    const v3, 0x7f0a005e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->turnLeft:Landroid/widget/ImageView;

    .line 139
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->Turn:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0060

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->turnRight:Landroid/widget/ImageView;

    .line 142
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->Turn:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 143
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->turnLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->turnRight:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v2, 0x7f0a0061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->scalor:Landroid/widget/LinearLayout;

    .line 149
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->scalor:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0063

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    .line 151
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->scalor:Landroid/widget/LinearLayout;

    .line 152
    const v3, 0x7f0a0062

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 151
    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->scalorLeft:Landroid/widget/ImageView;

    .line 154
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->scalor:Landroid/widget/LinearLayout;

    .line 155
    const v3, 0x7f0a0064

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 154
    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->scalorRight:Landroid/widget/ImageView;

    .line 158
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->scalor:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 159
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->scalorLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->scalorRight:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v2, 0x7f0a0065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->jiema:Landroid/widget/LinearLayout;

    .line 163
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->jiema:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0067

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->jiemaTv:Landroid/widget/TextView;

    .line 164
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->jiema:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0066

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->jiemaLeft:Landroid/widget/ImageView;

    .line 165
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->jiema:Landroid/widget/LinearLayout;

    .line 166
    const v3, 0x7f0a0068

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 165
    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->jiemaRight:Landroid/widget/ImageView;

    .line 169
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->jiema:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 170
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->jiemaLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->jiemaRight:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v2, 0x7f0a0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->starts:Landroid/widget/LinearLayout;

    .line 174
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->starts:Landroid/widget/LinearLayout;

    const v3, 0x7f0a006b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->startsTv:Landroid/widget/TextView;

    .line 175
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->starts:Landroid/widget/LinearLayout;

    .line 176
    const v3, 0x7f0a006a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 175
    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->startsLeft:Landroid/widget/ImageView;

    .line 177
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->starts:Landroid/widget/LinearLayout;

    .line 178
    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 177
    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->startsRight:Landroid/widget/ImageView;

    .line 181
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->starts:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 182
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->startsLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->startsRight:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->textsize:Landroid/widget/LinearLayout;

    .line 187
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->textsize:Landroid/widget/LinearLayout;

    const v3, 0x7f0a006f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->sizeTv:Landroid/widget/TextView;

    .line 188
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->textsize:Landroid/widget/LinearLayout;

    .line 189
    const v3, 0x7f0a006e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 188
    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->sizeLeft:Landroid/widget/ImageView;

    .line 190
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->textsize:Landroid/widget/LinearLayout;

    .line 191
    const v3, 0x7f0a0070

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 190
    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->sizeRight:Landroid/widget/ImageView;

    .line 193
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->textsize:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 194
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->sizeLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->sizeRight:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->huikan:Landroid/widget/LinearLayout;

    .line 198
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->huikan:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->huikan:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 200
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->huikan:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    const v2, 0x7f0a0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->manchannels:Landroid/widget/LinearLayout;

    .line 203
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->manchannels:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->timeout:Landroid/widget/LinearLayout;

    .line 206
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->timeout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v2, 0x7f0a0075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->bangding:Landroid/widget/LinearLayout;

    .line 209
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->bangding:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->bangding:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    const v2, 0x7f0a0076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->appline:Landroid/widget/LinearLayout;

    .line 213
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->appline:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lhdp/player/PlayerMenuContrl;->clear:Landroid/widget/LinearLayout;

    .line 219
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->clear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->clear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 221
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->clear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    invoke-virtual {p0, v1}, Lhdp/player/PlayerMenuContrl;->setContentView(Landroid/view/View;)V

    .line 225
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->huikan:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 227
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "large"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const v2, 0x7f030019

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 113
    goto/16 :goto_0

    .line 114
    :cond_1
    const v2, 0x7f03001a

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    const v4, 0x7f06004b

    .line 230
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    .line 231
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 230
    iput-object v0, p0, Lhdp/player/PlayerMenuContrl;->mAudioManager:Landroid/media/AudioManager;

    .line 232
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lhdp/player/PlayerMenuContrl;->maxvol:I

    .line 233
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget v2, p0, Lhdp/player/PlayerMenuContrl;->maxvol:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lhdp/player/PlayerMenuContrl;->tranvol:D

    .line 235
    invoke-static {}, Lhdp/http/MyApp;->getAutoLive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->startsTv:Landroid/widget/TextView;

    const v1, 0x7f060048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    :goto_0
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->jiemaTv:Landroid/widget/TextView;

    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    :cond_0
    :goto_1
    invoke-static {}, Lhdp/http/MyApp;->getTurn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->TurnTv:Landroid/widget/TextView;

    const v1, 0x7f060033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    :goto_2
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yuanshi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const v2, 0x7f06004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_3
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->startsTv:Landroid/widget/TextView;

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 242
    :cond_2
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->jiemaTv:Landroid/widget/TextView;

    const v1, 0x7f06005a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 244
    :cond_3
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->jiemaTv:Landroid/widget/TextView;

    const v1, 0x7f06005b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 250
    :cond_4
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->TurnTv:Landroid/widget/TextView;

    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 255
    :cond_5
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "16X9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    const-string v1, "16:9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 257
    :cond_6
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4X3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    const-string v1, "4:3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 259
    :cond_7
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 260
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 262
    :cond_8
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->scalorTv:Landroid/widget/TextView;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private setVolSet()V
    .locals 2

    .prologue
    .line 292
    invoke-static {}, Lhdp/http/MyApp;->getVolSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lhdp/http/MyApp;->setVolSet(Z)V

    .line 293
    invoke-static {}, Lhdp/http/MyApp;->getVolSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->volTv:Landroid/widget/TextView;

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 298
    :goto_1
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->volTv:Landroid/widget/TextView;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public ChangeJiemaModel()V
    .locals 4

    .prologue
    .line 428
    invoke-static {}, Lhdp/http/MyApp;->getVitamioStatic()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    invoke-direct {p0}, Lhdp/player/PlayerMenuContrl;->Dialog_DownvitamioSo()V

    .line 450
    :goto_0
    return-void

    .line 434
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vid"

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const-string v1, "tid"

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "lastSource"

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-string v1, "SOFT"

    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const-class v2, Lhdp/player/LivePlayerS;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 445
    :goto_1
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 447
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const-class v2, Lhdp/player/LivePlayer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public ChangeJiemaModel(Ljava/lang/String;)V
    .locals 4
    .param p1, "jiematype"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-static {}, Lhdp/http/MyApp;->getVitamioStatic()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    invoke-direct {p0}, Lhdp/player/PlayerMenuContrl;->Dialog_DownvitamioSo()V

    .line 486
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 472
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vid"

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    const-string v1, "tid"

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v1, "lastSource"

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v1, "SOFT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const-class v2, Lhdp/player/LivePlayerS;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 482
    :cond_1
    :goto_1
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 483
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 478
    :cond_2
    const-string v1, "AUTO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const-class v2, Lhdp/player/LivePlayer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public ChangeJiemaType(Ljava/lang/String;)V
    .locals 7
    .param p1, "direction"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f06005c

    const v5, 0x7f06005b

    const v4, 0x7f06005a

    .line 387
    const-string v1, "LEFT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const/4 v0, 0x1

    .local v0, "a":I
    :goto_0
    iget v1, p0, Lhdp/player/PlayerMenuContrl;->jmLength:I

    if-le v0, v1, :cond_2

    .line 403
    .end local v0    # "a":I
    :cond_0
    :goto_1
    const-string v1, "RIGHT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    const/4 v0, 0x1

    .restart local v0    # "a":I
    :goto_2
    iget v1, p0, Lhdp/player/PlayerMenuContrl;->jmLength:I

    if-le v0, v1, :cond_6

    .line 418
    .end local v0    # "a":I
    :cond_1
    :goto_3
    return-void

    .line 389
    .restart local v0    # "a":I
    :cond_2
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lhdp/http/MyApp;->jiemaContent:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 390
    sget-object v1, Lhdp/http/MyApp;->jiemaContent:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lhdp/player/PlayerMenuContrl;->jmLength:I

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-static {v1}, Lhdp/http/MyApp;->setJiemaType(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->jiemaTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 393
    :cond_3
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 394
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->jiemaTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 395
    :cond_4
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SOFT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->jiemaTv:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 388
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_6
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lhdp/http/MyApp;->jiemaContent:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 406
    sget-object v1, Lhdp/http/MyApp;->jiemaContent:[Ljava/lang/String;

    iget v2, p0, Lhdp/player/PlayerMenuContrl;->jmLength:I

    rem-int v2, v0, v2

    aget-object v1, v1, v2

    invoke-static {v1}, Lhdp/http/MyApp;->setJiemaType(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 408
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->jiemaTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 409
    :cond_7
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 410
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->jiemaTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 411
    :cond_8
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SOFT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->jiemaTv:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 404
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public MyUploadTv()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 887
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    .line 888
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/mytv.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 887
    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 889
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 891
    .local v6, "modifiedTime":J
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lhdp/http/MyApp;->getMytvtime()J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-nez v10, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    invoke-static {v1}, Lhdp/http/MyApp;->parseTxt(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    .line 897
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 899
    .local v0, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_2

    .line 923
    iget-object v10, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-static {v10}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v10

    .line 924
    const-string v11, "custom01"

    .line 923
    invoke-virtual {v10, v11}, Lhdp/util/LiveDataHelper;->deleteChannels(Ljava/lang/String;)V

    .line 925
    iget-object v10, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    invoke-static {v10}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v10

    invoke-virtual {v10, v0}, Lhdp/util/LiveDataHelper;->insertChannels(Ljava/util/ArrayList;)V

    .line 926
    iget-object v10, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const-string v11, "\u5bfc\u5165\u81ea\u5b9a\u4e49\u8282\u76ee\u6210\u529f\uff01"

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 931
    .end local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .end local v2    # "i":I
    :goto_2
    const/4 v3, 0x0

    .line 932
    invoke-static {v6, v7}, Lhdp/http/MyApp;->setMytvtime(J)V

    goto :goto_0

    .line 901
    .restart local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v8, v10, v14

    .line 902
    .local v8, "url_1":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v10, v10, v13

    const-string v11, ";"

    const-string v12, "#"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 904
    .local v9, "url_2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 912
    new-instance v4, Lhdp/javabean/LiveChannelInfo;

    invoke-direct {v4}, Lhdp/javabean/LiveChannelInfo;-><init>()V

    .line 913
    .local v4, "live":Lhdp/javabean/LiveChannelInfo;
    add-int/lit16 v10, v2, 0x4e21

    iput v10, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    .line 914
    iget v10, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    iput v10, v4, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 915
    iput-object v8, v4, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 916
    new-array v10, v13, [Ljava/lang/String;

    aput-object v9, v10, v14

    iput-object v10, v4, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 917
    new-array v10, v13, [Ljava/lang/String;

    const-string v11, "custom01"

    aput-object v11, v10, v14

    iput-object v10, v4, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    .line 918
    const-string v10, "custom01"

    iput-object v10, v4, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    .line 919
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    .end local v4    # "live":Lhdp/javabean/LiveChannelInfo;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 904
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhdp/javabean/LiveChannelInfo;

    .line 905
    .local v5, "liveChannelInfo":Lhdp/javabean/LiveChannelInfo;
    iget-object v11, v5, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 906
    new-array v10, v13, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v5, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    aget-object v12, v12, v14

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 907
    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v14

    .line 906
    iput-object v10, v5, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    goto :goto_3

    .line 928
    .end local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .end local v2    # "i":I
    .end local v5    # "liveChannelInfo":Lhdp/javabean/LiveChannelInfo;
    .end local v8    # "url_1":Ljava/lang/String;
    .end local v9    # "url_2":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const-string v11, "\u5bfc\u5165\u5931\u8d25,\u53ef\u80fd\u6709\u683c\u5f0f\u9519\u8bef\uff01"

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2
.end method

.method public SetState(Lhdp/javabean/LiveChannelInfo;)V
    .locals 2
    .param p1, "channelInfo"    # Lhdp/javabean/LiveChannelInfo;

    .prologue
    .line 957
    iput-object p1, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    .line 959
    invoke-static {}, Lhdp/http/MyApp;->getVolSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->volTv:Landroid/widget/TextView;

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 964
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->volTv:Landroid/widget/TextView;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public checkPort()I
    .locals 5

    .prologue
    .line 823
    const-string v1, ""

    .line 824
    .local v1, "my_port":Ljava/lang/String;
    iget-object v3, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 825
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lhdp/player/PlayerMenuContrl;->_port:I

    .line 827
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    sget v3, Lhdp/player/PlayerMenuContrl;->_port:I

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    .line 828
    .local v2, "s":Ljava/net/ServerSocket;
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    .end local v2    # "s":Ljava/net/ServerSocket;
    :cond_0
    :goto_0
    sget v3, Lhdp/player/PlayerMenuContrl;->_port:I

    return v3

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/io/IOException;
    instance-of v3, v0, Ljava/net/BindException;

    if-eqz v3, :cond_0

    .line 831
    iget-object v3, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const v4, 0x7f06006d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 832
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 833
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lhdp/player/PlayerMenuContrl;->_port:I

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 937
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 938
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 939
    return-void
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 841
    const-string v4, ""

    .line 844
    .local v4, "ip":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 859
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    const-string v5, "null"

    :goto_1
    return-object v5

    .line 845
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 847
    .local v3, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 848
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 849
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 850
    instance-of v5, v2, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 851
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    move-object v5, v4

    .line 852
    goto :goto_1

    .line 856
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 723
    const/4 v1, 0x0

    .line 725
    .local v1, "nothide":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 815
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 817
    if-nez v1, :cond_0

    .line 818
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    :cond_0
    return-void

    .line 728
    :pswitch_1
    invoke-direct {p0}, Lhdp/player/PlayerMenuContrl;->setVolSet()V

    goto :goto_0

    .line 732
    :pswitch_2
    invoke-direct {p0}, Lhdp/player/PlayerMenuContrl;->setVolSet()V

    goto :goto_0

    .line 735
    :pswitch_3
    const-string v2, "LEFT"

    invoke-virtual {p0, v2}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaType(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaModel()V

    goto :goto_0

    .line 739
    :pswitch_4
    const-string v2, "RIGHT"

    invoke-virtual {p0, v2}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaType(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaModel()V

    goto :goto_0

    .line 743
    :pswitch_5
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->setTurn()V

    goto :goto_0

    .line 746
    :pswitch_6
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->setTurn()V

    goto :goto_0

    .line 749
    :pswitch_7
    invoke-direct {p0, v4}, Lhdp/player/PlayerMenuContrl;->changScale_Live(I)V

    goto :goto_0

    .line 752
    :pswitch_8
    invoke-direct {p0, v3}, Lhdp/player/PlayerMenuContrl;->changScale_Live(I)V

    goto :goto_0

    .line 755
    :pswitch_9
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->setStartLive()V

    goto :goto_0

    .line 758
    :pswitch_a
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->setStartLive()V

    goto :goto_0

    .line 761
    :pswitch_b
    invoke-virtual {p0, v4}, Lhdp/player/PlayerMenuContrl;->setFontType(I)V

    goto :goto_0

    .line 764
    :pswitch_c
    invoke-virtual {p0, v3}, Lhdp/player/PlayerMenuContrl;->setFontType(I)V

    goto :goto_0

    .line 767
    :pswitch_d
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const-class v5, Lhdp/player/ManChannel;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 768
    const/4 v1, 0x1

    .line 769
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    goto :goto_0

    .line 772
    :pswitch_e
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_2

    .line 773
    :cond_1
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const v3, 0x7f060046

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 774
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 781
    :goto_1
    const/4 v1, 0x1

    .line 782
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    goto :goto_0

    .line 776
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    const-class v3, Lhdp/player/HuiboList;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 777
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "huibo"

    iget-object v3, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    iget-object v3, v3, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const-string v2, "type"

    iget-object v3, p0, Lhdp/player/PlayerMenuContrl;->channel:Lhdp/javabean/LiveChannelInfo;

    iget-object v3, v3, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 785
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_f
    invoke-direct {p0}, Lhdp/player/PlayerMenuContrl;->Clear_app()V

    .line 786
    const/4 v1, 0x1

    .line 787
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    goto/16 :goto_0

    .line 790
    :pswitch_10
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    .line 791
    const-class v5, Lhdp/player/TimeActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 790
    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 792
    const/4 v1, 0x1

    .line 793
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    goto/16 :goto_0

    .line 796
    :pswitch_11
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    .line 797
    const-class v5, Lhdp/player/AppActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 796
    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 798
    const/4 v1, 0x1

    .line 799
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    goto/16 :goto_0

    .line 808
    :pswitch_12
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;

    .line 809
    const-class v5, Lhdp/player/Bangding;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 808
    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 810
    const/4 v1, 0x1

    .line 811
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    goto/16 :goto_0

    .line 725
    :pswitch_data_0
    .packed-switch 0x7f0a005a
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_f
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, -0x1

    const-wide/16 v3, 0x1f40

    const/4 v0, 0x1

    .line 612
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x52

    if-ne p2, v1, :cond_1

    .line 613
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    .line 685
    :cond_0
    :goto_0
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 686
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 687
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 614
    :cond_1
    const/16 v1, 0x15

    if-ne p2, v1, :cond_2

    .line 615
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 616
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 620
    :sswitch_0
    invoke-direct {p0}, Lhdp/player/PlayerMenuContrl;->setVolSet()V

    goto :goto_0

    .line 623
    :sswitch_1
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->setStartLive()V

    goto :goto_0

    .line 626
    :sswitch_2
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->setTurn()V

    goto :goto_0

    .line 629
    :sswitch_3
    invoke-direct {p0, v2}, Lhdp/player/PlayerMenuContrl;->changScale_Live(I)V

    goto :goto_0

    .line 632
    :sswitch_4
    const-string v0, "LEFT"

    invoke-virtual {p0, v0}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaType(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaModel()V

    goto :goto_0

    .line 636
    :sswitch_5
    invoke-virtual {p0, v2}, Lhdp/player/PlayerMenuContrl;->setFontType(I)V

    .line 637
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaModel()V

    goto :goto_0

    .line 640
    :cond_2
    const/16 v1, 0x16

    if-ne p2, v1, :cond_3

    .line 641
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 642
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 643
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 646
    :sswitch_6
    invoke-direct {p0}, Lhdp/player/PlayerMenuContrl;->setVolSet()V

    goto :goto_0

    .line 649
    :sswitch_7
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->setStartLive()V

    goto :goto_0

    .line 652
    :sswitch_8
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->setTurn()V

    goto :goto_0

    .line 655
    :sswitch_9
    invoke-direct {p0, v0}, Lhdp/player/PlayerMenuContrl;->changScale_Live(I)V

    goto :goto_0

    .line 658
    :sswitch_a
    const-string v0, "RIGHT"

    invoke-virtual {p0, v0}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaType(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaModel()V

    goto :goto_0

    .line 662
    :sswitch_b
    invoke-virtual {p0, v0}, Lhdp/player/PlayerMenuContrl;->setFontType(I)V

    .line 663
    invoke-virtual {p0}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaModel()V

    goto :goto_0

    .line 667
    :cond_3
    const/16 v1, 0x14

    if-ne p2, v1, :cond_4

    .line 668
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0077

    if-ne v1, v2, :cond_0

    .line 670
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->vollayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 671
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 672
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 676
    :cond_4
    const/16 v1, 0x13

    if-ne p2, v1, :cond_0

    .line 677
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0059

    if-ne v1, v2, :cond_0

    .line 679
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->clear:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 680
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 681
    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 617
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0059 -> :sswitch_0
        0x7f0a005d -> :sswitch_2
        0x7f0a0061 -> :sswitch_3
        0x7f0a0065 -> :sswitch_4
        0x7f0a0069 -> :sswitch_1
        0x7f0a006d -> :sswitch_5
    .end sparse-switch

    .line 643
    :sswitch_data_1
    .sparse-switch
        0x7f0a0059 -> :sswitch_6
        0x7f0a005d -> :sswitch_8
        0x7f0a0061 -> :sswitch_9
        0x7f0a0065 -> :sswitch_a
        0x7f0a0069 -> :sswitch_7
        0x7f0a006d -> :sswitch_b
    .end sparse-switch
.end method

.method public setFontType(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const v4, 0x7f06005f

    const v3, 0x7f06005e

    const v2, 0x7f06005d

    .line 692
    packed-switch p1, :pswitch_data_0

    .line 718
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 694
    :pswitch_1
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    const-string v0, "middle"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvSize(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->sizeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 697
    :cond_1
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    const-string v0, "large"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvSize(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->sizeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 700
    :cond_2
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const-string v0, "small"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvSize(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->sizeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 706
    :pswitch_2
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    const-string v0, "small"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvSize(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->sizeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 709
    :cond_3
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 710
    const-string v0, "middle"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvSize(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->sizeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 712
    :cond_4
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    const-string v0, "large"

    invoke-static {v0}, Lhdp/http/MyApp;->setTvSize(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->sizeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStartLive()V
    .locals 2

    .prologue
    .line 304
    invoke-static {}, Lhdp/http/MyApp;->getAutoLive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->startsTv:Landroid/widget/TextView;

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    const/4 v0, 0x0

    invoke-static {v0}, Lhdp/http/MyApp;->setAutoLive(Z)V

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->startsTv:Landroid/widget/TextView;

    const v1, 0x7f060048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 309
    const/4 v0, 0x1

    invoke-static {v0}, Lhdp/http/MyApp;->setAutoLive(Z)V

    goto :goto_0
.end method

.method public setTurn()V
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Lhdp/http/MyApp;->getTurn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->TurnTv:Landroid/widget/TextView;

    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 319
    const/4 v0, 0x0

    invoke-static {v0}, Lhdp/http/MyApp;->setTurn(Z)V

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->TurnTv:Landroid/widget/TextView;

    const v1, 0x7f060033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 322
    const/4 v0, 0x1

    invoke-static {v0}, Lhdp/http/MyApp;->setTurn(Z)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 943
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 944
    iget-object v0, p0, Lhdp/player/PlayerMenuContrl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/PlayerMenuContrl;->autoHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 945
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 946
    return-void
.end method
