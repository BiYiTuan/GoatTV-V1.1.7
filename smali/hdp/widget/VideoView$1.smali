.class Lhdp/widget/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    iput-object p1, p0, Lhdp/widget/VideoView$1;->this$0:Lhdp/widget/VideoView;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lhdp/widget/VideoView$1;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lhdp/widget/VideoView;->access$0(Lhdp/widget/VideoView;I)V

    .line 313
    iget-object v0, p0, Lhdp/widget/VideoView$1;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lhdp/widget/VideoView;->access$1(Lhdp/widget/VideoView;I)V

    .line 314
    iget-object v0, p0, Lhdp/widget/VideoView$1;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoWidth:I
    invoke-static {v0}, Lhdp/widget/VideoView;->access$2(Lhdp/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp/widget/VideoView$1;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoHeight:I
    invoke-static {v0}, Lhdp/widget/VideoView;->access$3(Lhdp/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lhdp/widget/VideoView$1;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {v0}, Lhdp/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lhdp/widget/VideoView$1;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoWidth:I
    invoke-static {v1}, Lhdp/widget/VideoView;->access$2(Lhdp/widget/VideoView;)I

    move-result v1

    iget-object v2, p0, Lhdp/widget/VideoView$1;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoHeight:I
    invoke-static {v2}, Lhdp/widget/VideoView;->access$3(Lhdp/widget/VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 317
    :cond_0
    return-void
.end method
