.class public abstract Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field public id:I

.field public isExpand:Z

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/makeup/adapter/Item;",
            ">;"
        }
    .end annotation
.end field

.field public parentUniqueId:Ljava/lang/String;

.field public position:I

.field public final uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->parentUniqueId:Ljava/lang/String;

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->parentUniqueId:Ljava/lang/String;

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearSubItems()V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getSubItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/makeup/adapter/Item;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public abstract getType()I
.end method
