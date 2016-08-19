.class Lhdp/widget/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/VideoView;


# direct methods
.method constructor <init>(Lhdp/widget/VideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/VideoView$4;->this$0:Lhdp/widget/VideoView;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v1, -0x1

    .line 386
    iget-object v0, p0, Lhdp/widget/VideoView$4;->this$0:Lhdp/widget/VideoView;

    invoke-static {v0, v1}, Lhdp/widget/VideoView;->access$4(Lhdp/widget/VideoView;I)V

    .line 387
    iget-object v0, p0, Lhdp/widget/VideoView$4;->this$0:Lhdp/widget/VideoView;

    invoke-static {v0, v1}, Lhdp/widget/VideoView;->access$22(Lhdp/widget/VideoView;I)V

    .line 388
    iget-object v0, p0, Lhdp/widget/VideoView$4;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lhdp/widget/VideoView$4;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 391
    :cond_0
    iget-object v0, p0, Lhdp/widget/VideoView$4;->this$0:Lhdp/widget/VideoView;

    const/4 v1, 0x0

    # invokes: Lhdp/widget/VideoView;->release(Z)V
    invoke-static {v0, v1}, Lhdp/widget/VideoView;->access$24(Lhdp/widget/VideoView;Z)V

    .line 399
    const/4 v0, 0x1

    return v0
.end method
