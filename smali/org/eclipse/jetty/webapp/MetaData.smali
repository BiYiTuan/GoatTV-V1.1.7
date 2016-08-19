.class public Lorg/eclipse/jetty/webapp/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/MetaData$1;,
        Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final ORDERED_LIBS:Ljava/lang/String; = "javax.servlet.context.orderedLibs"


# instance fields
.field protected final _annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field protected final _descriptorProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/DescriptorProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected _metaDataComplete:Z

.field protected final _orderedContainerJars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation
.end field

.field protected final _orderedWebInfJars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation
.end field

.field protected _ordering:Lorg/eclipse/jetty/webapp/Ordering;

.field protected _origins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected _webDefaultsRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

.field protected final _webFragmentAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _webFragmentNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/webapp/FragmentDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected final _webFragmentResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            "Lorg/eclipse/jetty/webapp/FragmentDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected final _webFragmentRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/FragmentDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected final _webInfJars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation
.end field

.field protected final _webOverrideRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/WebDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected _webXmlRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

.field protected allowDuplicateFragmentNames:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/MetaData;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_origins:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webOverrideRoots:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_annotations:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_descriptorProcessors:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentRoots:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentNameMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentResourceMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentAnnotations:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webInfJars:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedWebInfJars:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedContainerJars:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->allowDuplicateFragmentNames:Z

    .line 113
    return-void
.end method


# virtual methods
.method public addContainerJar(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 1
    .param p1, "jar"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 519
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedContainerJars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    return-void
.end method

.method public addDescriptorProcessor(Lorg/eclipse/jetty/webapp/DescriptorProcessor;)V
    .locals 1
    .param p1, "p"    # Lorg/eclipse/jetty/webapp/DescriptorProcessor;

    .prologue
    .line 275
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_descriptorProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method public addDiscoveredAnnotations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "annotations":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    return-void
.end method

.method public addDiscoveredAnnotations(Lorg/eclipse/jetty/util/resource/Resource;Ljava/util/List;)V
    .locals 2
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentAnnotations:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method public addFragment(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 5
    .param p1, "jarResource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p2, "xmlResource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    iget-boolean v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_metaDataComplete:Z

    if-eqz v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    invoke-direct {v0, p2}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;-><init>(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 234
    .local v0, "descriptor":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentResourceMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentRoots:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->parse()V

    .line 239
    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 241
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentNameMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/webapp/Descriptor;

    .line 242
    .local v1, "existing":Lorg/eclipse/jetty/webapp/Descriptor;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/MetaData;->isAllowDuplicateFragmentNames()Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate fragment name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentNameMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v1    # "existing":Lorg/eclipse/jetty/webapp/Descriptor;
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    invoke-interface {v2}, Lorg/eclipse/jetty/webapp/Ordering;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->isOrdered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    new-instance v2, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;

    invoke-direct {v2, p0}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;-><init>(Lorg/eclipse/jetty/webapp/MetaData;)V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    goto/16 :goto_0
.end method

.method public addOverride(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 7
    .param p1, "override"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 185
    new-instance v3, Lorg/eclipse/jetty/webapp/OverrideDescriptor;

    invoke-direct {v3, p1}, Lorg/eclipse/jetty/webapp/OverrideDescriptor;-><init>(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 186
    .local v3, "webOverrideRoot":Lorg/eclipse/jetty/webapp/OverrideDescriptor;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/webapp/OverrideDescriptor;->setValidating(Z)V

    .line 187
    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/OverrideDescriptor;->parse()V

    .line 189
    sget-object v4, Lorg/eclipse/jetty/webapp/MetaData$1;->$SwitchMap$org$eclipse$jetty$webapp$MetaDataComplete:[I

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/OverrideDescriptor;->getMetaDataComplete()Lorg/eclipse/jetty/webapp/MetaDataComplete;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/webapp/MetaDataComplete;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 201
    :goto_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/OverrideDescriptor;->isOrdered()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    if-nez v4, :cond_0

    .line 204
    new-instance v4, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;

    invoke-direct {v4, p0}, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;-><init>(Lorg/eclipse/jetty/webapp/MetaData;)V

    iput-object v4, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    .line 206
    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/OverrideDescriptor;->getOrdering()Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    .local v2, "s":Ljava/lang/String;
    const-string v4, "others"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    check-cast v4, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;

    invoke-virtual {v4}, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->addOthers()V

    goto :goto_1

    .line 192
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_0
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/MetaData;->_metaDataComplete:Z

    goto :goto_0

    .line 195
    :pswitch_1
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/MetaData;->_metaDataComplete:Z

    goto :goto_0

    .line 212
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    check-cast v4, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;

    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 215
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webOverrideRoots:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addWebInfJar(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 1
    .param p1, "newResource"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 504
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webInfJars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webDefaultsRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_origins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 122
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webXmlRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webOverrideRoots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_metaDataComplete:Z

    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_descriptorProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentRoots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentResourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentAnnotations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webInfJars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedWebInfJars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedContainerJars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    .line 135
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->allowDuplicateFragmentNames:Z

    .line 136
    return-void
.end method

.method public getFragment(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 439
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    return-object v0
.end method

.method public getFragment(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    .locals 1
    .param p1, "jar"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 434
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentResourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/FragmentDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentRoots:Ljava/util/List;

    return-object v0
.end method

.method public getJarForFragment(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/MetaData;->getFragment(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move-result-object v0

    .line 445
    .local v0, "f":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    if-nez v0, :cond_1

    .line 446
    const/4 v2, 0x0

    .line 454
    :cond_0
    return-object v2

    .line 448
    :cond_1
    const/4 v2, 0x0

    .line 449
    .local v2, "jar":Lorg/eclipse/jetty/util/resource/Resource;
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentResourceMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/resource/Resource;

    .line 451
    .local v3, "r":Lorg/eclipse/jetty/util/resource/Resource;
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentResourceMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    move-object v2, v3

    goto :goto_0
.end method

.method public getNamedFragments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/webapp/FragmentDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentNameMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOrderedContainerJars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedContainerJars:Ljava/util/List;

    return-object v0
.end method

.method public getOrderedFragments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/FragmentDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/webapp/FragmentDescriptor;>;"
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedWebInfJars:Ljava/util/List;

    if-nez v4, :cond_1

    .line 419
    :cond_0
    return-object v2

    .line 413
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedWebInfJars:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/resource/Resource;

    .line 415
    .local v3, "r":Lorg/eclipse/jetty/util/resource/Resource;
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentResourceMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    .line 416
    .local v0, "fd":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    if-eqz v0, :cond_2

    .line 417
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getOrderedWebInfJars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedWebInfJars:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedWebInfJars:Ljava/util/List;

    goto :goto_0
.end method

.method public getOrdering()Lorg/eclipse/jetty/webapp/Ordering;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    return-object v0
.end method

.method public getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_origins:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;

    .line 466
    .local v0, "x":Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;
    if-nez v0, :cond_0

    .line 467
    sget-object v1, Lorg/eclipse/jetty/webapp/Origin;->NotSet:Lorg/eclipse/jetty/webapp/Origin;

    .line 469
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->getOriginType()Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v1

    goto :goto_0
.end method

.method public getOriginDescriptor(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Descriptor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_origins:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;

    .line 476
    .local v0, "o":Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;
    if-nez v0, :cond_0

    .line 477
    const/4 v1, 0x0

    .line 478
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;->getDescriptor()Lorg/eclipse/jetty/webapp/Descriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public getOverrideWebs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/WebDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webOverrideRoots:Ljava/util/List;

    return-object v0
.end method

.method public getWebDefault()Lorg/eclipse/jetty/webapp/WebDescriptor;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webDefaultsRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    return-object v0
.end method

.method public getWebInfJars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webInfJars:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWebXml()Lorg/eclipse/jetty/webapp/WebDescriptor;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webXmlRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    return-object v0
.end method

.method public isAllowDuplicateFragmentNames()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->allowDuplicateFragmentNames:Z

    return v0
.end method

.method public isDistributable()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 364
    iget-object v7, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webDefaultsRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webDefaultsRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v7}, Lorg/eclipse/jetty/webapp/WebDescriptor;->isDistributable()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webXmlRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webXmlRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v7}, Lorg/eclipse/jetty/webapp/WebDescriptor;->isDistributable()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v1, v6

    .line 368
    .local v1, "distributable":Z
    :goto_0
    iget-object v7, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webOverrideRoots:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/WebDescriptor;

    .line 369
    .local v0, "d":Lorg/eclipse/jetty/webapp/WebDescriptor;
    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/WebDescriptor;->isDistributable()Z

    move-result v7

    and-int/2addr v1, v7

    goto :goto_1

    .end local v0    # "d":Lorg/eclipse/jetty/webapp/WebDescriptor;
    .end local v1    # "distributable":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    move v1, v5

    .line 364
    goto :goto_0

    .line 371
    .restart local v1    # "distributable":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/MetaData;->getOrderedWebInfJars()Ljava/util/List;

    move-result-object v3

    .line 372
    .local v3, "orderedResources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/util/resource/Resource;

    .line 374
    .local v4, "r":Lorg/eclipse/jetty/util/resource/Resource;
    iget-object v7, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentResourceMap:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    .line 375
    .local v0, "d":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    if-eqz v0, :cond_4

    .line 376
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->isDistributable()Z

    move-result v7

    if-eqz v7, :cond_5

    move v1, v6

    :goto_3
    goto :goto_2

    :cond_5
    move v1, v5

    goto :goto_3

    .line 378
    .end local v0    # "d":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_6
    return v1
.end method

.method public isMetaDataComplete()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_metaDataComplete:Z

    return v0
.end method

.method public orderFragments()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedWebInfJars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webInfJars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedWebInfJars:Ljava/util/List;

    iget-object v1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    iget-object v2, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webInfJars:Ljava/util/List;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/webapp/Ordering;->order(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedWebInfJars:Ljava/util/List;

    iget-object v1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webInfJars:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public resolve(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 19
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v15, Lorg/eclipse/jetty/webapp/MetaData;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v16, "metadata resolve {}"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/webapp/MetaData;->_origins:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 304
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    if-eqz v15, :cond_1

    .line 306
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v9, "orderedLibs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/webapp/MetaData;->_orderedWebInfJars:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jetty/util/resource/Resource;

    .line 310
    .local v14, "webInfJar":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "fullname":Ljava/lang/String;
    const-string v15, ".jar"

    invoke-virtual {v4, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 312
    .local v5, "i":I
    const-string v15, "/"

    invoke-virtual {v4, v15, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v8

    .line 313
    .local v8, "j":I
    add-int/lit8 v15, v8, 0x1

    add-int/lit8 v16, v5, 0x4

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    .end local v4    # "fullname":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "j":I
    .end local v14    # "webInfJar":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    const-string v15, "javax.servlet.context.orderedLibs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "orderedLibs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/webapp/MetaData;->_descriptorProcessors:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/webapp/DescriptorProcessor;

    .line 320
    .local v10, "p":Lorg/eclipse/jetty/webapp/DescriptorProcessor;
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/webapp/MetaData;->getWebDefault()Lorg/eclipse/jetty/webapp/WebDescriptor;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v15}, Lorg/eclipse/jetty/webapp/DescriptorProcessor;->process(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/webapp/MetaData;->getWebXml()Lorg/eclipse/jetty/webapp/WebDescriptor;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v15}, Lorg/eclipse/jetty/webapp/DescriptorProcessor;->process(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/webapp/MetaData;->getOverrideWebs()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/eclipse/jetty/webapp/WebDescriptor;

    .line 324
    .local v13, "wd":Lorg/eclipse/jetty/webapp/WebDescriptor;
    sget-object v15, Lorg/eclipse/jetty/webapp/MetaData;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v16, "process {} {}"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    move-object/from16 v0, p1

    invoke-interface {v10, v0, v13}, Lorg/eclipse/jetty/webapp/DescriptorProcessor;->process(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_1

    .line 329
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "p":Lorg/eclipse/jetty/webapp/DescriptorProcessor;
    .end local v13    # "wd":Lorg/eclipse/jetty/webapp/WebDescriptor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/webapp/MetaData;->_annotations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;

    .line 331
    .local v1, "a":Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;
    sget-object v15, Lorg/eclipse/jetty/webapp/MetaData;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v16, "apply {}"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v1, v17, v18

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-virtual {v1}, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->apply()V

    goto :goto_2

    .line 336
    .end local v1    # "a":Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/webapp/MetaData;->getOrderedWebInfJars()Ljava/util/List;

    move-result-object v12

    .line 337
    .local v12, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jetty/util/resource/Resource;

    .line 339
    .local v11, "r":Lorg/eclipse/jetty/util/resource/Resource;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentResourceMap:Ljava/util/Map;

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    .line 340
    .local v2, "fd":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    if-eqz v2, :cond_6

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/webapp/MetaData;->_descriptorProcessors:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/webapp/DescriptorProcessor;

    .line 344
    .restart local v10    # "p":Lorg/eclipse/jetty/webapp/DescriptorProcessor;
    sget-object v15, Lorg/eclipse/jetty/webapp/MetaData;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v16, "process {} {}"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    aput-object v2, v17, v18

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    move-object/from16 v0, p1

    invoke-interface {v10, v0, v2}, Lorg/eclipse/jetty/webapp/DescriptorProcessor;->process(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_3

    .line 349
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "p":Lorg/eclipse/jetty/webapp/DescriptorProcessor;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/webapp/MetaData;->_webFragmentAnnotations:Ljava/util/Map;

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 350
    .local v3, "fragAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;>;"
    if-eqz v3, :cond_5

    .line 352
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;

    .line 354
    .restart local v1    # "a":Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;
    sget-object v15, Lorg/eclipse/jetty/webapp/MetaData;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v16, "apply {}"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v1, v17, v18

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-virtual {v1}, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->apply()V

    goto :goto_4

    .line 360
    .end local v1    # "a":Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;
    .end local v2    # "fd":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    .end local v3    # "fragAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_7
    return-void
.end method

.method public setAllowDuplicateFragmentNames(Z)V
    .locals 0
    .param p1, "allowDuplicateFragmentNames"    # Z

    .prologue
    .line 528
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/MetaData;->allowDuplicateFragmentNames:Z

    .line 529
    return-void
.end method

.method public setDefaults(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 4
    .param p1, "webDefaults"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v3, Lorg/eclipse/jetty/webapp/DefaultsDescriptor;

    invoke-direct {v3, p1}, Lorg/eclipse/jetty/webapp/DefaultsDescriptor;-><init>(Lorg/eclipse/jetty/util/resource/Resource;)V

    iput-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webDefaultsRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    .line 142
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webDefaultsRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->parse()V

    .line 143
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webDefaultsRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->isOrdered()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    if-nez v3, :cond_0

    .line 146
    new-instance v3, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;

    invoke-direct {v3, p0}, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;-><init>(Lorg/eclipse/jetty/webapp/MetaData;)V

    iput-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    .line 148
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webDefaultsRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->getOrdering()Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, "s":Ljava/lang/String;
    const-string v3, "others"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    check-cast v3, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->addOthers()V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    check-cast v3, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setOrdering(Lorg/eclipse/jetty/webapp/Ordering;)V
    .locals 0
    .param p1, "o"    # Lorg/eclipse/jetty/webapp/Ordering;

    .prologue
    .line 429
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    .line 430
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;

    sget-object v1, Lorg/eclipse/jetty/webapp/Origin;->Annotation:Lorg/eclipse/jetty/webapp/Origin;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Origin;)V

    .line 493
    .local v0, "x":Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_origins:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "d"    # Lorg/eclipse/jetty/webapp/Descriptor;

    .prologue
    .line 483
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 484
    .local v0, "x":Lorg/eclipse/jetty/webapp/MetaData$OriginInfo;
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/MetaData;->_origins:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    return-void
.end method

.method public setWebXml(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 5
    .param p1, "webXml"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v3, Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-direct {v3, p1}, Lorg/eclipse/jetty/webapp/WebDescriptor;-><init>(Lorg/eclipse/jetty/util/resource/Resource;)V

    iput-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webXmlRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    .line 163
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webXmlRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->parse()V

    .line 164
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webXmlRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->getMetaDataComplete()Lorg/eclipse/jetty/webapp/MetaDataComplete;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jetty/webapp/MetaDataComplete;->True:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_metaDataComplete:Z

    .line 166
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webXmlRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->isOrdered()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    if-nez v3, :cond_0

    .line 169
    new-instance v3, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;

    invoke-direct {v3, p0}, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;-><init>(Lorg/eclipse/jetty/webapp/MetaData;)V

    iput-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    .line 171
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_webXmlRoot:Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->getOrdering()Ljava/util/List;

    move-result-object v1

    .line 172
    .local v1, "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    .local v2, "s":Ljava/lang/String;
    const-string v3, "others"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    check-cast v3, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->addOthers()V

    goto :goto_1

    .line 164
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 177
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "s":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/MetaData;->_ordering:Lorg/eclipse/jetty/webapp/Ordering;

    check-cast v3, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    return-void
.end method
