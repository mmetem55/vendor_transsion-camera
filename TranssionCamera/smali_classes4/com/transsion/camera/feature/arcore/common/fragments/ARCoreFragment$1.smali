.class Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$1;
.super Ljava/lang/Object;
.source "ARCoreFragment.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->handleSwitchEmoji()V

    return-void
.end method
