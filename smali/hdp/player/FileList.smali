.class public Lhdp/player/FileList;
.super Landroid/app/Activity;
.source "FileList.java"


# instance fields
.field private ChannelNum:I

.field private CustomTid:Ljava/lang/String;

.field private Getid:Ljava/lang/String;

.field private currentpath:Ljava/lang/String;

.field private filelist:Landroid/widget/ListView;

.field private files:[Ljava/io/File;

.field private folder:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private img:[I

.field private index:I

.field private psi:I

.field private simple:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/FileList;->CustomTid:Ljava/lang/String;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 54
    iput-object v0, p0, Lhdp/player/FileList;->img:[I

    .line 194
    new-instance v0, Lhdp/player/FileList$1;

    invoke-direct {v0, p0}, Lhdp/player/FileList$1;-><init>(Lhdp/player/FileList;)V

    iput-object v0, p0, Lhdp/player/FileList;->handler:Landroid/os/Handler;

    .line 42
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x7f020027
        0x7f020026
        0x7f02001b
    .end array-data
.end method

.method private CustomPass()V
    .locals 5

    .prologue
    .line 251
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 252
    .local v1, "inputServer":Landroid/widget/EditText;
    const v2, 0x7f06006b

    invoke-virtual {p0, v2}, Lhdp/player/FileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 253
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f06006a

    invoke-virtual {p0, v2}, Lhdp/player/FileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 255
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 256
    const v3, 0x7f06004f

    invoke-virtual {p0, v3}, Lhdp/player/FileList;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    new-instance v4, Lhdp/player/FileList$4;

    invoke-direct {v4, p0}, Lhdp/player/FileList$4;-><init>(Lhdp/player/FileList;)V

    .line 256
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    const v2, 0x7f06004e

    invoke-virtual {p0, v2}, Lhdp/player/FileList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    new-instance v3, Lhdp/player/FileList$5;

    invoke-direct {v3, p0, v1}, Lhdp/player/FileList$5;-><init>(Lhdp/player/FileList;Landroid/widget/EditText;)V

    .line 265
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 277
    return-void
.end method

.method private MyTv(Ljava/io/File;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 206
    invoke-static {p1}, Lhdp/http/MyApp;->parseTxt(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v2

    .line 208
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_0

    .line 229
    sget-object v7, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    iget-object v8, p0, Lhdp/player/FileList;->CustomTid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lhdp/util/LiveDataHelper;->deleteChannels(Ljava/lang/String;)V

    .line 230
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lhdp/player/FileList$3;

    invoke-direct {v8, p0, v0}, Lhdp/player/FileList$3;-><init>(Lhdp/player/FileList;Ljava/util/ArrayList;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 240
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 244
    .end local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .end local v1    # "i":I
    :goto_1
    const/4 v2, 0x0

    .line 245
    return-void

    .line 211
    .restart local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v5, v7, v10

    .line 212
    .local v5, "url_1":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v11

    const-string v8, ";"

    const-string v9, "#"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "url_2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 220
    new-instance v3, Lhdp/javabean/LiveChannelInfo;

    invoke-direct {v3}, Lhdp/javabean/LiveChannelInfo;-><init>()V

    .line 221
    .local v3, "live":Lhdp/javabean/LiveChannelInfo;
    iput-object v5, v3, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 222
    iget v7, p0, Lhdp/player/FileList;->ChannelNum:I

    add-int/2addr v7, v1

    iput v7, v3, Lhdp/javabean/LiveChannelInfo;->num:I

    .line 223
    iget v7, v3, Lhdp/javabean/LiveChannelInfo;->num:I

    iput v7, v3, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 224
    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v10

    iput-object v7, v3, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 225
    new-array v7, v11, [Ljava/lang/String;

    iget-object v8, p0, Lhdp/player/FileList;->CustomTid:Ljava/lang/String;

    aput-object v8, v7, v10

    iput-object v7, v3, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    .line 226
    iget-object v7, p0, Lhdp/player/FileList;->CustomTid:Ljava/lang/String;

    iput-object v7, v3, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v3    # "live":Lhdp/javabean/LiveChannelInfo;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhdp/javabean/LiveChannelInfo;

    .line 214
    .local v4, "liveChannelInfo":Lhdp/javabean/LiveChannelInfo;
    iget-object v8, v4, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 215
    new-array v7, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v4, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 215
    iput-object v7, v4, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    goto :goto_2

    .line 242
    .end local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .end local v1    # "i":I
    .end local v4    # "liveChannelInfo":Lhdp/javabean/LiveChannelInfo;
    .end local v5    # "url_1":Ljava/lang/String;
    .end local v6    # "url_2":Ljava/lang/String;
    :cond_3
    const v7, 0x7f060086

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lhdp/player/FileList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lhdp/player/FileList;->folder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lhdp/player/FileList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lhdp/player/FileList;->currentpath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lhdp/player/FileList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lhdp/player/FileList;->folder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lhdp/player/FileList;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lhdp/player/FileList;->index:I

    return-void
.end method

.method static synthetic access$4(Lhdp/player/FileList;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lhdp/player/FileList;->MyTv(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$5(Lhdp/player/FileList;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lhdp/player/FileList;->psi:I

    return v0
.end method


# virtual methods
.method public init(Ljava/io/File;)V
    .locals 11
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/FileList;->currentpath:Ljava/lang/String;

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    if-eqz v0, :cond_6

    .line 127
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 159
    .end local v6    # "i":I
    :goto_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03000b

    new-array v4, v10, [Ljava/lang/String;

    .line 160
    const-string v1, "image"

    aput-object v1, v4, v5

    const-string v1, "filenames"

    aput-object v1, v4, v8

    const-string v1, "import"

    aput-object v1, v4, v9

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 161
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 159
    iput-object v0, p0, Lhdp/player/FileList;->simple:Landroid/widget/SimpleAdapter;

    .line 162
    iget-object v0, p0, Lhdp/player/FileList;->filelist:Landroid/widget/ListView;

    iget-object v1, p0, Lhdp/player/FileList;->simple:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    return-void

    .line 128
    .restart local v6    # "i":I
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v7, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".tv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    :cond_1
    const-string v0, "image"

    iget-object v1, p0, Lhdp/player/FileList;->img:[I

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "import"

    iget-object v1, p0, Lhdp/player/FileList;->img:[I

    aget v1, v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "filenames"

    iget-object v1, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_2
    :goto_2
    iget-object v0, p0, Lhdp/player/FileList;->currentpath:Ljava/lang/String;

    const-string v1, "/mnt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "obb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cd-rom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 135
    :cond_4
    iget-object v0, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    const-string v0, "image"

    iget-object v1, p0, Lhdp/player/FileList;->img:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "filenames"

    iget-object v1, p0, Lhdp/player/FileList;->files:[Ljava/io/File;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 151
    :cond_5
    const-string v0, "filenames"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 154
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 157
    .end local v6    # "i":I
    .end local v7    # "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    goto/16 :goto_1

    .line 160
    :array_0
    .array-data 4
        0x7f0a0031
        0x7f0a0032
        0x7f0a0033
    .end array-data
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 174
    iget-object v2, p0, Lhdp/player/FileList;->currentpath:Ljava/lang/String;

    const-string v3, "/mnt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lhdp/player/FileList;->finish()V

    .line 178
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lhdp/player/FileList;->currentpath:Ljava/lang/String;

    const/4 v3, 0x0

    .line 179
    iget-object v4, p0, Lhdp/player/FileList;->currentpath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 178
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "filef":Ljava/io/File;
    invoke-virtual {p0, v1}, Lhdp/player/FileList;->init(Ljava/io/File;)V

    .line 181
    iget-object v2, p0, Lhdp/player/FileList;->filelist:Landroid/widget/ListView;

    iget v3, p0, Lhdp/player/FileList;->index:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1    # "filef":Ljava/io/File;
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lhdp/player/FileList;->setContentView(I)V

    .line 62
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lhdp/player/FileList;->setResult(I)V

    .line 64
    invoke-virtual {p0}, Lhdp/player/FileList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhdp/player/FileList;->Getid:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lhdp/player/FileList;->Getid:Ljava/lang/String;

    const-string v3, "custom01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "custom01"

    iput-object v2, p0, Lhdp/player/FileList;->CustomTid:Ljava/lang/String;

    .line 67
    const/16 v2, 0x4e21

    iput v2, p0, Lhdp/player/FileList;->ChannelNum:I

    .line 68
    const/4 v2, 0x1

    iput v2, p0, Lhdp/player/FileList;->psi:I

    .line 79
    :goto_0
    const v2, 0x7f0a0034

    invoke-virtual {p0, v2}, Lhdp/player/FileList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lhdp/player/FileList;->filelist:Landroid/widget/ListView;

    .line 80
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lhdp/player/FileList;->init(Ljava/io/File;)V

    .line 81
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f060064

    invoke-virtual {p0, v2}, Lhdp/player/FileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    iget-object v2, p0, Lhdp/player/FileList;->filelist:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v2, p0, Lhdp/player/FileList;->filelist:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 89
    iget-object v2, p0, Lhdp/player/FileList;->filelist:Landroid/widget/ListView;

    new-instance v3, Lhdp/player/FileList$2;

    invoke-direct {v3, p0}, Lhdp/player/FileList$2;-><init>(Lhdp/player/FileList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    return-void

    .line 69
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lhdp/player/FileList;->Getid:Ljava/lang/String;

    const-string v3, "custom02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const-string v2, "custom02"

    iput-object v2, p0, Lhdp/player/FileList;->CustomTid:Ljava/lang/String;

    .line 71
    const/16 v2, 0x7531

    iput v2, p0, Lhdp/player/FileList;->ChannelNum:I

    .line 72
    const/4 v2, 0x2

    iput v2, p0, Lhdp/player/FileList;->psi:I

    goto :goto_0

    .line 74
    :cond_1
    const-string v2, "custom03"

    iput-object v2, p0, Lhdp/player/FileList;->CustomTid:Ljava/lang/String;

    .line 75
    const v2, 0x9c41

    iput v2, p0, Lhdp/player/FileList;->ChannelNum:I

    .line 76
    const/4 v2, 0x3

    iput v2, p0, Lhdp/player/FileList;->psi:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 191
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 170
    return-void
.end method
