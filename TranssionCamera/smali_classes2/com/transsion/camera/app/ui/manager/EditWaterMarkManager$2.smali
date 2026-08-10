.class Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$2;
.super Ljava/lang/Object;
.source "EditWaterMarkManager.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;


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

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitSortWaterMark()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->exitEditWaterMarkSortFragment()V

    return-void
.end method

.method public onUpdateSortWaterMark()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->exitEditWaterMarkSortFragment()V

    return-void
.end method
