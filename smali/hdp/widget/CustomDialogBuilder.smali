.class public Lhdp/widget/CustomDialogBuilder;
.super Ljava/lang/Object;
.source "CustomDialogBuilder.java"


# instance fields
.field private content:Ljava/lang/String;

.field private dialogListener:Lhdp/widget/OnDialogListener;

.field private dialogView:Landroid/view/View;

.field private progress:I

.field private style:I

.field private textBtn1:Ljava/lang/String;

.field private textBtn2:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lhdp/widget/CustomDialogBuilder;->style:I

    .line 19
    return-void
.end method

.method static synthetic access$0(Lhdp/widget/CustomDialogBuilder;)Lhdp/widget/OnDialogListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lhdp/widget/CustomDialogBuilder;->dialogListener:Lhdp/widget/OnDialogListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 98
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f030009

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    .line 100
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    const v12, 0x7f0a0034

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 101
    .local v6, "info":Landroid/widget/TextView;
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->content:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 102
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->content:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_0
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->title:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 109
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    const v12, 0x7f0a0031

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 110
    .local v9, "tvTitle":Landroid/widget/TextView;
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->title:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v9    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    iget v11, p0, Lhdp/widget/CustomDialogBuilder;->progress:I

    if-lez v11, :cond_1

    .line 114
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    const v12, 0x7f0a0033

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 115
    .local v8, "progressBar":Landroid/widget/ProgressBar;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    const/16 v11, 0x64

    invoke-virtual {v8, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 117
    iget v11, p0, Lhdp/widget/CustomDialogBuilder;->progress:I

    invoke-virtual {v8, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 120
    .end local v8    # "progressBar":Landroid/widget/ProgressBar;
    :cond_1
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    const v12, 0x7f0a0037

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    .local v0, "bnt1":Landroid/widget/Button;
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    const v12, 0x7f0a0036

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 123
    .local v1, "btn2":Landroid/widget/Button;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setFocusable(Z)V

    .line 124
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 125
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setFocusable(Z)V

    .line 126
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 128
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->textBtn1:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 129
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->textBtn1:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_1
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->textBtn2:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 135
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->textBtn2:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 142
    :goto_2
    new-instance v3, Landroid/app/Dialog;

    iget v11, p0, Lhdp/widget/CustomDialogBuilder;->style:I

    invoke-direct {v3, p1, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 143
    .local v3, "dialog":Landroid/app/Dialog;
    iget-object v11, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 145
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const v12, 0x106000d

    invoke-virtual {v11, v12}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 146
    new-instance v2, Lhdp/widget/CustomDialogBuilder$1;

    invoke-direct {v2, p0, v3}, Lhdp/widget/CustomDialogBuilder$1;-><init>(Lhdp/widget/CustomDialogBuilder;Landroid/app/Dialog;)V

    .line 160
    .local v2, "btnClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 163
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 164
    .local v4, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 165
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v11, 0x10

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    invoke-static {p1}, Lhdp/util/DensityUtil;->ScreenWidth(Landroid/content/Context;)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ee66666    # 0.45f

    mul-float/2addr v11, v12

    float-to-int v10, v11

    .line 170
    .local v10, "width":I
    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 171
    invoke-virtual {v4, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    return-object v3

    .line 105
    .end local v0    # "bnt1":Landroid/widget/Button;
    .end local v1    # "btn2":Landroid/widget/Button;
    .end local v2    # "btnClickListener":Landroid/view/View$OnClickListener;
    .end local v3    # "dialog":Landroid/app/Dialog;
    .end local v4    # "dialogWindow":Landroid/view/Window;
    .end local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "width":I
    :cond_2
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 132
    .restart local v0    # "bnt1":Landroid/widget/Button;
    .restart local v1    # "btn2":Landroid/widget/Button;
    :cond_3
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 139
    :cond_4
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public create(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lhdp/widget/CustomDialogBuilder;->init(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lhdp/widget/CustomDialogBuilder;->content:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, "tvTitle":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .end local v0    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    return-object p0
.end method

.method public setDialogListener(Lhdp/widget/OnDialogListener;)Lhdp/widget/CustomDialogBuilder;
    .locals 0
    .param p1, "dialogListener"    # Lhdp/widget/OnDialogListener;

    .prologue
    .line 88
    iput-object p1, p0, Lhdp/widget/CustomDialogBuilder;->dialogListener:Lhdp/widget/OnDialogListener;

    .line 89
    return-object p0
.end method

.method public setProgress(I)Lhdp/widget/CustomDialogBuilder;
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 78
    iput p1, p0, Lhdp/widget/CustomDialogBuilder;->progress:I

    .line 79
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 81
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 84
    .end local v0    # "progressBar":Landroid/widget/ProgressBar;
    :cond_0
    return-object p0
.end method

.method public setStyle(I)Lhdp/widget/CustomDialogBuilder;
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 36
    iput p1, p0, Lhdp/widget/CustomDialogBuilder;->style:I

    .line 37
    return-object p0
.end method

.method public setTextBtn1(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;
    .locals 3
    .param p1, "textBtn1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lhdp/widget/CustomDialogBuilder;->textBtn1:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 43
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, "bnt1":Landroid/widget/Button;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 46
    .end local v0    # "bnt1":Landroid/widget/Button;
    :cond_0
    return-object p0
.end method

.method public setTextBtn2(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;
    .locals 3
    .param p1, "textBtn2"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lhdp/widget/CustomDialogBuilder;->textBtn2:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 52
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, "bnt2":Landroid/widget/Button;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 55
    .end local v0    # "bnt2":Landroid/widget/Button;
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lhdp/widget/CustomDialogBuilder;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lhdp/widget/CustomDialogBuilder;->title:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lhdp/widget/CustomDialogBuilder;->dialogView:Landroid/view/View;

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, "info":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .end local v0    # "info":Landroid/widget/TextView;
    :cond_0
    return-object p0
.end method
