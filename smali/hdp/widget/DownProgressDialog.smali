.class public Lhdp/widget/DownProgressDialog;
.super Landroid/app/ProgressDialog;
.source "DownProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/widget/DownProgressDialog$OnDownloadListening;
    }
.end annotation


# instance fields
.field private final DOWNLOAD_COMPLETED:I

.field private Isok:Z

.field private final SendProgess:I

.field private StopDownload:Z

.field private down_url:Ljava/lang/String;

.field downloadListening:Lhdp/widget/DownProgressDialog$OnDownloadListening;

.field handler:Landroid/os/Handler;

.field private local_path:Ljava/lang/String;

.field private progess:I

.field runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "down_url"    # Ljava/lang/String;
    .param p3, "local_path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 21
    iput-boolean v0, p0, Lhdp/widget/DownProgressDialog;->StopDownload:Z

    .line 22
    iput-boolean v0, p0, Lhdp/widget/DownProgressDialog;->Isok:Z

    .line 57
    iput v0, p0, Lhdp/widget/DownProgressDialog;->SendProgess:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lhdp/widget/DownProgressDialog;->DOWNLOAD_COMPLETED:I

    .line 60
    new-instance v0, Lhdp/widget/DownProgressDialog$1;

    invoke-direct {v0, p0}, Lhdp/widget/DownProgressDialog$1;-><init>(Lhdp/widget/DownProgressDialog;)V

    iput-object v0, p0, Lhdp/widget/DownProgressDialog;->handler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lhdp/widget/DownProgressDialog$2;

    invoke-direct {v0, p0}, Lhdp/widget/DownProgressDialog$2;-><init>(Lhdp/widget/DownProgressDialog;)V

    iput-object v0, p0, Lhdp/widget/DownProgressDialog;->runnable:Ljava/lang/Runnable;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lhdp/widget/DownProgressDialog;->downloadListening:Lhdp/widget/DownProgressDialog$OnDownloadListening;

    .line 27
    iput-object p2, p0, Lhdp/widget/DownProgressDialog;->down_url:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lhdp/widget/DownProgressDialog;->local_path:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lhdp/widget/DownProgressDialog;->init()V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lhdp/widget/DownProgressDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lhdp/widget/DownProgressDialog;->local_path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lhdp/widget/DownProgressDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lhdp/widget/DownProgressDialog;->down_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lhdp/widget/DownProgressDialog;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lhdp/widget/DownProgressDialog;->StopDownload:Z

    return v0
.end method

.method static synthetic access$3(Lhdp/widget/DownProgressDialog;I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lhdp/widget/DownProgressDialog;->progess:I

    return-void
.end method

.method static synthetic access$4(Lhdp/widget/DownProgressDialog;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lhdp/widget/DownProgressDialog;->progess:I

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v1}, Lhdp/widget/DownProgressDialog;->setProgress(I)V

    .line 34
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lhdp/widget/DownProgressDialog;->setMax(I)V

    .line 36
    invoke-virtual {p0, v1}, Lhdp/widget/DownProgressDialog;->setIndeterminate(Z)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhdp/widget/DownProgressDialog;->setProgressStyle(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public StopDownload()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/widget/DownProgressDialog;->StopDownload:Z

    .line 126
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 54
    invoke-virtual {p0}, Lhdp/widget/DownProgressDialog;->StopDownload()V

    .line 55
    return-void
.end method

.method public setOnDownloadListening(Lhdp/widget/DownProgressDialog$OnDownloadListening;)V
    .locals 0
    .param p1, "listening"    # Lhdp/widget/DownProgressDialog$OnDownloadListening;

    .prologue
    .line 135
    iput-object p1, p0, Lhdp/widget/DownProgressDialog;->downloadListening:Lhdp/widget/DownProgressDialog$OnDownloadListening;

    .line 136
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V

    .line 46
    iput-boolean v0, p0, Lhdp/widget/DownProgressDialog;->StopDownload:Z

    .line 47
    iput-boolean v0, p0, Lhdp/widget/DownProgressDialog;->Isok:Z

    .line 48
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/widget/DownProgressDialog;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    return-void
.end method
