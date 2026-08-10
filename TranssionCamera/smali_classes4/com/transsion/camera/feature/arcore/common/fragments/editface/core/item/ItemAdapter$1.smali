.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;
.super Ljava/lang/Object;
.source "ItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;I)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    iget v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mSelectPosition:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;->itemSelectListener(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;->val$position:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->setSelectPosition(I)V

    :cond_0
    return-void
.end method
