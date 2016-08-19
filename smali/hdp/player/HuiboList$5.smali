.class Lhdp/player/HuiboList$5;
.super Ljava/lang/Object;
.source "HuiboList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/HuiboList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/HuiboList;


# direct methods
.method constructor <init>(Lhdp/player/HuiboList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/HuiboList$5;->this$0:Lhdp/player/HuiboList;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lhdp/player/HuiboList$5;->this$0:Lhdp/player/HuiboList;

    invoke-static {v0, p3}, Lhdp/player/HuiboList;->access$18(Lhdp/player/HuiboList;I)V

    .line 95
    iget-object v1, p0, Lhdp/player/HuiboList$5;->this$0:Lhdp/player/HuiboList;

    iget-object v0, p0, Lhdp/player/HuiboList$5;->this$0:Lhdp/player/HuiboList;

    iget-object v0, v0, Lhdp/player/HuiboList;->datelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/HuiboDataInfo$Lable_id;

    iget-object v0, v0, Lhdp/javabean/HuiboDataInfo$Lable_id;->id:Ljava/lang/String;

    invoke-static {v1, v0}, Lhdp/player/HuiboList;->access$4(Lhdp/player/HuiboList;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lhdp/player/HuiboList$5;->this$0:Lhdp/player/HuiboList;

    iget-object v0, p0, Lhdp/player/HuiboList$5;->this$0:Lhdp/player/HuiboList;

    iget-object v0, v0, Lhdp/player/HuiboList;->datelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/HuiboDataInfo$Lable_id;

    iget-object v0, v0, Lhdp/javabean/HuiboDataInfo$Lable_id;->label:Ljava/lang/String;

    iput-object v0, v1, Lhdp/player/HuiboList;->epg_date:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/HuiboList$5;->this$0:Lhdp/player/HuiboList;

    iget-object v1, v1, Lhdp/player/HuiboList;->runnable_jiemu:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    iget-object v0, p0, Lhdp/player/HuiboList$5;->this$0:Lhdp/player/HuiboList;

    iget-object v0, v0, Lhdp/player/HuiboList;->bar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    return-void
.end method
