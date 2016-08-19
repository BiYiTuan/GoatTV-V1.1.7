.class Lhdp/widget/SoftVideoView$3;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lio/vov/vitamio/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    const/4 v2, 0x5

    .line 364
    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->isList:Z
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$16(Lhdp/widget/SoftVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->index:I
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$17(Lhdp/widget/SoftVideoView;)I

    move-result v0

    iget-object v1, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mUris:[Landroid/net/Uri;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$18(Lhdp/widget/SoftVideoView;)[Landroid/net/Uri;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 365
    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->index:I
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$17(Lhdp/widget/SoftVideoView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lhdp/widget/SoftVideoView;->access$19(Lhdp/widget/SoftVideoView;I)V

    .line 366
    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    iget-object v1, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mUris:[Landroid/net/Uri;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$18(Lhdp/widget/SoftVideoView;)[Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->index:I
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$17(Lhdp/widget/SoftVideoView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lhdp/widget/SoftVideoView;->access$20(Lhdp/widget/SoftVideoView;Landroid/net/Uri;)V

    .line 367
    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # invokes: Lhdp/widget/SoftVideoView;->openVideo()V
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$21(Lhdp/widget/SoftVideoView;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v0, v2}, Lhdp/widget/SoftVideoView;->access$4(Lhdp/widget/SoftVideoView;I)V

    .line 371
    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v0, v2}, Lhdp/widget/SoftVideoView;->access$22(Lhdp/widget/SoftVideoView;I)V

    .line 372
    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 376
    :cond_2
    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$23(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$23(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lhdp/widget/SoftVideoView$3;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/vov/vitamio/MediaPlayer$OnCompletionListener;->onCompletion(Lio/vov/vitamio/MediaPlayer;)V

    goto :goto_0
.end method
