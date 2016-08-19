.class Lhdp/player/AppActivity$4;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/AppActivity;->InitApp(Lhdp/javabean/AppInfo;)V
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
.field final synthetic this$0:Lhdp/player/AppActivity;

.field private final synthetic val$apps:Ljava/util/ArrayList;

.field private final synthetic val$grid:I

.field private final synthetic val$gridView:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Lhdp/player/AppActivity;Ljava/util/ArrayList;ILandroid/widget/GridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    iput-object p2, p0, Lhdp/player/AppActivity$4;->val$apps:Ljava/util/ArrayList;

    iput p3, p0, Lhdp/player/AppActivity$4;->val$grid:I

    iput-object p4, p0, Lhdp/player/AppActivity$4;->val$gridView:Landroid/widget/GridView;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 219
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lhdp/player/AppActivity$4;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/AppInfo$NetApp;

    .line 220
    .local v0, "app":Lhdp/javabean/AppInfo$NetApp;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lhdp/player/AppActivity$4;->val$grid:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    sget-object v7, Lhdp/player/AppActivity;->localAppInfos:Ljava/util/List;

    iget-object v8, v0, Lhdp/javabean/AppInfo$NetApp;->packagename:Ljava/lang/String;

    # invokes: Lhdp/player/AppActivity;->IsInstall(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7, v8}, Lhdp/player/AppActivity;->access$9(Lhdp/player/AppActivity;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "ver":Ljava/lang/String;
    iget-object v6, p0, Lhdp/player/AppActivity$4;->val$gridView:Landroid/widget/GridView;

    .line 224
    invoke-virtual {v6, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 223
    check-cast v3, Landroid/widget/LinearLayout;

    .line 225
    .local v3, "layout":Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 226
    .local v4, "textview":Landroid/widget/TextView;
    new-instance v1, Lhdp/player/AppActivity$DowningItem;

    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    invoke-direct {v1, v6, v2, v0, v4}, Lhdp/player/AppActivity$DowningItem;-><init>(Lhdp/player/AppActivity;Ljava/lang/String;Lhdp/javabean/AppInfo$NetApp;Landroid/widget/TextView;)V

    .line 228
    .local v1, "downitem":Lhdp/player/AppActivity$DowningItem;
    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 229
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    invoke-static {v6, v1}, Lhdp/player/AppActivity;->access$10(Lhdp/player/AppActivity;Lhdp/player/AppActivity$DowningItem;)V

    .line 231
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    iget-object v7, v0, Lhdp/javabean/AppInfo$NetApp;->version:Ljava/lang/String;

    # invokes: Lhdp/player/AppActivity;->CompareVer(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v6, v5, v7}, Lhdp/player/AppActivity;->access$11(Lhdp/player/AppActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 232
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->Btn_Update:Landroid/widget/Button;
    invoke-static {v6}, Lhdp/player/AppActivity;->access$12(Lhdp/player/AppActivity;)Landroid/widget/Button;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    :goto_0
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->window:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lhdp/player/AppActivity;->access$13(Lhdp/player/AppActivity;)Landroid/widget/PopupWindow;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 238
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->window:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lhdp/player/AppActivity;->access$13(Lhdp/player/AppActivity;)Landroid/widget/PopupWindow;

    move-result-object v6

    iget-object v7, p0, Lhdp/player/AppActivity$4;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v7, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 239
    iget-object v8, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    invoke-virtual {v8}, Lhdp/player/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 240
    const v9, 0x7f090002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    const/16 v9, -0xd2

    .line 238
    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 254
    :goto_1
    return-void

    .line 234
    :cond_0
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->Btn_Update:Landroid/widget/Button;
    invoke-static {v6}, Lhdp/player/AppActivity;->access$12(Lhdp/player/AppActivity;)Landroid/widget/Button;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->map:Ljava/util/Map;
    invoke-static {v6}, Lhdp/player/AppActivity;->access$2(Lhdp/player/AppActivity;)Ljava/util/Map;

    move-result-object v6

    # getter for: Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$0(Lhdp/player/AppActivity$DowningItem;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 243
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->map:Ljava/util/Map;
    invoke-static {v6}, Lhdp/player/AppActivity;->access$2(Lhdp/player/AppActivity;)Ljava/util/Map;

    move-result-object v6

    # getter for: Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$0(Lhdp/player/AppActivity$DowningItem;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "begin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v8

    iget-object v8, v8, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v8, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    invoke-virtual {v8}, Lhdp/player/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 248
    const v9, 0x7f06009d

    .line 247
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 246
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 249
    const/4 v8, 0x0

    .line 244
    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 249
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 251
    :cond_2
    iget-object v6, p0, Lhdp/player/AppActivity$4;->this$0:Lhdp/player/AppActivity;

    # invokes: Lhdp/player/AppActivity;->DownLoadApp(Lhdp/player/AppActivity$DowningItem;)V
    invoke-static {v6, v1}, Lhdp/player/AppActivity;->access$14(Lhdp/player/AppActivity;Lhdp/player/AppActivity$DowningItem;)V

    goto :goto_1
.end method
