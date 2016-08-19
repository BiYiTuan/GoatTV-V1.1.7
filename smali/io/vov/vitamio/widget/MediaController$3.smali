.class Lio/vov/vitamio/widget/MediaController$3;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vov/vitamio/widget/MediaController;


# direct methods
.method constructor <init>(Lio/vov/vitamio/widget/MediaController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromuser"    # Z

    .prologue
    .line 141
    if-nez p3, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v3, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mDuration:J
    invoke-static {v3}, Lio/vov/vitamio/widget/MediaController;->access$10(Lio/vov/vitamio/widget/MediaController;)J

    move-result-wide v3

    int-to-long v5, p2

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long v0, v3, v5

    .line 145
    .local v0, "newposition":J
    invoke-static {v0, v1}, Lio/vov/vitamio/utils/StringUtils;->generateTime(J)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "time":Ljava/lang/String;
    iget-object v3, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInstantSeeking:Z
    invoke-static {v3}, Lio/vov/vitamio/widget/MediaController;->access$7(Lio/vov/vitamio/widget/MediaController;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;
    invoke-static {v3}, Lio/vov/vitamio/widget/MediaController;->access$11(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->seekTo(J)V

    .line 148
    :cond_2
    iget-object v3, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInfoView:Lio/vov/vitamio/widget/OutlineTextView;
    invoke-static {v3}, Lio/vov/vitamio/widget/MediaController;->access$9(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/OutlineTextView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 149
    iget-object v3, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInfoView:Lio/vov/vitamio/widget/OutlineTextView;
    invoke-static {v3}, Lio/vov/vitamio/widget/MediaController;->access$9(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/OutlineTextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/vov/vitamio/widget/OutlineTextView;->setText(Ljava/lang/String;)V

    .line 150
    :cond_3
    iget-object v3, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v3}, Lio/vov/vitamio/widget/MediaController;->access$12(Lio/vov/vitamio/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v3}, Lio/vov/vitamio/widget/MediaController;->access$12(Lio/vov/vitamio/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x1

    .line 129
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    invoke-static {v0, v2}, Lio/vov/vitamio/widget/MediaController;->access$5(Lio/vov/vitamio/widget/MediaController;Z)V

    .line 130
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/MediaController;->show(I)V

    .line 131
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$6(Lio/vov/vitamio/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInstantSeeking:Z
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$7(Lio/vov/vitamio/widget/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mAM:Landroid/media/AudioManager;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$8(Lio/vov/vitamio/widget/MediaController;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 134
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInfoView:Lio/vov/vitamio/widget/OutlineTextView;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$9(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/OutlineTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInfoView:Lio/vov/vitamio/widget/OutlineTextView;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$9(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/OutlineTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/OutlineTextView;->setText(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInfoView:Lio/vov/vitamio/widget/OutlineTextView;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$9(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/OutlineTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/OutlineTextView;->setVisibility(I)V

    .line 138
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 9
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 155
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInstantSeeking:Z
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$7(Lio/vov/vitamio/widget/MediaController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$11(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mDuration:J
    invoke-static {v1}, Lio/vov/vitamio/widget/MediaController;->access$10(Lio/vov/vitamio/widget/MediaController;)J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    div-long/2addr v1, v7

    invoke-interface {v0, v1, v2}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->seekTo(J)V

    .line 157
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInfoView:Lio/vov/vitamio/widget/OutlineTextView;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$9(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/OutlineTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInfoView:Lio/vov/vitamio/widget/OutlineTextView;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$9(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/OutlineTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/OutlineTextView;->setText(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mInfoView:Lio/vov/vitamio/widget/OutlineTextView;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$9(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/OutlineTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/OutlineTextView;->setVisibility(I)V

    .line 161
    :cond_1
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/MediaController;->show(I)V

    .line 162
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$6(Lio/vov/vitamio/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mAM:Landroid/media/AudioManager;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$8(Lio/vov/vitamio/widget/MediaController;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 164
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    invoke-static {v0, v5}, Lio/vov/vitamio/widget/MediaController;->access$5(Lio/vov/vitamio/widget/MediaController;Z)V

    .line 165
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController$3;->this$0:Lio/vov/vitamio/widget/MediaController;

    # getter for: Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lio/vov/vitamio/widget/MediaController;->access$6(Lio/vov/vitamio/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    return-void
.end method
