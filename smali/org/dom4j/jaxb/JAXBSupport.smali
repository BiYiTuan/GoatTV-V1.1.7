.class abstract Lorg/dom4j/jaxb/JAXBSupport;
.super Ljava/lang/Object;
.source "JAXBSupport.java"


# instance fields
.field private classloader:Ljava/lang/ClassLoader;

.field private contextPath:Ljava/lang/String;

.field private jaxbContext:Ljavax/xml/bind/JAXBContext;

.field private marshaller:Ljavax/xml/bind/Marshaller;

.field private unmarshaller:Ljavax/xml/bind/Unmarshaller;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/dom4j/jaxb/JAXBSupport;->contextPath:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "contextPath"    # Ljava/lang/String;
    .param p2, "classloader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/dom4j/jaxb/JAXBSupport;->contextPath:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/dom4j/jaxb/JAXBSupport;->classloader:Ljava/lang/ClassLoader;

    .line 44
    return-void
.end method

.method private getContext()Ljavax/xml/bind/JAXBContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->jaxbContext:Ljavax/xml/bind/JAXBContext;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->classloader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->contextPath:Ljava/lang/String;

    invoke-static {v0}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->jaxbContext:Ljavax/xml/bind/JAXBContext;

    .line 110
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->jaxbContext:Ljavax/xml/bind/JAXBContext;

    return-object v0

    .line 106
    :cond_1
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->contextPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/dom4j/jaxb/JAXBSupport;->classloader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->jaxbContext:Ljavax/xml/bind/JAXBContext;

    goto :goto_0
.end method

.method private getMarshaller()Ljavax/xml/bind/Marshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->marshaller:Ljavax/xml/bind/Marshaller;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBSupport;->getContext()Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/bind/JAXBContext;->createMarshaller()Ljavax/xml/bind/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->marshaller:Ljavax/xml/bind/Marshaller;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->marshaller:Ljavax/xml/bind/Marshaller;

    return-object v0
.end method

.method private getUnmarshaller()Ljavax/xml/bind/Unmarshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->unmarshaller:Ljavax/xml/bind/Unmarshaller;

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBSupport;->getContext()Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->unmarshaller:Ljavax/xml/bind/Unmarshaller;

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->unmarshaller:Ljavax/xml/bind/Unmarshaller;

    return-object v0
.end method


# virtual methods
.method protected marshal(Ljavax/xml/bind/Element;)Lorg/dom4j/Element;
    .locals 2
    .param p1, "element"    # Ljavax/xml/bind/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lorg/dom4j/dom/DOMDocument;

    invoke-direct {v0}, Lorg/dom4j/dom/DOMDocument;-><init>()V

    .line 61
    .local v0, "doc":Lorg/dom4j/dom/DOMDocument;
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBSupport;->getMarshaller()Ljavax/xml/bind/Marshaller;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljavax/xml/bind/Marshaller;->marshal(Ljava/lang/Object;Lorg/w3c/dom/Node;)V

    .line 63
    invoke-virtual {v0}, Lorg/dom4j/dom/DOMDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    return-object v1
.end method

.method protected unmarshal(Lorg/dom4j/Element;)Ljavax/xml/bind/Element;
    .locals 3
    .param p1, "element"    # Lorg/dom4j/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-interface {p1}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 82
    .local v0, "source":Ljavax/xml/transform/Source;
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBSupport;->getUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/bind/Element;

    return-object v1
.end method
