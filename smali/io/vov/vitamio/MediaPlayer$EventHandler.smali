.class Lio/vov/vitamio/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mData:Landroid/os/Bundle;

.field private mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

.field final synthetic this$0:Lio/vov/vitamio/MediaPlayer;


# direct methods
.method public constructor <init>(Lio/vov/vitamio/MediaPlayer;Lio/vov/vitamio/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1624
    iput-object p1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    .line 1625
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1626
    iput-object p2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 1627
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1631
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1721
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown message type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1722
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1633
    :sswitch_1
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$0(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1634
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$0(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnPreparedListener;->onPrepared(Lio/vov/vitamio/MediaPlayer;)V

    goto :goto_0

    .line 1637
    :sswitch_2
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1638
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnCompletionListener;->onCompletion(Lio/vov/vitamio/MediaPlayer;)V

    .line 1639
    :cond_1
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # invokes: Lio/vov/vitamio/MediaPlayer;->stayAwake(Z)V
    invoke-static {v2, v6}, Lio/vov/vitamio/MediaPlayer;->access$2(Lio/vov/vitamio/MediaPlayer;Z)V

    goto :goto_0

    .line 1643
    :sswitch_3
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$3(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1644
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$3(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 1645
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1644
    invoke-interface {v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lio/vov/vitamio/MediaPlayer;I)V

    goto :goto_0

    .line 1648
    :sswitch_4
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1649
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # invokes: Lio/vov/vitamio/MediaPlayer;->stayAwake(Z)V
    invoke-static {v2, v4}, Lio/vov/vitamio/MediaPlayer;->access$2(Lio/vov/vitamio/MediaPlayer;Z)V

    .line 1650
    :cond_2
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$4(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1651
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$4(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lio/vov/vitamio/MediaPlayer;)V

    goto :goto_0

    .line 1654
    :sswitch_5
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnVideoSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$5(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1655
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnVideoSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$5(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v2

    .line 1656
    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 1655
    invoke-interface {v2, v3, v4, v5}, Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lio/vov/vitamio/MediaPlayer;II)V

    goto :goto_0

    .line 1660
    :sswitch_6
    const/4 v1, 0x0

    .line 1661
    .local v1, "error_was_handled":Z
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$6(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1662
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$6(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 1663
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 1662
    invoke-interface {v2, v3, v4, v5}, Lio/vov/vitamio/MediaPlayer$OnErrorListener;->onError(Lio/vov/vitamio/MediaPlayer;II)Z

    move-result v1

    .line 1664
    :cond_3
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 1665
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnCompletionListener;->onCompletion(Lio/vov/vitamio/MediaPlayer;)V

    .line 1666
    :cond_4
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # invokes: Lio/vov/vitamio/MediaPlayer;->stayAwake(Z)V
    invoke-static {v2, v6}, Lio/vov/vitamio/MediaPlayer;->access$2(Lio/vov/vitamio/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 1670
    .end local v1    # "error_was_handled":Z
    :sswitch_7
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$7(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1671
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$7(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lio/vov/vitamio/MediaPlayer$OnInfoListener;->onInfo(Lio/vov/vitamio/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 1676
    :sswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    .line 1677
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v3, "sub_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 1678
    const-string v2, "Subtitle : %s"

    new-array v3, v4, [Ljava/lang/Object;

    .line 1679
    iget-object v4, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v5, "sub_string"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1678
    invoke-static {v2, v3}, Lio/vov/vitamio/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1680
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$8(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1681
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$8(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    .line 1682
    const-string v4, "sub_string"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1681
    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;->onTimedText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1683
    :cond_5
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v3, "sub_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1684
    const-string v2, "Subtitle : bitmap"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lio/vov/vitamio/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1685
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$8(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1686
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$8(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    .line 1687
    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v4, "sub_bytes"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 1688
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 1686
    invoke-interface {v2, v3, v4, v5}, Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;->onTimedTextUpdate([BII)V

    goto/16 :goto_0

    .line 1692
    :sswitch_9
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCachingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$9(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1693
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "caching_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1694
    .local v0, "cacheType":I
    if-ne v0, v4, :cond_6

    .line 1695
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCachingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$9(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    .line 1696
    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 1697
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "caching_info"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1695
    invoke-interface {v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;->onCachingNotAvailable(Lio/vov/vitamio/MediaPlayer;I)V

    goto/16 :goto_0

    .line 1698
    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 1699
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCachingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$9(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    .line 1700
    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 1701
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 1702
    const-string v5, "caching_segment"

    .line 1701
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 1699
    invoke-interface {v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;->onCachingUpdate(Lio/vov/vitamio/MediaPlayer;[J)V

    goto/16 :goto_0

    .line 1703
    :cond_7
    const/4 v2, 0x4

    if-ne v0, v2, :cond_8

    .line 1704
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCachingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$9(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 1705
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "caching_info"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1704
    invoke-interface {v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;->onCachingSpeed(Lio/vov/vitamio/MediaPlayer;I)V

    goto/16 :goto_0

    .line 1706
    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 1707
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCachingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$9(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;->onCachingStart(Lio/vov/vitamio/MediaPlayer;)V

    goto/16 :goto_0

    .line 1708
    :cond_9
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 1709
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCachingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$9(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    .line 1710
    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;->onCachingComplete(Lio/vov/vitamio/MediaPlayer;)V

    goto/16 :goto_0

    .line 1717
    .end local v0    # "cacheType":I
    :sswitch_a
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnHWRenderFailedListener:Lio/vov/vitamio/MediaPlayer$OnHWRenderFailedListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$10(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnHWRenderFailedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1718
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnHWRenderFailedListener:Lio/vov/vitamio/MediaPlayer$OnHWRenderFailedListener;
    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$10(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnHWRenderFailedListener;

    move-result-object v2

    invoke-interface {v2}, Lio/vov/vitamio/MediaPlayer$OnHWRenderFailedListener;->onFailed()V

    goto/16 :goto_0

    .line 1631
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
        0x12c -> :sswitch_0
        0x190 -> :sswitch_a
        0x3e8 -> :sswitch_8
        0x7d0 -> :sswitch_9
    .end sparse-switch
.end method
