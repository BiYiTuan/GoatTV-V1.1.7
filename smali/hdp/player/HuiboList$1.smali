.class Lhdp/player/HuiboList$1;
.super Landroid/os/Handler;
.source "HuiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/HuiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/HuiboList;


# direct methods
.method constructor <init>(Lhdp/player/HuiboList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v12, 0x7f0a000a

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 121
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iget-boolean v0, v0, Lhdp/player/HuiboList;->quit:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 124
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    invoke-static {v0, v11}, Lhdp/player/HuiboList;->access$0(Lhdp/player/HuiboList;I)V

    .line 127
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iput v11, v0, Lhdp/player/HuiboList;->cacount:I

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iget-object v0, v0, Lhdp/player/HuiboList;->datelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v6, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    .line 135
    const v3, 0x7f030003

    new-array v4, v8, [Ljava/lang/String;

    const-string v7, "datetext"

    aput-object v7, v4, v11

    .line 136
    new-array v5, v8, [I

    aput v12, v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 134
    invoke-static {v6, v0}, Lhdp/player/HuiboList;->access$1(Lhdp/player/HuiboList;Landroid/widget/SimpleAdapter;)V

    .line 137
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->channellist:Landroid/widget/ListView;
    invoke-static {v0}, Lhdp/player/HuiboList;->access$2(Lhdp/player/HuiboList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->adapter_date:Landroid/widget/SimpleAdapter;
    invoke-static {v1}, Lhdp/player/HuiboList;->access$3(Lhdp/player/HuiboList;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v1, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iget-object v0, v0, Lhdp/player/HuiboList;->datelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/HuiboDataInfo$Lable_id;

    iget-object v0, v0, Lhdp/javabean/HuiboDataInfo$Lable_id;->id:Ljava/lang/String;

    invoke-static {v1, v0}, Lhdp/player/HuiboList;->access$4(Lhdp/player/HuiboList;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iget-object v0, v0, Lhdp/player/HuiboList;->datelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/HuiboDataInfo$Lable_id;

    iget-object v0, v0, Lhdp/javabean/HuiboDataInfo$Lable_id;->label:Ljava/lang/String;

    iput-object v0, v1, Lhdp/player/HuiboList;->epg_date:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iget-object v1, v1, Lhdp/player/HuiboList;->runnable_jiemu:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhdp/javabean/HuiboDataInfo$Lable_id;

    .line 130
    .local v9, "lable_id":Lhdp/javabean/HuiboDataInfo$Lable_id;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "datetext"

    iget-object v3, v9, Lhdp/javabean/HuiboDataInfo$Lable_id;->label:Ljava/lang/String;

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v9    # "lable_id":Lhdp/javabean/HuiboDataInfo$Lable_id;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    invoke-static {v0, v8}, Lhdp/player/HuiboList;->access$0(Lhdp/player/HuiboList;I)V

    .line 145
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iput v11, v0, Lhdp/player/HuiboList;->cacount:I

    .line 146
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->txtChannelType:Landroid/widget/TextView;
    invoke-static {v0}, Lhdp/player/HuiboList;->access$5(Lhdp/player/HuiboList;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->type_name:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/HuiboList;->access$6(Lhdp/player/HuiboList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iget-object v3, v3, Lhdp/player/HuiboList;->epg_date:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v5, "listjiemu":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iget-object v0, v0, Lhdp/player/HuiboList;->jiemulist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    new-instance v3, Landroid/widget/SimpleAdapter;

    iget-object v4, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    .line 157
    const v6, 0x7f030004

    new-array v7, v8, [Ljava/lang/String;

    const-string v1, "datetext"

    aput-object v1, v7, v11

    .line 158
    new-array v8, v8, [I

    aput v12, v8, v11

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 156
    invoke-static {v0, v3}, Lhdp/player/HuiboList;->access$7(Lhdp/player/HuiboList;Landroid/widget/SimpleAdapter;)V

    .line 159
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->listviewjiemu:Landroid/widget/ListView;
    invoke-static {v0}, Lhdp/player/HuiboList;->access$8(Lhdp/player/HuiboList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->adapter:Landroid/widget/SimpleAdapter;
    invoke-static {v1}, Lhdp/player/HuiboList;->access$9(Lhdp/player/HuiboList;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iget-object v0, v0, Lhdp/player/HuiboList;->bar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 148
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhdp/javabean/HuiboDataInfo$Lable_id;

    .line 149
    .restart local v9    # "lable_id":Lhdp/javabean/HuiboDataInfo$Lable_id;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 150
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "datetext"

    iget-object v3, v9, Lhdp/javabean/HuiboDataInfo$Lable_id;->label:Ljava/lang/String;

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, v9, Lhdp/javabean/HuiboDataInfo$Lable_id;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-le v1, v3, :cond_2

    .line 152
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    .end local v5    # "listjiemu":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v9    # "lable_id":Lhdp/javabean/HuiboDataInfo$Lable_id;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    iput v11, v0, Lhdp/player/HuiboList;->cacount:I

    .line 164
    iget-object v0, p0, Lhdp/player/HuiboList$1;->this$0:Lhdp/player/HuiboList;

    const v1, 0x7f060058

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
