.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$9;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->onScale(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

.field final synthetic val$scale:D


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;D)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$9;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iput-wide p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$9;->val$scale:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventRun(I)V
    .locals 4

    const-string v0, "current_position"

    .line 897
    invoke-static {p1, v0}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParamdv(ILjava/lang/String;)[D

    move-result-object p1

    .line 898
    iget-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$9;->val$scale:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    if-eqz p1, :cond_0

    array-length p0, p1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    aget-wide p0, p1, p0

    :cond_0
    return-void
.end method
