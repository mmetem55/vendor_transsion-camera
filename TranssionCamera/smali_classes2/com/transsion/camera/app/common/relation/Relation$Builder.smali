.class public Lcom/transsion/camera/app/common/relation/Relation$Builder;
.super Ljava/lang/Object;
.source "Relation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/relation/Relation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mRelation:Lcom/transsion/camera/app/common/relation/Relation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;-><init>(Lcom/transsion/camera/app/common/relation/Relation$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/relation/Relation$Builder;->mRelation:Lcom/transsion/camera/app/common/relation/Relation;

    .line 77
    invoke-static {v0, p1, p2}, Lcom/transsion/camera/app/common/relation/Relation;->access$100(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/relation/Relation$Builder;->mRelation:Lcom/transsion/camera/app/common/relation/Relation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation$Builder;->mRelation:Lcom/transsion/camera/app/common/relation/Relation;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/relation/Relation;->copy()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method
