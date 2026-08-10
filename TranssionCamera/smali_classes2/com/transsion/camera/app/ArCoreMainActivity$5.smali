.class Lcom/transsion/camera/app/ArCoreMainActivity$5;
.super Ljava/lang/Object;
.source "ArCoreMainActivity.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ArCoreMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ArCoreMainActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$5;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(D)V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$5;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1600(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$5;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1600(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onScale(D)V

    :cond_0
    return-void
.end method

.method public onScroll(DD)V
    .locals 4

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$5;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1600(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$5;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->isExpandUI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$5;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1600(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onScroll(DD)V

    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$5;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1700(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/utils/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/OrientationHelper;->getOrientation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    neg-double p3, p3

    goto :goto_0

    :cond_3
    neg-double p1, p1

    neg-double p3, p3

    goto :goto_1

    :cond_4
    neg-double p1, p1

    :goto_0
    move-wide v2, p1

    move-wide p1, p3

    move-wide p3, v2

    .line 741
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$5;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1600(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onScroll(DD)V

    return-void
.end method

.method public onSingleTapUp(FF)V
    .locals 0

    .line 705
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$5;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1600(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$5;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1600(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onSingleTapUp()V

    :cond_0
    return-void
.end method
