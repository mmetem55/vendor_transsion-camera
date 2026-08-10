.class public final Lcom/faceunity/pta_art/core/base/FUItem;
.super Ljava/lang/Object;
.source "FUItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bindState:Z

.field public handle:I

.field public name:Ljava/lang/String;

.field public final supportRebind:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    .line 22
    iput-boolean v0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->bindState:Z

    .line 23
    iput-boolean v0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->supportRebind:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 47
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/FUItem;->name:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/FUItem;->name:Ljava/lang/String;

    .line 51
    :goto_0
    iput p2, p0, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/faceunity/pta_art/core/base/FUItem;->bindState:Z

    .line 53
    iput-boolean p1, p0, Lcom/faceunity/pta_art/core/base/FUItem;->supportRebind:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    .line 29
    iput-boolean v0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->bindState:Z

    .line 30
    iput-boolean p1, p0, Lcom/faceunity/pta_art/core/base/FUItem;->supportRebind:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    .line 59
    iput-boolean v0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->bindState:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/faceunity/pta_art/core/base/FUItem;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "null"

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "name = "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/faceunity/pta_art/core/base/FUItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",handle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bindState = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/faceunity/pta_art/core/base/FUItem;->bindState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",supportRebind = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/faceunity/pta_art/core/base/FUItem;->supportRebind:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
