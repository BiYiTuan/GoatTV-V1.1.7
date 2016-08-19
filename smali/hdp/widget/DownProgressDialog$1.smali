.class Lhdp/widget/DownProgressDialog$1;
.super Landroid/os/Handler;
.source "DownProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/widget/DownProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/DownProgressDialog;


# direct methods
.method constructor <init>(Lhdp/widget/DownProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/DownProgressDialog$1;->this$0:Lhdp/widget/DownProgressDialog;

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 65
    .local v0, "progress":I
    iget-object v1, p0, Lhdp/widget/DownProgressDialog$1;->this$0:Lhdp/widget/DownProgressDialog;

    invoke-virtual {v1, v0}, Lhdp/widget/DownProgressDialog;->setProgress(I)V

    .line 66
    iget-object v1, p0, Lhdp/widget/DownProgressDialog$1;->this$0:Lhdp/widget/DownProgressDialog;

    iget-object v1, v1, Lhdp/widget/DownProgressDialog;->downloadListening:Lhdp/widget/DownProgressDialog$OnDownloadListening;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lhdp/widget/DownProgressDialog$1;->this$0:Lhdp/widget/DownProgressDialog;

    iget-object v1, v1, Lhdp/widget/DownProgressDialog;->downloadListening:Lhdp/widget/DownProgressDialog$OnDownloadListening;

    invoke-interface {v1, v0}, Lhdp/widget/DownProgressDialog$OnDownloadListening;->DownloadListening(I)V

    goto :goto_0

    .line 71
    .end local v0    # "progress":I
    :pswitch_1
    iget-object v1, p0, Lhdp/widget/DownProgressDialog$1;->this$0:Lhdp/widget/DownProgressDialog;

    iget-object v1, v1, Lhdp/widget/DownProgressDialog;->downloadListening:Lhdp/widget/DownProgressDialog$OnDownloadListening;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lhdp/widget/DownProgressDialog$OnDownloadListening;->DownloadListening(I)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
