.class Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$12;
.super Ljava/lang/Object;
.source "ARCoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->onResume()V
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

    .line 360
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$12;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 363
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "zyzy-- [onResume]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$12;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$202(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;Z)Z

    return-void
.end method
