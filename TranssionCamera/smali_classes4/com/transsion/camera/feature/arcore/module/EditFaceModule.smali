.class public Lcom/transsion/camera/feature/arcore/module/EditFaceModule;
.super Lcom/transsion/camera/feature/arcore/module/BaseModule;
.source "EditFaceModule.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/module/BaseModule;-><init>()V

    .line 12
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;

    .line 13
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-direct {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    const-string p1, "-1"

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mCameraId:Ljava/lang/String;

    return-void
.end method
