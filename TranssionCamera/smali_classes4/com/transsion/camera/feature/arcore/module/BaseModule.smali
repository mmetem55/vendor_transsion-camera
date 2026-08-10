.class public abstract Lcom/transsion/camera/feature/arcore/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# instance fields
.field public mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

.field public mCameraId:Ljava/lang/String;

.field public mRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->orientationChanged(I)V

    :cond_0
    return-void
.end method
