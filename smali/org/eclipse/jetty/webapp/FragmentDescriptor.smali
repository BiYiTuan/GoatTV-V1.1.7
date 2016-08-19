.class public Lorg/eclipse/jetty/webapp/FragmentDescriptor;
.super Lorg/eclipse/jetty/webapp/WebDescriptor;
.source "FragmentDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;
    }
.end annotation


# static fields
.field public static final NAMELESS:Ljava/lang/String; = "@@-NAMELESS-@@"

.field protected static _counter:I


# instance fields
.field protected _afters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _befores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _name:Ljava/lang/String;

.field protected _otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_counter:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 1
    .param p1, "xml"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/webapp/WebDescriptor;-><init>(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 36
    sget-object v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->None:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_befores:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_afters:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public getAfters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_afters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBefores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_befores:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdering()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOtherType()Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    return-object v0
.end method

.method public parse()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0}, Lorg/eclipse/jetty/webapp/WebDescriptor;->parse()V

    .line 60
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->processName()V

    .line 61
    return-void
.end method

.method public processAfters(Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 7
    .param p1, "ordering"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 121
    const-string v4, "after"

    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 122
    .local v0, "after":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-nez v0, :cond_1

    .line 143
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 127
    .local v2, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 130
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 131
    check-cast v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 132
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "others"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    sget-object v5, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->After:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    if-eq v4, v5, :cond_3

    .line 135
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate <other> clause detected in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/resource/Resource;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_3
    sget-object v4, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->After:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    iput-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_afters:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public processBefores(Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 7
    .param p1, "ordering"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 95
    const-string v4, "before"

    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 96
    .local v0, "before":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-nez v0, :cond_1

    .line 116
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 101
    .local v2, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 104
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 105
    check-cast v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 106
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "others"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 108
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    sget-object v5, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->None:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    if-eq v4, v5, :cond_3

    .line 109
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate <other> clause detected in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/resource/Resource;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    :cond_3
    sget-object v4, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->Before:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    iput-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_befores:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public processName()V
    .locals 6

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getRoot()Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    .line 66
    .local v1, "root":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 67
    .local v0, "nameNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@-NAMELESS-@@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_counter:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_counter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_name:Ljava/lang/String;

    .line 68
    if-eqz v0, :cond_0

    .line 70
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "tmp":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 72
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_name:Ljava/lang/String;

    .line 74
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public processOrdering()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getRoot()Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    .line 81
    .local v1, "root":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v2, "ordering"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 82
    .local v0, "ordering":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_isOrdered:Z

    .line 87
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->processBefores(Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    .line 88
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->processAfters(Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0
.end method
