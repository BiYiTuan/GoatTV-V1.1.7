.class Lhdp/player/LivePlayer$2;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/LivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LivePlayer;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # invokes: Lhdp/player/LivePlayer;->P2pSet()V
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$6(Lhdp/player/LivePlayer;)V

    .line 727
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "youku.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tudou.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iqiyi.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 762
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sohu.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "letv.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kankan.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1905.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pptv.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 768
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "56.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fun.tv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hunantv.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ku6.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    :cond_1
    new-instance v0, Lhdp/player/LivePlayer$2$1;

    invoke-direct {v0, p0}, Lhdp/player/LivePlayer$2$1;-><init>(Lhdp/player/LivePlayer$2;)V

    .line 794
    invoke-virtual {v0}, Lhdp/player/LivePlayer$2$1;->start()V

    goto/16 :goto_0

    .line 797
    :cond_2
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhdp/player/LivePlayer;->IsHttp:Z

    .line 798
    iget-object v0, p0, Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
