.class Lhdp/widget/SoftVideoView$9;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnInfoListener;


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
    iput-object p1, p0, Lhdp/widget/SoftVideoView$9;->this$0:Lhdp/widget/SoftVideoView;

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lio/vov/vitamio/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x1

    .line 753
    iget-object v0, p0, Lhdp/widget/SoftVideoView$9;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$32(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lhdp/widget/SoftVideoView$9;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$32(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/vov/vitamio/MediaPlayer$OnInfoListener;->onInfo(Lio/vov/vitamio/MediaPlayer;II)Z

    .line 773
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 762
    :cond_1
    iget-object v0, p0, Lhdp/widget/SoftVideoView$9;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {v0}, Lhdp/widget/SoftVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
    .end packed-switch
.end method
