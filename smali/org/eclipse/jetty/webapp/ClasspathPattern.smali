.class public Lorg/eclipse/jetty/webapp/ClasspathPattern;
.super Ljava/lang/Object;
.source "ClasspathPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/ClasspathPattern$1;,
        Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    }
.end annotation


# instance fields
.field private final _entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final _patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    .line 60
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->setPattern(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    .line 54
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->setPatterns([Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private addPatterns([Ljava/lang/String;)V
    .locals 6
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 85
    if-eqz p1, :cond_1

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 90
    .local v4, "pattern":Ljava/lang/String;
    invoke-direct {p0, v4}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->createEntry(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    iget-object v5, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v5, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pattern":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private createEntry(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 116
    new-instance v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;

    .end local v0    # "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;-><init>(Lorg/eclipse/jetty/webapp/ClasspathPattern$1;)V

    .line 117
    .restart local v0    # "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->result:Z

    .line 118
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->partial:Z

    .line 119
    iget-boolean v2, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->result:Z

    if-eqz v2, :cond_2

    .end local v1    # "item":Ljava/lang/String;
    :goto_1
    iput-object v1, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->classpath:Ljava/lang/String;

    .line 122
    :cond_0
    return-object v0

    .line 117
    .restart local v1    # "item":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private setPatterns([Ljava/lang/String;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->addPatterns([Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "patterns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ":,"

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, "entries":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->addPatterns([Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public getPatterns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "patterns":[Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    iget-object v2, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "patterns":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 170
    .restart local v0    # "patterns":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "result":Z
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 186
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 187
    const-string v3, "^[.]+"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    const-string v3, "\\$.*$"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;

    .line 192
    .local v0, "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    if-eqz v0, :cond_0

    .line 194
    iget-boolean v3, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->partial:Z

    if-eqz v3, :cond_2

    .line 196
    iget-object v3, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->classpath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget-boolean v2, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->result:Z

    .line 213
    .end local v0    # "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v2

    .line 204
    .restart local v0    # "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->classpath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget-boolean v2, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->result:Z

    .line 207
    goto :goto_0
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->addPattern(Ljava/lang/String;)V

    .line 136
    return-void
.end method
