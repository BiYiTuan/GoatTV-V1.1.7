.class Lhdp/widget/VitamioSoDownloadDialog$1;
.super Ljava/lang/Object;
.source "VitamioSoDownloadDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/widget/VitamioSoDownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/VitamioSoDownloadDialog;


# direct methods
.method constructor <init>(Lhdp/widget/VitamioSoDownloadDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/VitamioSoDownloadDialog$1;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog$1;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lhdp/widget/VitamioSoDownloadDialog;->setProgress(II)V
    invoke-static {v0, v1, v2}, Lhdp/widget/VitamioSoDownloadDialog;->access$0(Lhdp/widget/VitamioSoDownloadDialog;II)V

    .line 103
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog$1;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    iget-object v0, v0, Lhdp/widget/VitamioSoDownloadDialog;->onProgressListener:Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog$1;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    iget-object v0, v0, Lhdp/widget/VitamioSoDownloadDialog;->onProgressListener:Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;

    iget-object v1, p0, Lhdp/widget/VitamioSoDownloadDialog$1;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    # getter for: Lhdp/widget/VitamioSoDownloadDialog;->progess:I
    invoke-static {v1}, Lhdp/widget/VitamioSoDownloadDialog;->access$1(Lhdp/widget/VitamioSoDownloadDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;->onProgressChange(I)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog$1;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    iget-object v0, v0, Lhdp/widget/VitamioSoDownloadDialog;->onProgressListener:Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog$1;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    iget-object v0, v0, Lhdp/widget/VitamioSoDownloadDialog;->onProgressListener:Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;->onProgressChange(I)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog$1;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    iget-object v0, v0, Lhdp/widget/VitamioSoDownloadDialog;->onProgressListener:Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog$1;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    iget-object v0, v0, Lhdp/widget/VitamioSoDownloadDialog;->onProgressListener:Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lhdp/widget/VitamioSoDownloadDialog$OnProgressListener;->onProgressChange(I)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
