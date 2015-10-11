.class Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;
.super Lcom/htc/customization/BaseXmlHandler;
.source "CustomizationAccLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/customization/CustomizationAccLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccXmlDataHandler"
.end annotation


# instance fields
.field private mIntVals:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mStrVals:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTempReader:Lcom/htc/customization/SystemReader;

.field private mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/customization/CustomizationAccLoader;


# direct methods
.method constructor <init>(Lcom/htc/customization/CustomizationAccLoader;)V
    .locals 1

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->this$0:Lcom/htc/customization/CustomizationAccLoader;

    invoke-direct {p0}, Lcom/htc/customization/BaseXmlHandler;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mType:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 94
    const-string v1, "app"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    const-string v2, "app"

    invoke-virtual {v1, v2}, Lcom/htc/customization/SystemReader;->setCategory(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->this$0:Lcom/htc/customization/CustomizationAccLoader;

    # getter for: Lcom/htc/customization/CustomizationAccLoader;->mAppSettings:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/customization/CustomizationAccLoader;->access$000(Lcom/htc/customization/CustomizationAccLoader;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->this$0:Lcom/htc/customization/CustomizationAccLoader;

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v3}, Lcom/htc/customization/SystemReader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/customization/CustomizationAccLoader;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1}, Lcom/htc/customization/SystemReader;->dumpValues()V

    .line 99
    iput-object v5, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    .line 138
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->reset()V

    .line 139
    return-void

    .line 100
    :cond_1
    const-string/jumbo v1, "system"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->this$0:Lcom/htc/customization/CustomizationAccLoader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    # setter for: Lcom/htc/customization/CustomizationAccLoader;->mAccSystemReader:Lcom/htc/customization/SystemReader;
    invoke-static {v1, v2}, Lcom/htc/customization/CustomizationAccLoader;->access$102(Lcom/htc/customization/CustomizationAccLoader;Lcom/htc/customization/SystemReader;)Lcom/htc/customization/SystemReader;

    .line 102
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->this$0:Lcom/htc/customization/CustomizationAccLoader;

    # getter for: Lcom/htc/customization/CustomizationAccLoader;->mAccSystemReader:Lcom/htc/customization/SystemReader;
    invoke-static {v1}, Lcom/htc/customization/CustomizationAccLoader;->access$100(Lcom/htc/customization/CustomizationAccLoader;)Lcom/htc/customization/SystemReader;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Lcom/htc/customization/SystemReader;->setName(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->this$0:Lcom/htc/customization/CustomizationAccLoader;

    # getter for: Lcom/htc/customization/CustomizationAccLoader;->mAccSystemReader:Lcom/htc/customization/SystemReader;
    invoke-static {v1}, Lcom/htc/customization/CustomizationAccLoader;->access$100(Lcom/htc/customization/CustomizationAccLoader;)Lcom/htc/customization/SystemReader;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Lcom/htc/customization/SystemReader;->setCategory(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->this$0:Lcom/htc/customization/CustomizationAccLoader;

    # getter for: Lcom/htc/customization/CustomizationAccLoader;->mAppSettings:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/customization/CustomizationAccLoader;->access$000(Lcom/htc/customization/CustomizationAccLoader;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "system"

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->this$0:Lcom/htc/customization/CustomizationAccLoader;

    # getter for: Lcom/htc/customization/CustomizationAccLoader;->mAccSystemReader:Lcom/htc/customization/SystemReader;
    invoke-static {v3}, Lcom/htc/customization/CustomizationAccLoader;->access$100(Lcom/htc/customization/CustomizationAccLoader;)Lcom/htc/customization/SystemReader;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->this$0:Lcom/htc/customization/CustomizationAccLoader;

    # getter for: Lcom/htc/customization/CustomizationAccLoader;->mAccSystemReader:Lcom/htc/customization/SystemReader;
    invoke-static {v1}, Lcom/htc/customization/CustomizationAccLoader;->access$100(Lcom/htc/customization/CustomizationAccLoader;)Lcom/htc/customization/SystemReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/customization/SystemReader;->dumpValues()V

    goto :goto_0

    .line 106
    :cond_2
    const-string/jumbo v1, "item"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 107
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mType:Ljava/lang/String;

    const-string v2, "boolean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/SystemReader;->handleBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mType:Ljava/lang/String;

    const-string/jumbo v2, "integer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/SystemReader;->handleInteger(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mType:Ljava/lang/String;

    const-string/jumbo v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/SystemReader;->handleString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_5
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mType:Ljava/lang/String;

    const-string v2, "byte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/SystemReader;->handleByte(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_6
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mType:Ljava/lang/String;

    const-string/jumbo v2, "integer-array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mIntVals:Ljava/util/Vector;

    iget-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mIntVals:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-virtual {v2, v3, v1}, Lcom/htc/customization/SystemReader;->handleIntArray(Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 118
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mIntVals:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 119
    iput-object v5, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mIntVals:Ljava/util/Vector;

    goto/16 :goto_0

    .line 120
    :cond_7
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mType:Ljava/lang/String;

    const-string/jumbo v2, "string-array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mStrVals:Ljava/util/Vector;

    iget-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mStrVals:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/htc/customization/SystemReader;->handleStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mStrVals:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 124
    iput-object v5, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mStrVals:Ljava/util/Vector;

    goto/16 :goto_0

    .line 126
    :cond_8
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/SystemReader;->handleString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_9
    const-string/jumbo v1, "int"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mIntVals:Ljava/util/Vector;

    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mIntVals:Ljava/util/Vector;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    const-string/jumbo v1, "string"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mStrVals:Ljava/util/Vector;

    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->reset()V

    .line 147
    const-string v4, "app"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    const/4 v4, 0x0

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Lcom/htc/customization/AccAppReader;

    invoke-direct {v4}, Lcom/htc/customization/AccAppReader;-><init>()V

    iput-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    .line 150
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v4, v3}, Lcom/htc/customization/SystemReader;->setName(Ljava/lang/String;)V

    .line 171
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string/jumbo v4, "system"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    new-instance v4, Lcom/htc/customization/SystemReader;

    invoke-direct {v4}, Lcom/htc/customization/SystemReader;-><init>()V

    iput-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mTempReader:Lcom/htc/customization/SystemReader;

    goto :goto_0

    .line 155
    :cond_2
    const-string/jumbo v4, "item"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 157
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 158
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "attrName":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 160
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mType:Ljava/lang/String;

    .line 161
    iget-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mType:Ljava/lang/String;

    const-string/jumbo v5, "integer-array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 162
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mIntVals:Ljava/util/Vector;

    .line 157
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    :cond_4
    iget-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mType:Ljava/lang/String;

    const-string/jumbo v5, "string-array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mStrVals:Ljava/util/Vector;

    goto :goto_2

    .line 166
    :cond_5
    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;->mName:Ljava/lang/String;

    goto :goto_2
.end method
