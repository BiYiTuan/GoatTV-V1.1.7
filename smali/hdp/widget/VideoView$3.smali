.class Lhdp/widget/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x5

    .line 366
    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->isList:Z
    invoke-static {v0}, Lhdp/widget/VideoView;->access$16(Lhdp/widget/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->index:I
    invoke-static {v0}, Lhdp/widget/VideoView;->access$17(Lhdp/widget/VideoView;)I

    move-result v0

    iget-object v1, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mUris:[Landroid/net/Uri;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$18(Lhdp/widget/VideoView;)[Landroid/net/Uri;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 367
    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->index:I
    invoke-static {v0}, Lhdp/widget/VideoView;->access$17(Lhdp/widget/VideoView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lhdp/widget/VideoView;->access$19(Lhdp/widget/VideoView;I)V

    .line 368
    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    iget-object v1, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mUris:[Landroid/net/Uri;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$18(Lhdp/widget/VideoView;)[Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->index:I
    invoke-static {v2}, Lhdp/widget/VideoView;->access$17(Lhdp/widget/VideoView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lhdp/widget/VideoView;->access$20(Lhdp/widget/VideoView;Landroid/net/Uri;)V

    .line 369
    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # invokes: Lhdp/widget/VideoView;->openVideo()V
    invoke-static {v0}, Lhdp/widget/VideoView;->access$21(Lhdp/widget/VideoView;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    invoke-static {v0, v2}, Lhdp/widget/VideoView;->access$4(Lhdp/widget/VideoView;I)V

    .line 373
    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    invoke-static {v0, v2}, Lhdp/widget/VideoView;->access$22(Lhdp/widget/VideoView;I)V

    .line 374
    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 378
    :cond_2
    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$23(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$23(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lhdp/widget/VideoView$3;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method
