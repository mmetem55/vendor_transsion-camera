.class Lcom/transsion/camera/app/ui/CameraAppUI$CameraReConnectListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraReConnectListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$CameraReConnectListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI$CameraReConnectListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    return-void
.end method
