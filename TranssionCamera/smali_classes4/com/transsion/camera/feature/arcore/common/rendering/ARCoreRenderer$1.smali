.class Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$1;
.super Ljava/lang/Object;
.source "ARCoreRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$000(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->onResume()V

    return-void
.end method
