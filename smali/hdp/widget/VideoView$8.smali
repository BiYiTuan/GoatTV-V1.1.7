.class Lhdp/widget/VideoView$8;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lhdp/widget/VideoView$8;->this$0:Lhdp/widget/VideoView;

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 766
    const-string v0, "VideoView"

    const-string v1, "open video time out "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lhdp/widget/VideoView$8;->this$0:Lhdp/widget/VideoView;

    invoke-static {v0, v2}, Lhdp/widget/VideoView;->access$4(Lhdp/widget/VideoView;I)V

    .line 768
    iget-object v0, p0, Lhdp/widget/VideoView$8;->this$0:Lhdp/widget/VideoView;

    invoke-static {v0, v2}, Lhdp/widget/VideoView;->access$22(Lhdp/widget/VideoView;I)V

    .line 769
    iget-object v0, p0, Lhdp/widget/VideoView$8;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$30(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lhdp/widget/VideoView$8;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 770
    const/4 v2, 0x1

    const/16 v3, -0x64

    .line 769
    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 771
    iget-object v0, p0, Lhdp/widget/VideoView$8;->this$0:Lhdp/widget/VideoView;

    const/4 v1, 0x0

    # invokes: Lhdp/widget/VideoView;->release(Z)V
    invoke-static {v0, v1}, Lhdp/widget/VideoView;->access$24(Lhdp/widget/VideoView;Z)V

    .line 772
    return-void
.end method
