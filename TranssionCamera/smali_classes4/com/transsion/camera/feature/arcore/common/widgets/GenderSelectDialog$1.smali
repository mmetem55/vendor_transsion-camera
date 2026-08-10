.class Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;
.super Ljava/lang/Object;
.source "GenderSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 135
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->access$200(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->access$302(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;I)I

    .line 139
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->TAG:Ljava/lang/String;

    const-string p1, "start up"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 144
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->TAG:Ljava/lang/String;

    const-string p1, "start down"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p2
.end method
