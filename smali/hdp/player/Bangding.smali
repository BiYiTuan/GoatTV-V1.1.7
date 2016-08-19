.class public Lhdp/player/Bangding;
.super Landroid/app/Activity;
.source "Bangding.java"


# instance fields
.field private HasTime:Z

.field button:Landroid/widget/Button;

.field private checkcode:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private i:I

.field layout_bd:Landroid/widget/LinearLayout;

.field layout_ok:Landroid/widget/RelativeLayout;

.field private progressDialog:Landroid/app/ProgressDialog;

.field runnable:Ljava/lang/Runnable;

.field runnable_check:Ljava/lang/Runnable;

.field runnable_clear:Ljava/lang/Runnable;

.field runnable_get:Ljava/lang/Runnable;

.field runnable_remove:Ljava/lang/Runnable;

.field runnable_time:Ljava/lang/Runnable;

.field textView_bangok:Landroid/widget/TextView;

.field textView_code:Landroid/widget/TextView;

.field textView_mac:Landroid/widget/TextView;

.field textView_time:Landroid/widget/TextView;

.field textView_user:Landroid/widget/TextView;

.field textView_wangzhi:Landroid/widget/TextView;

.field thread_remove:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/16 v0, 0x12c

    iput v0, p0, Lhdp/player/Bangding;->i:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/player/Bangding;->HasTime:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/Bangding;->checkcode:Ljava/lang/String;

    .line 103
    new-instance v0, Lhdp/player/Bangding$1;

    invoke-direct {v0, p0}, Lhdp/player/Bangding$1;-><init>(Lhdp/player/Bangding;)V

    iput-object v0, p0, Lhdp/player/Bangding;->handler:Landroid/os/Handler;

    .line 145
    new-instance v0, Lhdp/player/Bangding$2;

    invoke-direct {v0, p0}, Lhdp/player/Bangding$2;-><init>(Lhdp/player/Bangding;)V

    iput-object v0, p0, Lhdp/player/Bangding;->runnable:Ljava/lang/Runnable;

    .line 169
    new-instance v0, Lhdp/player/Bangding$3;

    invoke-direct {v0, p0}, Lhdp/player/Bangding$3;-><init>(Lhdp/player/Bangding;)V

    iput-object v0, p0, Lhdp/player/Bangding;->runnable_time:Ljava/lang/Runnable;

    .line 188
    new-instance v0, Lhdp/player/Bangding$4;

    invoke-direct {v0, p0}, Lhdp/player/Bangding$4;-><init>(Lhdp/player/Bangding;)V

    iput-object v0, p0, Lhdp/player/Bangding;->runnable_check:Ljava/lang/Runnable;

    .line 246
    new-instance v0, Lhdp/player/Bangding$5;

    invoke-direct {v0, p0}, Lhdp/player/Bangding$5;-><init>(Lhdp/player/Bangding;)V

    iput-object v0, p0, Lhdp/player/Bangding;->runnable_clear:Ljava/lang/Runnable;

    .line 265
    new-instance v0, Lhdp/player/Bangding$6;

    invoke-direct {v0, p0}, Lhdp/player/Bangding$6;-><init>(Lhdp/player/Bangding;)V

    iput-object v0, p0, Lhdp/player/Bangding;->runnable_get:Ljava/lang/Runnable;

    .line 285
    new-instance v0, Lhdp/player/Bangding$7;

    invoke-direct {v0, p0}, Lhdp/player/Bangding$7;-><init>(Lhdp/player/Bangding;)V

    iput-object v0, p0, Lhdp/player/Bangding;->runnable_remove:Ljava/lang/Runnable;

    .line 292
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/Bangding;->runnable_remove:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lhdp/player/Bangding;->thread_remove:Ljava/lang/Thread;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lhdp/player/Bangding;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lhdp/player/Bangding;->i:I

    return v0
.end method

.method static synthetic access$1(Lhdp/player/Bangding;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lhdp/player/Bangding;->HasTime:Z

    return-void
.end method

.method static synthetic access$2(Lhdp/player/Bangding;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lhdp/player/Bangding;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lhdp/player/Bangding;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lhdp/player/Bangding;->checkcode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lhdp/player/Bangding;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lhdp/player/Bangding;->checkcode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lhdp/player/Bangding;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lhdp/player/Bangding;->i:I

    return-void
.end method

.method static synthetic access$6(Lhdp/player/Bangding;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lhdp/player/Bangding;->HasTime:Z

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lhdp/player/Bangding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/Bangding;->textView_code:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lhdp/player/Bangding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/Bangding;->textView_time:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lhdp/player/Bangding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/Bangding;->textView_user:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lhdp/player/Bangding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/Bangding;->textView_wangzhi:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lhdp/player/Bangding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/Bangding;->textView_bangok:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lhdp/player/Bangding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/Bangding;->textView_mac:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lhdp/player/Bangding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhdp/player/Bangding;->layout_bd:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lhdp/player/Bangding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhdp/player/Bangding;->layout_ok:Landroid/widget/RelativeLayout;

    .line 82
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lhdp/player/Bangding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhdp/player/Bangding;->button:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lhdp/player/Bangding;->textView_mac:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhdp/http/MyApp;->getmacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    invoke-static {}, Lhdp/http/MyApp;->GetUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhdp/player/Bangding;->progressDialog:Landroid/app/ProgressDialog;

    .line 90
    iget-object v0, p0, Lhdp/player/Bangding;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 91
    iget-object v0, p0, Lhdp/player/Bangding;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060090

    invoke-virtual {p0, v1}, Lhdp/player/Bangding;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lhdp/player/Bangding;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 93
    iget-object v0, p0, Lhdp/player/Bangding;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lhdp/player/Bangding$8;

    invoke-direct {v1, p0}, Lhdp/player/Bangding$8;-><init>(Lhdp/player/Bangding;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 100
    iget-object v0, p0, Lhdp/player/Bangding;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 101
    return-void
.end method


# virtual methods
.method public Cancel(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p0}, Lhdp/player/Bangding;->finish()V

    .line 244
    return-void
.end method

.method public ReBang(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 234
    const v1, 0x7f06004e

    new-instance v2, Lhdp/player/Bangding$9;

    invoke-direct {v2, p0}, Lhdp/player/Bangding$9;-><init>(Lhdp/player/Bangding;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 239
    const v1, 0x7f06004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 240
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lhdp/player/Bangding;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lhdp/player/Bangding;->init()V

    .line 60
    invoke-static {}, Lhdp/http/MyApp;->GetUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 61
    invoke-static {}, Lhdp/http/MyApp;->getmacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 62
    const v0, 0x7f06009b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lhdp/http/MyApp;->getmacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhdp/http/MyApp;->SetUUID(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/Bangding;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/Bangding;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhdp/player/Bangding;->HasTime:Z

    .line 230
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 223
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 218
    return-void
.end method
