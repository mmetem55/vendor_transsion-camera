.class Lcom/transsion/camera/app/common/relation/Relation$Header;
.super Ljava/lang/Object;
.source "Relation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/relation/Relation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Header"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/app/common/relation/Relation;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/app/common/relation/Relation$Header;->this$0:Lcom/transsion/camera/app/common/relation/Relation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/transsion/camera/app/common/relation/Relation$Header;->key:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/transsion/camera/app/common/relation/Relation$Header;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Lcom/transsion/camera/app/common/relation/Relation$Header;
    .locals 3

    .line 127
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Header;

    iget-object v1, p0, Lcom/transsion/camera/app/common/relation/Relation$Header;->this$0:Lcom/transsion/camera/app/common/relation/Relation;

    iget-object v2, p0, Lcom/transsion/camera/app/common/relation/Relation$Header;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation$Header;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/relation/Relation$Header;-><init>(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
