.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$1;
.super Ljava/lang/Object;
.source "CommonFragment.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->onShutterClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

.field final synthetic val$SpringAnimationScaleOff:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$1;->val$SpringAnimationScaleOff:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 730
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$1;->val$SpringAnimationScaleOff:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method
