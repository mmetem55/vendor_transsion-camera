.class public Lcom/transsion/camera/feature/arcore/module/BodyEmojiModule;
.super Lcom/transsion/camera/feature/arcore/module/BaseModule;
.source "BodyEmojiModule.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;Ljava/lang/String;)V
    .locals 6

    .line 13
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/module/BaseModule;-><init>()V

    .line 14
    new-instance p5, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;

    .line 15
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-direct {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    .line 16
    iput-object p6, p0, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mCameraId:Ljava/lang/String;

    return-void
.end method
