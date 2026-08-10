.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$2;
.super Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;
.source "ItemSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->initHair(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

.field final synthetic val$itemList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$2;->val$itemList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getRes(I)I
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$2;->val$itemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/faceunity/pta_art/entity/FURes;

    iget p0, p0, Lcom/faceunity/pta_art/entity/FURes;->resId:I

    return p0
.end method

.method public getSize()I
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result p0

    return p0
.end method
