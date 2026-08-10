.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$6;
.super Ljava/lang/Object;
.source "ItemSelectView.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemSelectListener(II)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->scrollToPosition(I)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;->itemSelectListener(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
