.class public Lcom/htc/customization/ModuleReader;
.super Lcom/htc/customization/AccAppReader;
.source "ModuleReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModuleReader"


# instance fields
.field private mFunction:Ljava/lang/String;

.field private mSet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/customization/AccAppReader;-><init>()V

    return-void
.end method


# virtual methods
.method public getFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/customization/ModuleReader;->mFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/customization/ModuleReader;->mSet:Ljava/lang/String;

    return-object v0
.end method

.method public handleBoolean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string/jumbo v0, "yes"

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/htc/customization/ModuleReader;->mBooleanMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/htc/customization/ModuleReader;->mBooleanMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/customization/ModuleReader;->mFunction:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "set"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/customization/ModuleReader;->mSet:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
