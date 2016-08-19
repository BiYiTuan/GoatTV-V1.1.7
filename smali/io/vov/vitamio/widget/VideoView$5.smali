.class Lio/vov/vitamio/widget/VideoView$5;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vov/vitamio/widget/VideoView;


# direct methods
.method constructor <init>(Lio/vov/vitamio/widget/VideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lio/vov/vitamio/widget/VideoView$5;)Lio/vov/vitamio/widget/VideoView;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    return-object v0
.end method


# virtual methods
.method public onError(Lio/vov/vitamio/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 208
    const-string v1, "Error: %d, %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v1, v5}, Lio/vov/vitamio/widget/VideoView;->access$7(Lio/vov/vitamio/widget/VideoView;I)V

    .line 210
    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v1, v5}, Lio/vov/vitamio/widget/VideoView;->access$8(Lio/vov/vitamio/widget/VideoView;I)V

    .line 211
    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v1}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v1}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lio/vov/vitamio/widget/MediaController;->hide()V

    .line 214
    :cond_0
    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lio/vov/vitamio/widget/VideoView;->access$24(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lio/vov/vitamio/widget/VideoView;->access$24(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$10(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lio/vov/vitamio/MediaPlayer$OnErrorListener;->onError(Lio/vov/vitamio/MediaPlayer;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    :cond_1
    :goto_0
    return v4

    .line 219
    :cond_2
    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v1}, Lio/vov/vitamio/widget/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_3

    sget v0, Lio/vov/vitamio/R$string;->VideoView_error_text_invalid_progressive_playback:I

    .line 222
    .local v0, "message":I
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$5;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$25(Lio/vov/vitamio/widget/VideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lio/vov/vitamio/R$string;->VideoView_error_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lio/vov/vitamio/R$string;->VideoView_error_button:I

    new-instance v3, Lio/vov/vitamio/widget/VideoView$5$1;

    invoke-direct {v3, p0}, Lio/vov/vitamio/widget/VideoView$5$1;-><init>(Lio/vov/vitamio/widget/VideoView$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 220
    .end local v0    # "message":I
    :cond_3
    sget v0, Lio/vov/vitamio/R$string;->VideoView_error_text_unknown:I

    goto :goto_1
.end method
