.class public Lhdp/player/HuiboList;
.super Landroid/app/Activity;
.source "HuiboList.java"


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private adapter_date:Landroid/widget/SimpleAdapter;

.field bar:Landroid/widget/ProgressBar;

.field bofangurl:Lorg/json/JSONArray;

.field private burl:Ljava/lang/String;

.field private burljiemu:Ljava/lang/String;

.field private burljiemu_url:Ljava/lang/String;

.field private burlriqi:Ljava/lang/String;

.field cacount:I

.field private channellist:Landroid/widget/ListView;

.field private count:I

.field dateInfo:Lhdp/javabean/HuiboDataInfo;

.field datelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/HuiboDataInfo$Lable_id;",
            ">;"
        }
    .end annotation
.end field

.field epg_date:Ljava/lang/String;

.field private gson:Lcom/google/gson/Gson;

.field handler:Landroid/os/Handler;

.field jiemuInfo:Lhdp/javabean/HuiboDataInfo;

.field jiemulist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/HuiboDataInfo$Lable_id;",
            ">;"
        }
    .end annotation
.end field

.field jiemuname:Ljava/lang/String;

.field private listitem:I

.field private listviewjiemu:Landroid/widget/ListView;

.field quit:Z

.field runnable_bofang:Ljava/lang/Runnable;

.field runnable_date:Ljava/lang/Runnable;

.field runnable_jiemu:Ljava/lang/Runnable;

.field temp:[Ljava/lang/String;

.field public tidIndex:I

.field private txtChannelType:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private type_date:Ljava/lang/String;

.field private type_info:Ljava/lang/String;

.field private type_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-string v0, "http://live.hdpfans.com/tvback.php?key="

    iput-object v0, p0, Lhdp/player/HuiboList;->burl:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lhdp/player/HuiboList;->burlriqi:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lhdp/player/HuiboList;->burljiemu:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lhdp/player/HuiboList;->burljiemu_url:Ljava/lang/String;

    .line 56
    iput v2, p0, Lhdp/player/HuiboList;->count:I

    .line 60
    iput-object v1, p0, Lhdp/player/HuiboList;->datelist:Ljava/util/ArrayList;

    .line 61
    iput-object v1, p0, Lhdp/player/HuiboList;->jiemulist:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lhdp/player/HuiboList;->bofangurl:Lorg/json/JSONArray;

    .line 64
    iput-object v1, p0, Lhdp/player/HuiboList;->temp:[Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lhdp/player/HuiboList;->epg_date:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lhdp/player/HuiboList;->jiemuname:Ljava/lang/String;

    .line 67
    iput v2, p0, Lhdp/player/HuiboList;->cacount:I

    .line 69
    iput-boolean v2, p0, Lhdp/player/HuiboList;->quit:Z

    .line 119
    new-instance v0, Lhdp/player/HuiboList$1;

    invoke-direct {v0, p0}, Lhdp/player/HuiboList$1;-><init>(Lhdp/player/HuiboList;)V

    iput-object v0, p0, Lhdp/player/HuiboList;->handler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lhdp/player/HuiboList$2;

    invoke-direct {v0, p0}, Lhdp/player/HuiboList$2;-><init>(Lhdp/player/HuiboList;)V

    iput-object v0, p0, Lhdp/player/HuiboList;->runnable_date:Ljava/lang/Runnable;

    .line 198
    new-instance v0, Lhdp/player/HuiboList$3;

    invoke-direct {v0, p0}, Lhdp/player/HuiboList$3;-><init>(Lhdp/player/HuiboList;)V

    iput-object v0, p0, Lhdp/player/HuiboList;->runnable_jiemu:Ljava/lang/Runnable;

    .line 222
    new-instance v0, Lhdp/player/HuiboList$4;

    invoke-direct {v0, p0}, Lhdp/player/HuiboList$4;-><init>(Lhdp/player/HuiboList;)V

    iput-object v0, p0, Lhdp/player/HuiboList;->runnable_bofang:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lhdp/player/HuiboList;I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lhdp/player/HuiboList;->count:I

    return-void
.end method

.method static synthetic access$1(Lhdp/player/HuiboList;Landroid/widget/SimpleAdapter;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lhdp/player/HuiboList;->adapter_date:Landroid/widget/SimpleAdapter;

    return-void
.end method

.method static synthetic access$10(Lhdp/player/HuiboList;)Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhdp/player/HuiboList;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$11(Lhdp/player/HuiboList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lhdp/player/HuiboList;->burlriqi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lhdp/player/HuiboList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lhdp/player/HuiboList;->burljiemu:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lhdp/player/HuiboList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lhdp/player/HuiboList;->burljiemu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lhdp/player/HuiboList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lhdp/player/HuiboList;->type_date:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lhdp/player/HuiboList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lhdp/player/HuiboList;->burljiemu_url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lhdp/player/HuiboList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lhdp/player/HuiboList;->burljiemu_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lhdp/player/HuiboList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lhdp/player/HuiboList;->type_info:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lhdp/player/HuiboList;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lhdp/player/HuiboList;->listitem:I

    return-void
.end method

.method static synthetic access$19(Lhdp/player/HuiboList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lhdp/player/HuiboList;->type_info:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lhdp/player/HuiboList;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lhdp/player/HuiboList;->channellist:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lhdp/player/HuiboList;)Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lhdp/player/HuiboList;->adapter_date:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lhdp/player/HuiboList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lhdp/player/HuiboList;->type_date:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lhdp/player/HuiboList;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lhdp/player/HuiboList;->txtChannelType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lhdp/player/HuiboList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lhdp/player/HuiboList;->type_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lhdp/player/HuiboList;Landroid/widget/SimpleAdapter;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lhdp/player/HuiboList;->adapter:Landroid/widget/SimpleAdapter;

    return-void
.end method

.method static synthetic access$8(Lhdp/player/HuiboList;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lhdp/player/HuiboList;->listviewjiemu:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$9(Lhdp/player/HuiboList;)Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lhdp/player/HuiboList;->adapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method


# virtual methods
.method public GetHuiBO(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhdp/player/HuiboList;->burl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/HuiboList;->burlriqi:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/HuiboList;->runnable_date:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/player/HuiboList;->quit:Z

    .line 258
    invoke-virtual {p0}, Lhdp/player/HuiboList;->finish()V

    .line 259
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lhdp/player/HuiboList;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lhdp/player/HuiboList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "huibo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhdp/player/HuiboList;->type:Ljava/lang/String;

    .line 77
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhdp/player/HuiboList;->type_name:Ljava/lang/String;

    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "array"

    iget-object v3, p0, Lhdp/player/HuiboList;->temp:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v2, "epg"

    iget-object v3, p0, Lhdp/player/HuiboList;->epg_date:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lhdp/player/HuiboList;->setResult(ILandroid/content/Intent;)V

    .line 83
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iput-object v2, p0, Lhdp/player/HuiboList;->gson:Lcom/google/gson/Gson;

    .line 85
    const v2, 0x7f0a000c

    invoke-virtual {p0, v2}, Lhdp/player/HuiboList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lhdp/player/HuiboList;->txtChannelType:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0a000e

    invoke-virtual {p0, v2}, Lhdp/player/HuiboList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lhdp/player/HuiboList;->bar:Landroid/widget/ProgressBar;

    .line 87
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Lhdp/player/HuiboList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lhdp/player/HuiboList;->channellist:Landroid/widget/ListView;

    .line 88
    const v2, 0x7f0a000d

    invoke-virtual {p0, v2}, Lhdp/player/HuiboList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lhdp/player/HuiboList;->listviewjiemu:Landroid/widget/ListView;

    .line 89
    iget-object v2, p0, Lhdp/player/HuiboList;->channellist:Landroid/widget/ListView;

    new-instance v3, Lhdp/player/HuiboList$5;

    invoke-direct {v3, p0}, Lhdp/player/HuiboList$5;-><init>(Lhdp/player/HuiboList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    iget-object v2, p0, Lhdp/player/HuiboList;->listviewjiemu:Landroid/widget/ListView;

    new-instance v3, Lhdp/player/HuiboList$6;

    invoke-direct {v3, p0}, Lhdp/player/HuiboList$6;-><init>(Lhdp/player/HuiboList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v2, p0, Lhdp/player/HuiboList;->txtChannelType:Landroid/widget/TextView;

    iget-object v3, p0, Lhdp/player/HuiboList;->type_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lhdp/player/HuiboList;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lhdp/player/HuiboList;->GetHuiBO(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 270
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 264
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 265
    return-void
.end method
