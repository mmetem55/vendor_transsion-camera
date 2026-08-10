.class Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6$1;
.super Ljava/lang/Object;
.source "ARCoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->onItemSelected(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "zyzy-- SetAvatarDone 02"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->setUpdateState(Z)V

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$202(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;Z)Z

    return-void
.end method
