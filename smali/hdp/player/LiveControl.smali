.class public Lhdp/player/LiveControl;
.super Landroid/widget/LinearLayout;
.source "LiveControl.java"


# static fields
.field public static final PREPARED:I = 0x1

.field public static final PREPARING:I


# instance fields
.field private final AUTO_DISMISS:I

.field private Can_TestSpeed:Z

.field private EPG:Ljava/lang/String;

.field private Progress_int:I

.field private final Speedkb:I

.field private bar:Landroid/widget/ProgressBar;

.field private channelInfo:Lhdp/javabean/LiveChannelInfo;

.field public channleEPG1:Landroid/widget/TextView;

.field public channleEPG2:Landroid/widget/TextView;

.field private channleName:Landroid/widget/TextView;

.field private channleNum:Landroid/widget/TextView;

.field private channleSource:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private currentTime:J

.field public cwTime:Landroid/widget/TextView;

.field private flag:I

.field private getEpg:Ljava/lang/Runnable;

.field handler:Landroid/os/Handler;

.field private hide:Ljava/lang/Runnable;

.field private mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field proRunnable:Ljava/lang/Runnable;

.field public realSpeed:Landroid/widget/TextView;

.field private speed:Ljava/lang/Runnable;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, 0x1388

    iput v0, p0, Lhdp/player/LiveControl;->AUTO_DISMISS:I

    .line 31
    iput-boolean v2, p0, Lhdp/player/LiveControl;->Can_TestSpeed:Z

    .line 32
    iput v2, p0, Lhdp/player/LiveControl;->Speedkb:I

    .line 38
    iput v1, p0, Lhdp/player/LiveControl;->Progress_int:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lhdp/player/LiveControl;->EPG:Ljava/lang/String;

    .line 43
    iput v1, p0, Lhdp/player/LiveControl;->flag:I

    .line 73
    new-instance v0, Lhdp/player/LiveControl$1;

    invoke-direct {v0, p0}, Lhdp/player/LiveControl$1;-><init>(Lhdp/player/LiveControl;)V

    iput-object v0, p0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lhdp/player/LiveControl$2;

    invoke-direct {v0, p0}, Lhdp/player/LiveControl$2;-><init>(Lhdp/player/LiveControl;)V

    iput-object v0, p0, Lhdp/player/LiveControl;->speed:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lhdp/player/LiveControl$3;

    invoke-direct {v0, p0}, Lhdp/player/LiveControl$3;-><init>(Lhdp/player/LiveControl;)V

    iput-object v0, p0, Lhdp/player/LiveControl;->proRunnable:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Lhdp/player/LiveControl$4;

    invoke-direct {v0, p0}, Lhdp/player/LiveControl$4;-><init>(Lhdp/player/LiveControl;)V

    iput-object v0, p0, Lhdp/player/LiveControl;->getEpg:Ljava/lang/Runnable;

    .line 253
    new-instance v0, Lhdp/player/LiveControl$5;

    invoke-direct {v0, p0}, Lhdp/player/LiveControl$5;-><init>(Lhdp/player/LiveControl;)V

    iput-object v0, p0, Lhdp/player/LiveControl;->hide:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lhdp/player/LiveControl;->context:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lhdp/player/LiveControl;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lhdp/player/LiveControl;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lhdp/player/LiveControl;->Can_TestSpeed:Z

    return-void
.end method

.method static synthetic access$1(Lhdp/player/LiveControl;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lhdp/player/LiveControl;->Can_TestSpeed:Z

    return v0
.end method

.method static synthetic access$2(Lhdp/player/LiveControl;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lhdp/player/LiveControl;->Progress_int:I

    return v0
.end method

.method static synthetic access$3(Lhdp/player/LiveControl;I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lhdp/player/LiveControl;->Progress_int:I

    return-void
.end method

.method static synthetic access$4(Lhdp/player/LiveControl;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lhdp/player/LiveControl;->bar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lhdp/player/LiveControl;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lhdp/player/LiveControl;->getEpg()V

    return-void
.end method

.method static synthetic access$6(Lhdp/player/LiveControl;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lhdp/player/LiveControl;->flag:I

    return v0
.end method

.method static synthetic access$7(Lhdp/player/LiveControl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lhdp/player/LiveControl;->hide:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lhdp/player/LiveControl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lhdp/player/LiveControl;->EPG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lhdp/player/LiveControl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lhdp/player/LiveControl;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getEpg()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lhdp/http/HttpWorkTask;

    new-instance v1, Lhdp/player/LiveControl$6;

    invoke-direct {v1, p0}, Lhdp/player/LiveControl$6;-><init>(Lhdp/player/LiveControl;)V

    .line 234
    new-instance v2, Lhdp/player/LiveControl$7;

    invoke-direct {v2, p0}, Lhdp/player/LiveControl$7;-><init>(Lhdp/player/LiveControl;)V

    .line 220
    invoke-direct {v0, v1, v2}, Lhdp/http/HttpWorkTask;-><init>(Lhdp/http/HttpWorkTask$ParseCallBack;Lhdp/http/HttpWorkTask$PostCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 250
    invoke-virtual {v0, v1}, Lhdp/http/HttpWorkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0}, Lhdp/player/LiveControl;->initFloatingWindowLayout()V

    .line 55
    iget-object v2, p0, Lhdp/player/LiveControl;->context:Landroid/content/Context;

    .line 56
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030015

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0a0044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    iput-object v2, p0, Lhdp/player/LiveControl;->channleName:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    iput-object v2, p0, Lhdp/player/LiveControl;->channleSource:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    iput-object v2, p0, Lhdp/player/LiveControl;->channleEPG1:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f0a004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    iput-object v2, p0, Lhdp/player/LiveControl;->channleEPG2:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f0a0045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    iput-object v2, p0, Lhdp/player/LiveControl;->channleNum:Landroid/widget/TextView;

    .line 68
    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lhdp/player/LiveControl;->realSpeed:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f0a004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lhdp/player/LiveControl;->cwTime:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f0a0048

    invoke-virtual {p0, v2}, Lhdp/player/LiveControl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lhdp/player/LiveControl;->bar:Landroid/widget/ProgressBar;

    .line 71
    return-void
.end method

.method private initFloatingWindowLayout()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lhdp/player/LiveControl;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lhdp/player/LiveControl;->wm:Landroid/view/WindowManager;

    .line 95
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lhdp/player/LiveControl;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 96
    iget-object v0, p0, Lhdp/player/LiveControl;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 97
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 98
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 99
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 101
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    const/high16 v1, 0x10a0000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 104
    return-void
.end method


# virtual methods
.method public HuiBoTv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lhdp/player/LiveControl;->channleEPG1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lhdp/player/LiveControl;->channleEPG2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public SetchannelInfo(Lhdp/javabean/LiveChannelInfo;)V
    .locals 4
    .param p1, "channelInfo"    # Lhdp/javabean/LiveChannelInfo;

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lhdp/player/LiveControl;->channleNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lhdp/player/LiveControl;->channleName:Landroid/widget/TextView;

    iget-object v1, p1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lhdp/player/LiveControl;->channleSource:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhdp/player/LiveControl;->context:Landroid/content/Context;

    const v3, 0x7f060043

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    iget v2, p1, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    invoke-virtual {p1}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p1, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    iput-object v0, p0, Lhdp/player/LiveControl;->EPG:Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhdp/player/LiveControl;->setState(I)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lhdp/player/LiveControl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lhdp/player/LiveControl;->wm:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 270
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhdp/player/LiveControl;->Can_TestSpeed:Z

    .line 272
    iget-object v0, p0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method longToSec(J)Ljava/lang/String;
    .locals 5
    .param p1, "timeMS"    # J

    .prologue
    .line 300
    long-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v0, v1, v2

    .line 301
    .local v0, "seconds":F
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lhdp/player/LiveControl;->context:Landroid/content/Context;

    const v3, 0x7f060047

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lhdp/player/LiveControl;->channleSource:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method

.method public setState(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    const/4 v2, 0x0

    .line 164
    iput p1, p0, Lhdp/player/LiveControl;->flag:I

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 168
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/LiveControl;->speed:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    iget-object v0, p0, Lhdp/player/LiveControl;->bar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 171
    iget-object v0, p0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 173
    const/16 v0, -0xa

    iput v0, p0, Lhdp/player/LiveControl;->Progress_int:I

    .line 174
    iget-object v0, p0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveControl;->proRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhdp/player/LiveControl;->currentTime:J

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lhdp/player/LiveControl;->bar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 183
    iget-object v0, p0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LiveControl;->hide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    iget-object v0, p0, Lhdp/player/LiveControl;->cwTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lhdp/player/LiveControl;->currentTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lhdp/player/LiveControl;->longToSec(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 5

    .prologue
    .line 195
    iget-object v1, p0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/player/LiveControl;->hide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    iget-object v1, p0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/player/LiveControl;->hide:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    iget-object v1, p0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/player/LiveControl;->getEpg:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    sget-boolean v1, Lhdp/player/BaseActivity;->IsHuiBo:Z

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lhdp/player/LiveControl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/player/LiveControl;->getEpg:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_0
    invoke-virtual {p0}, Lhdp/player/LiveControl;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 205
    :try_start_0
    iget-object v1, p0, Lhdp/player/LiveControl;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lhdp/player/LiveControl;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
