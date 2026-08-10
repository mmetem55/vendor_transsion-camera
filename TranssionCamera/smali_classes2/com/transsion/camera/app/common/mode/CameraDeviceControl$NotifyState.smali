.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
.super Ljava/lang/Object;
.source "CameraDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyState"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mNotifyCount:I

.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method enter()V
    .locals 1

    .line 725
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mNotifyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mNotifyCount:I

    return-void
.end method

.method getCount()I
    .locals 0

    .line 729
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mNotifyCount:I

    return p0
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mName:Ljava/lang/String;

    return-object p0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 737
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mNotifyCount:I

    return-void
.end method
