.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;
.super Ljava/lang/Object;
.source "ColorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;I)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;)I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;->val$position:I

    if-ne p1, v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;)I

    move-result p1

    if-lt v0, p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->setSelectPosition(I)V

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;

    move-result-object p1

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;->val$position:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;->colorSelectListener(I)V

    :cond_2
    return-void
.end method
