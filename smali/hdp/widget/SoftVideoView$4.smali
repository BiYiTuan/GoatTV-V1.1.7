.class Lhdp/widget/SoftVideoView$4;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/widget/SoftVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/SoftVideoView;


# direct methods
.method constructor <init>(Lhdp/widget/SoftVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/SoftVideoView$4;->this$0:Lhdp/widget/SoftVideoView;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/vov/vitamio/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v2, -0x1

    .line 384
    const-string v0, "test"

    const-string v1, "on error hanppend!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lhdp/widget/SoftVideoView$4;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v0, v2}, Lhdp/widget/SoftVideoView;->access$4(Lhdp/widget/SoftVideoView;I)V

    .line 386
    iget-object v0, p0, Lhdp/widget/SoftVideoView$4;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v0, v2}, Lhdp/widget/SoftVideoView;->access$22(Lhdp/widget/SoftVideoView;I)V

    .line 387
    iget-object v0, p0, Lhdp/widget/SoftVideoView$4;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lhdp/widget/SoftVideoView$4;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 390
    :cond_0
    iget-object v0, p0, Lhdp/widget/SoftVideoView$4;->this$0:Lhdp/widget/SoftVideoView;

    const/4 v1, 0x0

    # invokes: Lhdp/widget/SoftVideoView;->release(Z)V
    invoke-static {v0, v1}, Lhdp/widget/SoftVideoView;->access$24(Lhdp/widget/SoftVideoView;Z)V

    .line 398
    const/4 v0, 0x1

    return v0
.end method
