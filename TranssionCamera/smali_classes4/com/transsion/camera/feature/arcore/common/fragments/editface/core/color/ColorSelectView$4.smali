.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$4;
.super Ljava/lang/Object;
.source "ColorSelectView.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->init([[DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorSelectListener(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;->colorSelectListener(I)V

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->scrollToPosition(I)V

    return-void
.end method
