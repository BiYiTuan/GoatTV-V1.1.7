.class Lhdp/widget/VideoView$9;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    iput-object p1, p0, Lhdp/widget/VideoView$9;->this$0:Lhdp/widget/VideoView;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    .line 779
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnInfoListener-------->what:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  extra :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 780
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 779
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lhdp/widget/VideoView$9;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$31(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lhdp/widget/VideoView$9;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$31(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 806
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 791
    :cond_1
    iget-object v0, p0, Lhdp/widget/VideoView$9;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {v0}, Lhdp/widget/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
