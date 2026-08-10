.class Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;
.super Ljava/lang/Object;
.source "CameraMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/CameraMode;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/mode/CameraMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/CameraMode;Lcom/transsion/camera/app/common/mode/CameraMode$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/mode/CameraMode;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 331
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/mode/CameraMode;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/mode/CameraMode;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    return-void
.end method
