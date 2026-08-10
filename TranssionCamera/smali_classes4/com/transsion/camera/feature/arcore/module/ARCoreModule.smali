.class public Lcom/transsion/camera/feature/arcore/module/ARCoreModule;
.super Lcom/transsion/camera/feature/arcore/module/BaseModule;
.source "ARCoreModule.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;Ljava/lang/String;)V
    .locals 7

    .line 14
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/module/BaseModule;-><init>()V

    .line 15
    new-instance v6, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;)V

    iput-object v6, p0, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;

    .line 16
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-direct {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    .line 17
    iput-object p6, p0, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mCameraId:Ljava/lang/String;

    return-void
.end method
