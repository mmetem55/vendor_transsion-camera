.class Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$1;
.super Ljava/lang/Object;
.source "EditWaterMarkManager.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterSortWaterMark()V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->enterEditWaterMarkSortFragment(Landroid/app/Fragment;)V

    return-void
.end method
