.class Lhdp/widget/SoftVideoView$1;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;


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
    iput-object p1, p0, Lhdp/widget/SoftVideoView$1;->this$0:Lhdp/widget/SoftVideoView;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lio/vov/vitamio/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lhdp/widget/SoftVideoView$1;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {p1}, Lio/vov/vitamio/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lhdp/widget/SoftVideoView;->access$0(Lhdp/widget/SoftVideoView;I)V

    .line 310
    iget-object v0, p0, Lhdp/widget/SoftVideoView$1;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {p1}, Lio/vov/vitamio/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lhdp/widget/SoftVideoView;->access$1(Lhdp/widget/SoftVideoView;I)V

    .line 311
    iget-object v0, p0, Lhdp/widget/SoftVideoView$1;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoWidth:I
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$2(Lhdp/widget/SoftVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp/widget/SoftVideoView$1;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoHeight:I
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$3(Lhdp/widget/SoftVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lhdp/widget/SoftVideoView$1;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {v0}, Lhdp/widget/SoftVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lhdp/widget/SoftVideoView$1;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoWidth:I
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$2(Lhdp/widget/SoftVideoView;)I

    move-result v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$1;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoHeight:I
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$3(Lhdp/widget/SoftVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 314
    :cond_0
    return-void
.end method
