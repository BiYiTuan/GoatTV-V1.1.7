.class Lhdp/player/LivePlayerS$2;
.super Ljava/lang/Object;
.source "LivePlayerS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/LivePlayerS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LivePlayerS;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayerS;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # invokes: Lhdp/player/LivePlayerS;->P2pSet()V
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$5(Lhdp/player/LivePlayerS;)V

    .line 706
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "youku.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tudou.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iqiyi.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sohu.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "letv.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kankan.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1905.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pptv.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "56.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fun.tv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hunantv.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ku6.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    :cond_1
    new-instance v0, Lhdp/player/LivePlayerS$2$1;

    invoke-direct {v0, p0}, Lhdp/player/LivePlayerS$2$1;-><init>(Lhdp/player/LivePlayerS$2;)V

    .line 772
    invoke-virtual {v0}, Lhdp/player/LivePlayerS$2$1;->start()V

    goto/16 :goto_0

    .line 775
    :cond_2
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhdp/player/LivePlayerS;->IsHttp:Z

    .line 777
    iget-object v0, p0, Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
